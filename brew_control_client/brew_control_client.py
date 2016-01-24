import logging

import time

from actuator import HLTActuator, HEXActuator
from controller import BangBangController, extract_hlt_actual, extract_hex_actual
from interlock import FlowrateInterlock, HEXOverheatingInterlock, PumpCavitationInterlock
from pin_command import CommandFactory


class BrewControlClient(object):

    def __init__(self, controllers, get_brew_state_fun, setup_fun, loop_delay_seconds=30, logger=None):
        self._controllers = controllers
        self._get_brew_state_fun = get_brew_state_fun
        self._setup_fun = setup_fun
        self._logger = logger if logger is not None else logging.getLogger('brew_control_client')
        self._loop_delay_seconds = loop_delay_seconds

    def run(self):
        self._setup_fun()
        while True:
            try:
                brew_state = self._get_brew_state()
                self._logger.info('\n\n')
                self._logger.info(80*'-')
                self._logger.info(repr(brew_state))
                for c in self._controllers:
                    c.control(brew_state)

                self._logger.info("Now sleep. Next control action in {} s".format(self._loop_delay_seconds))
                time.sleep(self._loop_delay_seconds)
            except KeyboardInterrupt:
                break


    def _get_brew_state(self):
        return self._get_brew_state_fun()


class BrewControlClientFactory(object):

    def __init__(self, pin_config, issue_command_fun, get_brew_state_fun, logger=None):
        self._pin_config = pin_config
        self._issue_command_fun = issue_command_fun
        self._get_brew_state_fun = get_brew_state_fun
        self._logger = logger if logger is not None else logging.getLogger('brew_control_client_factory')

    def __call__(self, hlt_setpoint, hex_setpoint, loop_delay_seconds=30):
        controllers = self._get_controllers(hlt_setpoint, hex_setpoint)

        return BrewControlClient(
                controllers,
                self._get_brew_state_fun,
                self._setup,
                loop_delay_seconds=loop_delay_seconds,
                logger=self._logger
        )

    def _get_controllers(self, hlt_setpoint, hex_setpoint):
        return [self._get_hlt_controller(hlt_setpoint), self._get_hex_controller(hex_setpoint)]

    def _setup(self):
        command_factory = self._get_command_factory()
        c = command_factory.get_setup_command()
        self._logger.info("Setup the brew control:\n {}".format(repr(c)))
        self._issue_command_fun(c.render_as_request_parameters())

    def _get_hlt_controller(self, setpoint):
        c = BangBangController(
                self._get_hlt_actuator(),
                extract_hlt_actual,
                self._get_deadband_width()
        )
        c.set_setpoint(setpoint)
        return c

    def _get_hex_controller(self, setpoint):
        c = BangBangController(
                self._get_hex_actuator(),
                extract_hex_actual,
                self._get_deadband_width()
        )
        c.set_setpoint(setpoint)
        return c

    def _get_deadband_width(self):
        return .5

    def _get_hlt_actuator(self):
        return HLTActuator(self._issue_command_fun,
                           self._get_command_factory(),
                           self._get_hlt_interlocks(),
                           logger=self._logger
                           )

    def _get_hex_actuator(self):
        return HEXActuator(self._issue_command_fun,
                           self._get_command_factory(),
                           self._get_hlt_interlocks(),
                           logger=self._logger
                           )

    def _get_command_factory(self):
        return CommandFactory(self._pin_config)

    def _get_hlt_interlocks(self):
        return []

    def _get_hex_interlocks(self):
        return [
            FlowrateInterlock(self._get_flowrate_threshold()),
            HEXOverheatingInterlock(self._get_low_thermistor_fault_temp(), self._get_hex_overheat_temp()),
            PumpCavitationInterlock(self._get_low_thermistor_fault_temp(), self._get_pump_cavitation_temp())
        ]

    def _get_flowrate_threshold(self):
        return 1e-2

    def _get_low_thermistor_fault_temp(self):
        return 5.0

    def _get_hex_overheat_temp(self):
        return 95.0

    def _get_pump_cavitation_temp(self):
        return 70.0





