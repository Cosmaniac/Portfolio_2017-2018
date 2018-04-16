class Button
{
  //Member Variables
  int x, y, w, h, v, c;
  char o;
  boolean hov, num, trueHov;  

  //Constructor
  Button(int x, int y, int w, int h, int c) {    
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.c = c;
  }

  Button asNumber(int v) 
  {
    num = true;
    this.v = v;
    return this;
  }

  Button asOperator(char o) 
  {
    num = false;
    this.o = o;
    return this;
  }

  void display()
  {
    textAlign(CENTER, CENTER);
    if (hov)
    {
      fill(255, 50, 75);
    } else {
      fill(50, 55, 70);
    }
    stroke(0);
    rect(x, y, w, h, 7);
    fill(255);
    textSize(14);
    if (num) {
      text(v, x + 60, y + h - 30);
    } else {
      if (o == 'n') {
        text("+/-", x + 60, y + h - 30);
      } else if (o == '/') {
        text("÷", x + 60, y + h - 30);
      } else if (o == '*') {
        text("x", x + 60, y + h - 30);
      } else if (o == '-') {
        text("-", x + 60, y + h - 30);
      } else if (o == '+') {
        text("+", x + 60, y + h - 30);
      } else if (o == 'c') {
        text("Clear", x + 60, y + h - 30);
      } else if (o == '=') {
        text("Enter", x + 115, y + h - 30);
      } else if (o == 'd') {
        text("Delete", x + 85, y + h - 30);
      } else if (o == '.') {
        text(".", x + 50, y + h - 30);
      } else if (o == '%') {
        text("%", x + 60, y + h - 30);
      } else if (o == '^') {
        text("^", x + 60, y + h - 30);
      } else if (o == 'p') {
        text("π", x + 60, y + h - 30);
      } else if (o == 'r') {
        text("Root", x + 60, y + h - 30);
      } else if (o == 'h') {
        text("Hyp", x + 60, y + h - 30);
      }
    }
  }


  void hover()
  {
    hov = mouseX > x && mouseY > y && mouseX < x + w && mouseY < y + h;
  }
}