## First class


```markdown

ArrayList<Enemies> myEnemies = new ArrayList<Enemies>();
ArrayList<Lasers> myLasers = new ArrayList<Lasers>();
Excel excel;
Timer timer;
int totalEnemies = 0;
int health = 10;
int enemiesRate = 1000;
int enemyCount = 0;
int laserCount = 1;
int count = 0;
Stars[] myStars;

void setup()
{
  fullScreen();
  background(0);
  myStars = new Stars[100];
  for (int x = 0; x < myStars.length; x++)
  {
    float w = random(5, 15);
    myStars[x] = new Stars(random(width), random(height), w);
  }
  excel = new Excel(22);
  timer = new Timer(enemiesRate);
  timer.start();
}

void draw()
{
  background(18);
  noCursor();
  excel.display(mouseX, mouseY);
  if (timer.isFinished())
  {
    myEnemies.add(new Enemies());
    enemyCount++;
    totalEnemies++;
    timer.start();
  }




  for (int i = 0; i < totalEnemies; i++ ) {
    Enemies myEnemy = myEnemies.get(i);
    if (excel.collide(myEnemy)) {
      myEnemy.hit();
      myEnemies.remove(myEnemy);
      count += 1;
    } else {
      myEnemy.move();
      myEnemy.display();
    }
    if (myEnemy.y > height+10) {
      myEnemy.hit();
      //myEnemies.remove(i);
    }
    for (int j=0; j<myLasers.size(); j++) {
      Lasers myLaser = myLasers.get(j);
      if (myLaser.collide(myEnemy)) {
        myEnemy.hit();
      } else {
        myLaser.fire();
        myLaser.display();
      }
      if (myLaser.reachedTop()) {
        myLaser.miss();
        myLasers.remove(j);
      }
    }
  }
  textSize(25);
  textAlign(CENTER, TOP);
  fill(255);
  String killCounter = "Enemy kills: ";
  String plus = str(count);
  text(killCounter + plus, 115, 10);


  for (int x = 0; x < myStars.length; x++)
  {
    myStars[x].display();
  }
}

void mousePressed()
{
  myLasers.add(new Lasers(mouseX - 20, mouseY));
  myLasers.add(new Lasers(mouseX + 20, mouseY));
  laserCount++;
}

```

## Enemy class

```markdown

class Enemies
{
  int x, y;
  int speed;
  int r;

  Enemies()
  {
    r = int(random(15, 30));
    x = int(random(width));
    y = -r * 4;
    speed = int(random(1, 3));
  }

  void move()
  {
    y += speed;
  }

  boolean reachedBottom()
  {
    if (y > height + r*4)
    {
      return true;
    } else 
    {
      return false;
    }
  }

  void display()
  {
    noStroke();
    //wings
    beginShape();
    fill(175, 40, 0);
    vertex(x, y + 15);
    bezierVertex(x - 10, y + 15, x - 10, y - 5, x - 25, y + 20);
    bezierVertex(x - 20, y - 15, x - 20, y - 15, x - 18, y - 10);
    bezierVertex(x - 5, y - 10, x - 5, y - 10, x - 5, y - 20);
    endShape();


    beginShape();
    fill(200, 0, 5);
    vertex(x, y + 15);
    bezierVertex(x + 10, y + 15, x + 10, y - 5, x + 25, y + 20);
    bezierVertex(x + 20, y - 15, x + 20, y - 15, x + 18, y - 10);
    bezierVertex(x + 5, y - 10, x + 5, y - 10, x + 5, y - 20);
    endShape();
    //endwings


    //body
    beginShape();
    fill(255, 255, 255);
    bezier(x, y + 35, x - 10, y + 30, x - 10, y + 30, x - 5, y - 20);
    bezier(x, y + 35, x + 10, y + 30, x + 10, y + 30, x + 5, y - 20);
    line(x - 5, y - 20, x + 5, y - 20);
    endShape();
    //endbody



    //flame1
    beginShape();
    fill(92, 175, 153);
    vertex(x - 6, y - 20);
    bezierVertex(x - 7, y - 25, x - 7, y - 25, x, y - 37);
    bezierVertex(x + 7, y - 25, x + 7, y - 25, x + 6, y - 20);
    endShape();
    //endflame1



    //flame2
    beginShape();
    fill(59, 111, 97);
    vertex(x - 5, y - 20);
    bezierVertex(x - 4, y - 25, x - 4, y - 25, x, y - 30);
    bezierVertex(x + 4, y - 25, x + 4, y - 25, x + 5, y - 20);
    endShape();
    //endflame2


    beginShape();
    fill(15, 180, 150);
    vertex(x, y + 25);
    bezierVertex(x - 10, y + 21, x - 10, y + 21, x, y + 45);
    bezierVertex(x + 10, y + 21, x + 10, y + 21, x, y + 25);
    endShape();
  }



  void hit()

  {
    speed = 0;
    y = -1000;
    x = -50;
  }
}

```

## Spaceship class

```markdown

class Excel
{
  int x, y;
  int r;
  boolean motion;

  Excel(int r)
  {
    this.r = r;
    x = mouseX;
    y = mouseY;
    motion = true;
  }

  void display(int x, int y)
  {    

    noStroke();
    //wings
    beginShape();
    fill(200, 0, 5);
    vertex(x, y + 15);
    bezierVertex(x - 10, y + 15, x - 10, y - 5, x - 25, y + 20);
    bezierVertex(x - 20, y - 15, x - 20, y - 15, x - 18, y - 10);
    bezierVertex(x - 5, y - 10, x - 5, y - 10, x - 5, y - 20);
    endShape();


    beginShape();
    fill(175, 40, 0);
    vertex(x, y + 15);
    bezierVertex(x + 10, y + 15, x + 10, y - 5, x + 25, y + 20);
    bezierVertex(x + 20, y - 15, x + 20, y - 15, x + 18, y - 10);
    bezierVertex(x + 5, y - 10, x + 5, y - 10, x + 5, y - 20);
    endShape();
    //endwings


    //body
    beginShape();
    fill(180, 160, 0);
    bezier(x, y - 35, x - 10, y - 30, x - 10, y - 30, x - 2, y + 25);
    bezier(x, y - 35, x + 10, y - 30, x + 10, y - 30, x + 2, y + 25);
    line(x - 5, y + 20, x + 5, y + 20);
    endShape();
    //endbody



    //bridge
    beginShape();
    fill(255, 255, 255);
    vertex(x, y + 20);
    bezierVertex(x - 4, y - 25, x - 4, y - 25, x, y - 30);
    bezierVertex(x + 4, y - 25, x + 4, y - 25, x, y + 20);
    endShape();

    //new flame
    beginShape();
    fill(255, 255, 255);
    vertex(x, y + 25);
    bezierVertex(x - 2, y + 21, x - 15, y + 21, x, y + 45);
    bezierVertex(x + 15, y + 21, x + 2, y + 21, x, y + 25);
    endShape();
  }


  boolean collide(Enemies myEnemies)
  {
    float distance = dist(x, y, myEnemies.x, myEnemies.y);
    if (distance < r + myEnemies.r)
    {
      return true;
    } else {
      return false;
    }
  }


  void motion()
  {
    if (motion)
    {
      x = mouseX;
      y = mouseY;
    }
  }
}

```

## Lasers class

```markdown

class Lasers
{
  int startingX, startingY;
  int x, y;
  float speed;
  float r;

  Lasers(int x, int y)
  {
    r = 4;
    this.x = x;
    this.y = y;
    speed = random(1, 3);
  }

  boolean reachedTop()
  {
    if (y < 0 + r*4)
    {
      return true;
    } else
    {
      return false;
    }
  }

  void fire()
  {
    y -= speed;
  }

  void display()
  {

    for (int i = 2; i < r; i++)
    {
      stroke(255, 0, 0);
      line(x, y - 20, x , y - 20);
    }
  }

  void miss()
  {
    speed = 0;
    y = -1000;
    x = -50;
  }

  boolean collide(Enemies myEnemies)
  {
    float distance = dist(x, y, myEnemies.x, myEnemies.y);
    if (distance < r + myEnemies.r) 
    {
      return true;
    } else {
      return false;
    }
  }
}

```

## Stars class

```markdown

class Stars
{
  float x, y, w, d;


  Stars(float x, float y, float w)
  {
    this.x = x;
    this.y = y;
    this.w = w;
    this.d = w;
  }

  void display()
  {
    noStroke();
    fill(255, 255, 255);
    ellipse(x, y, w, w);
    ellipse(x, y - 10, w - 5, w - 5);
    ellipse(x, y - 15, w - 7, w - 7);
    y += random(30);
    if (y >= height)
    {
      x = random(width);
      y = 0;
    }
  }
}

```

## Timer class

```markdown

class Timer {
  int savedTime; 
  int totalTime;

  Timer(int tempTotalTime) {
    totalTime = tempTotalTime;
  }

  void start() {
    savedTime = millis();
  }

  boolean isFinished() { 
    int passedTime = millis()- savedTime;
    if (passedTime > totalTime) {
      return true;
    } else {
      return false;
    }
  }
}

```
