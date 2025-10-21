//James Olsen | 23 September 2025 | SpaceGame
import processing.sound.*;
SoundFile laser;
SpaceShip s1;
PImage bg;
ArrayList<Rock> rocks = new ArrayList<Rock>();
ArrayList<Powerup> powups = new ArrayList<Powerup>();
ArrayList<Laser> lasers = new ArrayList<Laser>();
ArrayList<Star> stars = new ArrayList<Star>();
Timer rockTimer;
Timer puTimer;
int score;
//increasing rocks
int time;
int rocksPassed;
boolean play;
boolean death;
void setup() {
  laser = new SoundFile(this, "Laser.mp3");
  time = 1000;
  size(500, 500);
  s1 = new SpaceShip();
  bg = loadImage("Earth.png");
  puTimer = new Timer(7000);
  puTimer.start();
  rockTimer = new Timer(time);
  rockTimer.start();
  score = 0;
  rocksPassed = 0;
  play=false;
}

void draw() {
  if(play==false) {
    background(255);
    fill(0);
    text("SAVE THE EARTH - CLICK TO START",width/2, height/2);
  } else {
  noCursor();
  background(0);
  stars.add(new Star());
  if (time<950&&time>900) {
    fill(132, 186, 181);
    textSize(20);
    text("Do not resist us, little one", 100, 250);
  }
  if (time<900&&time>850) {
    fill(132, 186, 181);
    textSize(20);
    text("You will fall- just as all your little brothers", 100, 250);
  }
  if (time<840&&time>780) {
    fill(132, 186, 181);
    textSize(20);
    text("With every attack, our power grows tenfold", 100, 250);
  }
  if (time<750&&time>700) {
    fill(132, 186, 181);
    textSize(20);
    text("GIVE IN", 100, 250);
  }
  if (time<700&&time>600) {
    fill(132, 186, 181);
    textSize(20);
    text("WE WILL TEAR THAT TIN CAN OF YOURS APART", 100, 250);
  }
  if (rockTimer.isFinished()) {
    rocks.add(new Rock());
    rockTimer.start();
  }
  if (puTimer.isFinished()) {
    powups.add(new Powerup());
    puTimer.start();
  }
  for (int i = 0; i < powups.size(); i++) {
    Powerup pu = powups.get(i);
    pu.display();
    pu.move();
      if (pu.intersect(s1)) {
        powups.remove(pu);
        if(pu.type == 'H') {
          s1.health+=10;
        }else if(pu.type == 'E') {
          s1.powerball=true;
      }
      if(pu.reachedBottom()) {
      }
    }
  }
  for (int i = 0; i < lasers.size(); i++) {
    Laser laser = lasers.get(i);
    for (int j = 0; j<rocks.size(); j++) {
      Rock rock = rocks.get(j);
      if (laser.intersect(rock)) {
        rocks.remove(rock);
        score+=1;
      }
    }
    laser.display();
    laser.move();
    if (laser.reachedTop()) {
      lasers.remove(laser);
    }
  }
  for (int i = 0; i < stars.size(); i++) {
    Star star = stars.get(i);
    star.display();
    star.move();
    if (star.reachedBottom()) {
      stars.remove(star);
    }
  }
  for (int i = 0; i < rocks.size(); i++) {
    Rock rock = rocks.get(i);
    rock.display();
    rock.move();
    if (rock.reachedBottom()==true) {
      rocks.remove(rock);
      i--;
      rocksPassed++;
      s1.health--;
      s1.powerball=false;
    }
  }
  image(bg,width/2,255);
  s1.display();
    if (s1.health<1) {
    death();
  }
  s1.move(mouseX, mouseY);
  infoPanel();
  }
}


void mousePressed() {
  if (s1.fire()) {
    lasers.add(new Laser(s1.x, s1.y));
    s1.laserCount--;
    laser.play();
    if (time>50) {
      time=time-10;
      rockTimer=new Timer(time);
    }
  }
  play=true;
  println(time);
}

void infoPanel() {
  rectMode(CENTER);
  fill(127, 127);
  rect(width/2, 25, width, 50);
  fill(132, 186, 181);
  textSize(20);
  text("Score: "+score, 20, 40);
  text(rocksPassed + " Gods Evaded", width-180, 40);
  text("Earth's strength: "+ s1.health, 120, 40);
}
void death() {
    background(250);
    fill(0);
    text("EARTH HAS FALLEN",width/2, height/2);
    noLoop();
}
