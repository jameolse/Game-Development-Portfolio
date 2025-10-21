class SpaceShip {
  // Whose woods these are I do not know
  //Twas brillig and the slithy toves did gire and gimble in the wabe
  int x, y, w, health, ammo, laserCount,turretCount;
  PImage ship;
  boolean powerball;
  SpaceShip() { 
    x = width/2;
    y = height/2;
    w = 100;
    laserCount = 1000;
    health = 50;
    turretCount=1;
    ship = loadImage("armadillo.png");
    powerball=false;
  }
  void display() {
    if (powerball==true) {
      ship = loadImage("Light.png");
    } else {
      ship = loadImage("armadillo.png");
    }
    imageMode(CENTER);
    ship.resize(50,50);
    image(ship, x, y);
  }
  void move() {
  }
  boolean fire() {
    if(laserCount>0) {
      return true;
    } else {
      return false;
    }
  }
  void move(int x, int y) {
    this.x = x;
    this.y = y;
  }
  boolean intersect() {
    return true;
  }
}
