This runs the classes

```markdown
#!/usr/bin/python3
import Box, Pyramid, Sphere


shape = input("Enter a shape (Box, Pyramid, Sphere): ")

if(shape == "Box" or shape == "B" or shape == "box" or shape == "b"):
    b1 = Box.Cube()
    b1.bw = int(input("Box width: "))
    b1.bl = int(input("Box length: "))
    b1.bh = int(input("Box height: "))
    b1.volume()
    b1.surfaceArea()

elif(shape == "Pyramid" or shape == "P" or shape == "pyramid" or shape == "p"):
    p1 = Pyramid.Cypher()
    p1.pw = int(input("Pyramid width: "))
    p1.pl = int(input("Pyramid length: "))
    p1.ph = int(input("Pyramid height: "))
    p1.volume()
    p1.surfaceArea()

elif(shape == "Sphere" or shape == "S" or shape == "sphere" or shape == "s"):
    s1 = Sphere.Orb()
    s1.r = int(input("Radius: "))
    s1.volume()
    s1.surfaceArea()
```


Box class

```markdown
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
```


Pyramid class

```markdown
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
```


Sphere class

```markdown
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
```

[Homepage](https://Cosmaniac.github.io/Portfolio_2017-2018)
