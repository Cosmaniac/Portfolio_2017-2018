a = 99
while(a > 0):
    if(a - 1 == 1):
        print a, "bottles of pop on the wall", a, "bottles of pop! Take one down, pass it around,", a - 1, "bottle of pop on the wall"
    if(a - 1 == 0):
        print a, "bottle of pop on the wall", a, "bottle of pop! Take one down, pass it around,", a - 1, "bottles of pop on the wall"
    else:
        print a, "bottles of pop on the wall", a, "bottles of pop! Take one down, pass it around,", a - 1, "bottles of pop on the wall"
    a -= 1
sys.exit(0)
