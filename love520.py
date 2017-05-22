# coding=utf-8

from numpy import sqrt
import time
import random


def f(x, y, z):
    a = x * x + 9.0 / 4.0 * y * y + z * z - 1
    b = a * a * a - x * x * z * z * z - 9.0 / 80.0 * y * y * z * z * z
    return b


def h(x, z):
    y = 1.0
    while y >= 0.0:
        if f(x, y, z) <= 0.0:
            return y
        y -= 0.001
    return 0.0


def main():
    z = 1.5
    # string = list(u'卜红周家木爱你一生世')
    string = '.:~!@#$%&^*:+_'
    while z > -1.5:
        x = -1.5
        while x < 1.5:
            v = f(x, 0.0, z)
            if v <= 0.0:
                y0 = h(x, z)
                ny = 0.01
                nx = h(x + ny, z) - y0
                nz = h(x, z + ny) - y0
                nd = 1.0 / sqrt(nx * nx + ny * ny + nz * nz)
                d = (nx + ny - nz) * nd * 0.5 + 0.5
                print random.sample(string, 8)[int(d*5.0)],
                time.sleep(0.001)
            else:
                print ' ',
            x += 0.035
        print ''
        z -= 0.055


if __name__ == '__main__':
    main()
