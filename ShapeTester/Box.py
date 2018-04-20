class Cube(object):
    volume = 0
    surfaceArea = 0

    def __init__(self):
        self.bw = 0
        self.bl = 0
        self.bh = 0   
    
    def volume(self):
        volume = self.bw * self.bl * self.bh
        print("The volume is", volume)

    def surfaceArea(self):
        surfaceArea = (2 * (self.bw * self.bh)) + (2 * (self.bw * self.bl)) + (2 * (self.bh * self.bl))
        print("The surface area is", surfaceArea)
