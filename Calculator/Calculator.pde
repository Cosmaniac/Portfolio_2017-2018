Button[] numButtons = new Button[10];
Button[] opeButtons = new Button[14];
String leftSide, rightSide;
float answer, leftDisplay, rightDisplay;
char operator;
boolean left, equal;

void setup()
{
  size(720, 640);
  leftSide = "0";
  rightSide = "";
  answer = 0.0;
  operator = ' ';
  left = true;
  equal = false;
  background(18);
  numButtons[0] = new Button(20, 560, 120, 60, 7).asNumber(0);
  numButtons[1] = new Button(20, 470, 120, 60, 7).asNumber(1);
  numButtons[2] = new Button(160, 470, 120, 60, 7).asNumber(2);
  numButtons[3] = new Button(300, 470, 120, 60, 7).asNumber(3);
  numButtons[4] = new Button(20, 380, 120, 60, 7).asNumber(4);
  numButtons[5] = new Button(160, 380, 120, 60, 7).asNumber(5);
  numButtons[6] = new Button(300, 380, 120, 60, 7).asNumber(6);
  numButtons[7] = new Button(20, 290, 120, 60, 7).asNumber(7);
  numButtons[8] = new Button(160, 290, 120, 60, 7).asNumber(8);
  numButtons[9] = new Button(300, 290, 120, 60, 7).asNumber(9);

  opeButtons[0] = new Button(20, 200, 120, 60, 7).asOperator('c');
  opeButtons[1] = new Button(160, 200, 120, 60, 7).asOperator('n');
  opeButtons[2] = new Button(300, 200, 120, 60, 7).asOperator('%');
  opeButtons[3] = new Button(440, 200, 120, 60, 7).asOperator('^');
  opeButtons[4] = new Button(580, 200, 120, 60, 7).asOperator('/');
  opeButtons[5] = new Button(440, 290, 120, 60, 7).asOperator('p');
  opeButtons[6] = new Button(580, 290, 120, 60, 7).asOperator('*');
  opeButtons[7] = new Button(440, 380, 120, 60, 7).asOperator('r');
  opeButtons[8] = new Button(580, 380, 120, 60, 7).asOperator('-');
  opeButtons[9] = new Button(440, 470, 120, 60, 7).asOperator('h');
  opeButtons[10] = new Button(580, 470, 120, 60, 7).asOperator('+');
  opeButtons[11] = new Button(160, 560, 100, 60, 7).asOperator('.');
  opeButtons[12] = new Button(280, 560, 170, 60, 7).asOperator('d');
  opeButtons[13] = new Button(470, 560, 230, 60, 7).asOperator('=');
}


void draw()
{
  background(18);
  fill(#BB1020);
  rect(0, 0, 720, 640);
  for (int i = 0; i < numButtons.length; i++) {
    numButtons[i].display();
    numButtons[i].hover();
  }
  for (int i = 0; i < opeButtons.length; i++) {
    opeButtons[i].display();
    opeButtons[i].hover();
  }
  updateDisplay();
}

void keyReleased()
{
  if (key == '0' && left) 
  {
    leftSide += numButtons[0].v;
  } else if (key == '1' && left) {
    leftSide += numButtons[1].v;
  } else if (key == '2' && left) {
    leftSide += numButtons[2].v;
  } else if (key == '3' && left) {
    leftSide += numButtons[3].v;
  } else if (key == '4' && left) {
    leftSide += numButtons[4].v;
  } else if (key == '5' && left) {
    leftSide += numButtons[5].v;
  } else if (key == '6' && left) {
    leftSide += numButtons[6].v;
  } else if (key == '7' && left) {
    leftSide += numButtons[7].v;
  } else if (key == '8' && left) {
    leftSide += numButtons[8].v;
  } else if (key == '9' && left) {
    leftSide += numButtons[9].v;
  } else if (key == 'c' && left)
  {
    buttonClear();
  } else if (key == 'n' && left)
  {
    if (left) {
      leftSide = '-' + leftSide;
    } else {
      rightSide = '-' + rightSide;
    }
  } else if (key == '%' && left)
  {
    left = false;
    operator = opeButtons[2].o;
    rightSide = "";
  } else if (key == '^' && left)
  {
    left = false;
    operator = opeButtons[3].o;
    rightSide = "";
  } else if (key == '/' && left)
  {
    left = false;
    operator = opeButtons[4].o;
    rightSide = "";
  } else if (key == 'p' && left)
  {
    if (left)
    {
      leftSide += PI;
    } else {
      rightSide += PI;
    }
  } else if (key == '*' && left)
  {
    left = false;
    operator = opeButtons[6].o;
    rightSide = "";
  } else if (key == 'r' && left)
  {
    if (left)
    {
      leftSide = str(sqrt(float(leftSide)));
    } else {
      rightSide = str(sqrt(float(rightSide)));
    }
  } else if (key == '-' && left)
  {
    left = false;
    operator = opeButtons[8].o;
    rightSide = "";
  } else if (key == 'h' && left)
  {
    left = false;
    operator = opeButtons[9].o;
    rightSide = "";
  } else if (key == '+' && left)
  {
    left = false;
    operator = opeButtons[10].o;
    rightSide = "";
  } else if (key == '.' && left)
  {
    if (left) {
      leftSide += opeButtons[11]. o;
    } else {      
      rightSide += opeButtons[11].o;
    }
  } else if (key == 'd' && left)
  {
    backSpace();
  } else if (key == '=' || key == ENTER || key == RETURN)
  {
    equal = true;
    buttonCalc();
  } else if (key == '0' && !left) 
  {
    rightSide += numButtons[0].v;
  } else if (key == '1' && !left) {
    rightSide += numButtons[1].v;
  } else if (key == '2' && !left) {
    rightSide += numButtons[2].v;
  } else if (key == '3' && !left) {
    rightSide += numButtons[3].v;
  } else if (key == '4' && !left) {
    rightSide += numButtons[4].v;
  } else if (key == '5' && !left) {
    rightSide += numButtons[5].v;
  } else if (key == '6' && !left) {
    rightSide += numButtons[6].v;
  } else if (key == '7' && !left) {
    rightSide += numButtons[7].v;
  } else if (key == '8' && !left) {
    rightSide += numButtons[8].v;
  } else if (key == '9' && !left) {
    rightSide += numButtons[9].v;
  }
}

void mouseReleased() 
{
  for (int i = 0; i < numButtons.length; i++) {
    if (numButtons[i].hov && left) {
      leftSide += numButtons[i].v;
    } else if (numButtons[i].hov && !left) {
      rightSide += numButtons[i].v;
    }
  }
  for (int i = 0; i < opeButtons.length; i++) {
    if (opeButtons[i].hov && opeButtons[i].o == 'c') {
      buttonClear();
    } else if (opeButtons[i].hov && opeButtons[i].o == 'n') {
      if (left) {
        leftSide = '-' + leftSide;
      } else {
        rightSide = '-' + rightSide;
      }
    } else if (opeButtons[i].hov && opeButtons[i].o == '%') {
      answer = float(leftSide) / 100;
      leftSide = str(answer);
      left = true;
    } else if (opeButtons[i].hov && opeButtons[i].o == '^') {
      left = false;
      operator = opeButtons[i].o;
      rightSide = "";
    } else if (opeButtons[i].hov && opeButtons[i].o == '/') {
      left = false;
      operator = opeButtons[i].o;
      rightSide = "";
    } else if (opeButtons[i].hov && opeButtons[i].o == 'p') {
      if (left)
      {
        leftSide += PI;
      } else {
        rightSide += PI;
      }
    } else if (opeButtons[i].hov && opeButtons[i].o == '*') {
      left = false;
      operator = opeButtons[i].o;
      rightSide = "";
    } else if (opeButtons[i].hov && opeButtons[i].o == 'r') {
      if (left)
      {
        leftSide = str(sqrt(float(leftSide)));
      } else {
        rightSide = str(sqrt(float(rightSide)));
      }
    } else if (opeButtons[i].hov && opeButtons[i].o == '-') {
      left = false;
      operator = opeButtons[i].o;
      rightSide = "";
    } else if (opeButtons[i].hov && opeButtons[i].o == 'h') {
      left = false;
      operator = opeButtons[i].o;
      rightSide = "";
    } else if (opeButtons[i].hov && opeButtons[i].o == '+') {
      left = false;
      operator = opeButtons[i].o;
      rightSide = "";
    } else if (opeButtons[i].hov && opeButtons[i].o == '.') {
      if (left) {
        leftSide += opeButtons[i]. o;
      } else {      
        rightSide += opeButtons[i].o;
      }
    } else if (opeButtons[i].hov && opeButtons[i].o == 'd') {
      backSpace();
    } else if (opeButtons[i].hov && opeButtons[i].o == '=') {
      equal = true;
      buttonCalc();
    }
  }
}

void buttonClear()
{
  leftSide = "0";
  rightSide = "";
  answer = 0.0;
  operator = ' ';
  left = true;
  equal = false;
}

void backSpace()
{
  if (left) {
    leftSide = leftSide.substring( 0, leftSide.length()-1 );
  } else {
    rightSide = rightSide.substring( 0, rightSide.length()-1 );
  }
}

void buttonCalc() 
{
  switch(operator) 
  { 
  case '/':
    answer = float(leftSide) / float(rightSide);
    leftSide = str((float)answer);
    left = true;
    break;

  case '*':
    answer = float(leftSide) * float(rightSide);
    leftSide = str((float)answer);
    left = true;
    break;

  case '-':
    answer = float(leftSide) - float(rightSide);
    leftSide = str((float)answer);
    left = true;
    break;

  case '+':
    answer = float(leftSide) + float(rightSide);
    leftSide = str((float)answer);
    left = true;
    break;

  case '^':
    answer = pow(float(leftSide), float(rightSide));
    leftSide = str((float)answer);
    left = true;
    break;

  case 'n':
    if (left == true)
    {
      answer = float(leftSide) * -1;
      leftSide = str(answer);
      break;
    } else {
      answer = float(rightSide) * -1;
      leftSide = str((float)answer);
      left = true;
      break;
    }

  case 'h':
    answer = sqrt((float(leftSide) * float(leftSide)) + (float(rightSide) * float(rightSide)));
    leftSide = str(answer);
    left = true;
    break;
  }
  equal = false;
}


void updateDisplay() 
{
  fill(255);
  rect(20, 20, 670, 140, 7);
  fill(0);
  textAlign(RIGHT);
  if (equal) {
    text((float)answer, 670, 140);
  } else {
    if (left) {
      if (leftSide.length() <= 11)
      {
        leftDisplay = 85;
      } else if (leftSide.length() <= 22)
      {
        leftDisplay = 42;
      } else if (leftSide.length() <= 44)
      {
        leftDisplay = 21;
      }
      textSize(leftDisplay);
      text(leftSide, 670, 140);
    } else {
      if (rightSide.length() <= 11)
      {
        rightDisplay = 85;
      } else if (rightSide.length() <= 22)
      {
        rightDisplay = 42;
      } else if (rightSide.length() <= 44)
      {
        rightDisplay = 21;
      }
      textSize(rightDisplay);
      text(rightSide, 670, 140);
    }
  }
}
