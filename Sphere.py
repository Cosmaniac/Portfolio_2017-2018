class Orb(object):
    volume = 0
    surfaceArea = 0

    def __init__(self):
        self.r = 0

    def volume(self):
        volume = (4/3) * 3.1415 * (self.r**3)
        print("The volume is", volume)

    def surfaceArea(self):
        surfaceArea = 4 * 3.1415 * (self.r**2)
        print("The surface area is", surfaceArea)
