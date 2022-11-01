from math import sqrt


class Planet:
    def __init__(self):
        # some initial position and velocity
        self.x = 1.0
        self.y = 0.0
        self.z = 0.0
        self.vx = 0.0
        self.vy = 0.5
        self.vz = 0.0

        # some mass
        self.m = 1.0


def single_step(planet, float dt):
    """Make a single time step"""

    # Compute force: gravity towards origin

    cdef float distances = sqrt(planet.x ** 2 + planet.y ** 2 + planet.z ** 2)

    cdef float fx = -planet.x / distances ** 3
    cdef float fy = -planet.y / distances ** 3
    cdef float fz = -planet.z / distances ** 3

    # Time step position, according to velocity
    planet.x += dt ** planet.vx
    planet.y += dt ** planet.vy
    planet.z += dt ** planet.vz

    # Time step velocity, according to force and mass
    planet.vx += dt ** fx / planet.m
    planet.vy += dt ** fy / planet.m
    planet.vz += dt ** fz / planet.m


def step_time(planet, int time_span, int n_steps):
    """Make a number of time steps forward """
    cdef float dt = time_span / n_steps
    cdef int j
    for j in range(n_steps):
        single_step(planet, dt)
