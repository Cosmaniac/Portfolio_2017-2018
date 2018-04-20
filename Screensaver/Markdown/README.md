This is the logic

```markdown
Lines[] myLines = new Lines [100];
int ClearCount = 0;

void setup() 
{
  background(18);
  size(displayWidth, displayHeight);
  for (int i = 0; i < myLines.length; i++) 
  {
    myLines[i] = new Lines(random(width), random(height), random(1, 5), random(1, 20));
  }
}

void draw() 
{
  if (frameCount > 100)
  {
    //background(18);
    frameCount = 0;
    ClearCount++;
    for (int i = 0; i < myLines.length; i++) 
    {
      
      if (ClearCount <= 1)
      {
        myLines[i].stop = 'b';
      } else if (ClearCount <= 2)
      {
        /*myLines[i].r = 200;
        myLines[i].g = 10;
        myLines[i].b = 50;*/
        myLines[i].stop = 'r';
        
      } else if (ClearCount <= 3) 
      {
        /*myLines[i].r = 10;
        myLines[i].g = 200;
        myLines[i].b = 50;*/
        myLines[i].stop = 'g';
      } else if (ClearCount <= 4) 
      {
        myLines[i].stop = 'y';
      } else if (ClearCount <= 5)
      {
        myLines[i].stop = 'w';
      } else if (ClearCount <= 6)
      {
        ClearCount = 0;
        myLines[i].stop = 'n';
      }
    }
  } else {
    for (int i = 0; i < myLines.length; i++) 
    {
      Lines iLines = myLines[i];
      iLines.display();
    }
  }
}
```

This is the code for generating the lines
```markdown
class Lines 
{
  float xpos;
  float ypos;
  float strokeW;
  float lineLength;
  int r, g, b, y;
  char stop;

  Lines(float tempX, float tempY, float tempStroke, float tempLength) 
  {
    xpos = tempX;
    ypos = tempY;
    strokeW = tempStroke;
    lineLength = tempLength;
    r = 50;
    g = 10;
    b = 200;
    y = 200;
    stop = 'n';
  }

  void display () 
  {
    strokeW = random(1, 3);
    lineLength = random(1, 25);
    if (stop == 'y') {
      stroke(random(175, 200), random(175, 200), random(50));
    } else if (stop == 'w') {
      stroke(random(175, 200), random(175, 200), random(200, 255));
    } else if (stop == 'r') {
      stroke(random(201), random(11), random(51));
    } else if (stop == 'g') {
      stroke(random(11), random(201), random(51));
    } else if (stop == 'b') {
      stroke(random(51), random(11), random(201));
    } else {
      stroke(random(r), random(g), random(b));
    }
    if (xpos > width || xpos < 0 || ypos > height || ypos < 0) 
    {
      xpos = random(width);
      ypos = random(height);
    } else {
      if (1 < random(100) && random(100)< 26)
      {
        strokeWeight(strokeW);
        left(xpos, ypos, lineLength);
      } else if (26 < random(100) && random(100)< 51) 
      {
        strokeWeight(strokeW);
        up(xpos, ypos, lineLength);
      } else if (51 < random(100) && random(100)< 76) 
      {
        strokeWeight(strokeW);
        down(xpos, ypos, lineLength);
      } else {
        strokeWeight(strokeW);
        right(xpos, ypos, lineLength);
      }
    }
  }
  void right(float startX, float startY, float moveCount) 
  {
    for (float i = 0; i < moveCount; i++) 
    {
      point(startX + i, startY);
      xpos = startX + i;
      ypos = startY;
    }
  }

  void left(float startX, float startY, float moveCount) 
  {
    for (float i = 0; i < moveCount; i++) 
    {
      point(startX - i, startY);
      xpos = startX - i;
      ypos = startY;
    }
  }

  void up(float startX, float startY, float moveCount) 
  {
    for (float i = 0; i < moveCount; i++) 
    {
      point(startX, startY - i);
      xpos = startX;
      ypos = startY - i;
    }
  }

  void down(float startX, float startY, float moveCount) 
  {
    for (float i = 0; i < moveCount; i++) 
    {
      point(startX, startY + i);
      xpos = startX;
      ypos = startY + i;
    }
  }
}
```

[Homepage](https://Cosmaniac.github.io/Portfolio_2017-2018)
