import matplotlib.pyplot as plt
import numpy as np

print('welcome')


frekv_sin = 50
frekv_tri = 1000
samples = 500

t = np.linspace(0, 1/frekv_sin, samples, endpoint=False)
sin_vals = np.sin(2 * np.pi * frekv_sin * t)
triangel_vals = 2 * np.abs(2 * (t * frekv_tri - np.floor(0.5 + t * frekv_tri))) - 1

plt.plot(t,sin_vals,color='red')
plt.plot(t,triangel_vals)
plt.savefig("sinusvag.png")

f = open('my_file.txt',mode='w')

f.write('test')

f.close()
