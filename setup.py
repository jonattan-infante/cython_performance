from distutils.core import setup
from Cython.Build import cythonize

exts = (cythonize("orbit_cython.pyx"))
setup(ext_modules=exts)
