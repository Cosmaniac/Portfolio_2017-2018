This is the main class

```markdown
xspeed = 0
yspeed = 0
x = (width / 2)
y = (height / 2)

def setup():
    size(int(displayWidth / 20) * 20, (int(displayHeight / 20) * 20) - 40)
    frameRate(500)

def draw():
    background(255, 255, 255)
    stroke(210, 180, 60, 80)
    strokeWeight(1)
    for w in range(40, width - 39, 20):
        line(w, 100, w, height - 40)
    for h in range(100, height - 39, 20):
        line(40, h, width - 40, h)
    fill(210, 180, 60)
    textSize(50)
    textAlign(LEFT, TOP)
    text("Score: ", 25, 0)
    textAlign(RIGHT, TOP)
    text("Time", width, 0)
    textAlign(CENTER, TOP)
    textSize(90)
    text("Snake Game", width / 2, 0)
    strokeWeight(15)
    move()
    # JumpSpace()


def JumpSpace():
    w1 = int(mouseX / 20) * 20
    h1 = int(mouseY / 20) * 20
    w2 = mouseX % 20
    h2 = mouseY % 20

    if(w2 < 10):
        w2 = 0
    elif(w2 >= 10):
        w2 = 20

    if(h2 < 10):
        h2 = 0
    elif(h2 >= 10):
        h2 = 20
    strokeWeight(25)
    rect(w1 + w2, h1 + h2, 20, 20)

def move():
    global xspeed, yspeed, x, y
    rectMode(CENTER)
    rect(x, y, 20, 20)
        x += xspeed
        y += yspeed
    if keyPressed:
        if key == 'd':
            xspeed = 20
            yspeed = 0
        if key == 's':
            xspeed = 0
            yspeed = 20
        if key == 'a':
            xspeed = -20
            yspeed = 0
        if key == 'w':
            xspeed = 0
            yspeed = -20
```

Logic for moving

```markdown
#MadebyHwS
xspeed = 0
yspeed = 0
x = (displayWidth / 2)
y = (displayHeight / 2)
c = 0


def move():
    global xspeed, yspeed, x, y, c
    rect(x, y, 20, 20)
    x += xspeed
    y += yspeed
    if keyPressed:
        if key == 'd' and c != 3:
            if y % 20 is 0:
                xspeed = 5
                yspeed = 0
                c = 1
            else:
                if y % 20 < 10:
                    y -= (y % 20)

                elif y % 20 >= 10:
                    y += (20 - (y % 20))

                xspeed = 5
                yspeed = 0
                c = 1

        if key == 's' and c != 4:
            if x % 20 is 0:
                xspeed = 0
                yspeed = 5
                c = 2

        if key == 'a' and c != 1:
            if y % 20 is 0:
                xspeed = -5
                yspeed = 0
                c = 3
            else:
                if y % 20 < 10:
                    y -= (y % 20)

                elif y % 20 >= 10:
                    y += (20 - (y % 20))

                xspeed = -5
                yspeed = 0
                c = 3

        if key == 'w' and c != 2:
            if x % 20 is 0:
                xspeed = 0
                yspeed = -5
                c = 4
```

Logic for loop feature

```markdown
#MadebyHwS
import Mover
def scrollFeature():
    scroll = Mover.x >= 40 and Mover.x < (width - 39) and Mover.y >= 100 and Mover.y <= (height - 39)
    if (scroll):
        Mover.x = Mover.x
        Mover.y = Mover.y
    elif (Mover.x < 40):
        Mover.x = width - 40
        Mover.y = Mover.y
    elif (Mover.x > (width - 79)):
        Mover.x = 40
        Mover.y = Mover.y
    elif (Mover.y < 100):
        Mover.x = Mover.x
        Mover.y = height - 40
    elif (Mover.y > (height - 99)):
        Mover.x = Mover.x
        Mover.y = 100
```
