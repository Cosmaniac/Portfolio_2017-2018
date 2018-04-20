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
