import argparse
from datetime import datetime
import numpy as np
from matplotlib import pyplot as plt
# from scipy.signal import medfilt

from brew_control_client.brew_state import BrewState

import matplotlib
matplotlib.style.use('bmh')

parser = argparse.ArgumentParser(description='Plot the brewlog.')
parser.add_argument('brewfile', type=str, nargs=1,
                    help='Name of the brew')

def smooth(x, n=45):
    kern = np.exp(-np.linspace(-3, 3, n)**2)
    kern /= np.sum(kern)
    return np.convolve(x, kern, mode='same')

def plot_smooth(t, x, n, col, label):
    x_smooth = smooth(x, n)
    idx = n//2
    plt.plot(t, x, col, alpha=.30)
    plt.plot(t[idx:-idx], x_smooth[idx:-idx], col, label=label)


if __name__ == "__main__":
    args = parser.parse_args()


    def main(data_filename):
        brew_states = []

        with open(data_filename, 'rb') as f:
            for line in f.readlines()[1:]:
                try:
                    brew_state = BrewState.build_from_json_str(line)
                except ValueError:
                    raise
                else:
                    brew_states.append(brew_state)

        temperatures = np.zeros((len(brew_states), 3))
        for i, s in enumerate(brew_states):
            temperatures[i] = np.array([s.hlt_temperature, s.hex_outlet_temperature, s.hex_interlock_temperature])
        flowrates = np.array([s.pump_outlet_flowrate for s in brew_states])

        max_temp = np.max(temperatures)
        hex_on = np.array([s.hex_actuated for s in brew_states]) * .3 * max_temp + .01 * max_temp
        hlt_on = np.array([s.hlt_actuated for s in brew_states]) * .25 * max_temp + .005 * max_temp

        dtimes = [s.dtime for s in brew_states]

        temperatures = np.array(temperatures)
        t = [(dt - dtimes[0]).total_seconds() / 60.0 for dt in dtimes]
        plt.figure(figsize=(14, 9))
        plt.subplot(2, 1, 1)
        hlt_col = 'k'
        hex_col = 'g'
        interlock_col = 'r'
        labels = ['HLT', 'HEX Outlet', 'HEX Interlock']
        for i, (col, label) in enumerate(zip([hlt_col, hex_col, interlock_col], labels)):
            plot_smooth(t, temperatures[:, i], 45, col, label)
        plt.plot(t, hex_on, 'm', label='HEX On')
        plt.plot(t, hlt_on, 'c', label='HLT On')

        plt.xlabel('time, min')
        plt.ylabel('temperature, C')
        plt.title('{}, t0={}'.format(data_filename, dtimes[0]))
        plt.legend(loc='upper left')

        plt.subplot(2, 1, 2)
        plt.plot(t, flowrates*60, 'k', label='Pump Outlet')
        plt.xlabel('time, min')
        plt.ylabel('flowrate, L/min')
        plt.title('{}, t0={}'.format(data_filename, dtimes[0]))
        plt.legend(loc='upper left')

        plt.show()

    main(args.brewfile[0])
