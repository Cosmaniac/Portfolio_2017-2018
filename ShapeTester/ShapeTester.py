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
