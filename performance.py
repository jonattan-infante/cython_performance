import orbit_python
import orbit_cython
import time

init_time = time.time()
orbit_cython.step_time(orbit_cython.Planet(), 300, 10000)
fin_time = time.time()
time_cython = fin_time - init_time

init_time = time.time()
orbit_python.step_time(orbit_python.Planet(), 300, 10000)
fin_time = time.time()
time_python = fin_time - init_time

print("Cython es ", time_cython)
print("Python es ", time_python)
