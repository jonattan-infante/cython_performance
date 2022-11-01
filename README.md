# Performance's algorithm to Orbit Planet using Python Vs Cython

The planetary orbit algorithm calculates the orbit of a given planet, initially there are default values in the planet instance but it is possible to overwrite the attributes to indicate the characteristics of a given planet.

Cython is a library that helps us translate python code to C to reduce the time it takes to execute.

## Installation

Use the package manager [pip](https://pip.pypa.io/en/stable/) to install Cython.

```bash
pip install -r requirements.txt
```

## Usage

```bash
# Build Project
python setup.py build_ext --inplace

# Run test
python performance.py

# Result
Cython is  0.011826515197753906 s
Python is  0.014762163162231445 s


```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)