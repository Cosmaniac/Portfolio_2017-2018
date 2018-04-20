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
