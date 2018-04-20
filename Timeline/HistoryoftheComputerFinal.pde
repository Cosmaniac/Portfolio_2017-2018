void setup() 
{
  size(900, 400);
  background(18);
}


void draw() 
{
  background(18);
  drawRef();
  histEvent(100, 130, 60, 20, 35, "Colossus", "Colossus was the world's first digital computer able to be programmed. \nColossus was originally developed by Tommy Flowers, under the orginization known as the Post Office Research Station. \nIt was used to decode German Enigma machine transmissions. Colossus was first used on February 5th, 1944.", true);
  histEvent(200, 250, 45, 20, 35, "ENIAC", "The ENIAC was a step up from the Colossus, retaining all the computing abilities and more. \nUnlike the digital Colossus however, the ENIAC was electronic. \nThe ENIAC was built at the University of Pennsylvania by John Mauchly and J. Presper Eckert, and came online in 1945.", false);
  histEvent(500, 130, 45, 20, 35, "EDSAC", "Another computer recognized for having a semblance of 'modern'. It was developed at the University of Cambridge Mathematical Laboratory. \nThe first year it ran was 1949. It provided the base for the first commercially used computer, the Leo 1.", true);
  histEvent(300, 130, 35, 20, 35, "Baby", "Baby, a.k.a. Manchester Small-Scale Experimental Machine, was the first machine to use cathode rays to store electronic binary data. \nThis was a big breakthrough, and led to other computers using cathode rays to store data as well. \nIt was small and, of course, experimental, but it possessed many of the qualities of computers today. It was first run in June, 1948.", true);
  histEvent(400, 250, 110, 20, 35, "Manchester Mk. 1", "A stored program computer, this was a computer based off of another, known as 'Baby'. \nWhile impressive, it was eventually scrapped, and replaced by the Ferranti Mk. 1. \nThe Manchester Mk. 1 was developed by the Victoria University of Manchester, and first ran in April of 1949.", false);
  histEvent(600, 250, 35, 20, 35, "ACE", "Known as the Automatic Computing Engine, this was the first computing system to use a programming language. \nThe language was very basic, using codes known as abbreviated commands that could tell the computer to do something in less words. \nIt was first tested in May, 1950, after being built by Alan Turing. At the time, it was the fastest-running computer, operating at a clock-speed of 1 MHz.", false);
  histEvent(700, 130, 50, 20, 35, "EDVAC", "The EDVAC was the more publicized version of the ACE. \nThe designer, John von Neumann, was more well-known than Alan Turing, \nand thus recieved more praise and fame, even though the EDVAC was less developed than the ACE. It first came online in 1951, but was not very used.", true);
  histEvent(800, 250, 90, 20, 35, "Ferranti Mk. 1", "The Ferranti Mk. 1 was a better version of the Manchester Mk. 1. \nIt held over the Manchester a larger storage, faster calculation speed, and had more instructions that could be input. \nIt was first run in March, 1951. Also designed at the University of Manchester, it was known as the 'tidied and commercialized' version of the Manchester.", false);
}


void drawRef() 
{
  fill(255);
  textAlign(CENTER);
  textSize(36);
  text("Historic Computers", (width/2), 50);
  textSize(10);
  text("A timeline of some of the most historic computers\n By Hayden Soelberg", (width/2), 65);
  stroke(212, 175, 55);
  strokeWeight(5);
  line(50, height/2, width - 50, height/2);
}


void histEvent(int x, int y, int w, int h, int c, String title, String desc, boolean top)
{
  if (top) {
    textSize(12);
    fill(25, 50, 75);
    stroke(212, 175, 55);
    line(x - 50, y + h + 50, x, y + 20);
    strokeWeight(1);
    stroke(212, 175, 55);    rect(x, y, w, h, c);
    fill(212, 175, 55);
    strokeWeight(5);
    textAlign(LEFT);
    text(title, x + 5, y + 15);
    if(mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    textAlign(CENTER);
    text(desc, width/2, height - 75);
    }
  } else {
    textSize(12);
    fill(25, 50, 75);
    stroke(212, 175, 55);
    line(x - 50, y - 50, x, y);
    strokeWeight(1);
    stroke(212, 175, 55);
    rect(x, y, w, h, c);
    fill(212, 175, 55);
    strokeWeight(5);
    textAlign(LEFT);
    text(title, x + 5, y + 15);
    if(mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    textAlign(CENTER);
    text(desc, width/2, height - 75);
    }
  }
}