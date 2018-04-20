class Cypher(object):
    volume = 0
    surfaceArea = 0

    def __init__(self):
        self.pw = 0
        self.pl = 0
        self.ph = 0

    def volume(self):
        volume = (1/3) * (self.pw * self. pl * self.ph)
        print("The volume is", volume)

    def surfaceArea(self):
        surfaceArea = self.pw * self.pl + self.pl * ((self.pw / 2)**2 + self.ph**2)**0.5 + self.pw * ((self.pl / 2)**2 + self.ph**2)**0.5
        print("The surface area is", surfaceArea)        
