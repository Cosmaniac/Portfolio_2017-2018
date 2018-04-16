Lines[] myLines = new Lines [100];

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
  if (frameCount > 500)
  {
    background(18);
    frameCount = 0;
  } else {
    for (int i = 0; i < myLines.length; i++) 
    {
      Lines iLines = myLines[i];
      iLines.display();
    }
  }
}