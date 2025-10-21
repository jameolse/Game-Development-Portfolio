class Powerup {
  int x, y, w, h, diam, speed;
  char type;
  color c1;
  //PImage r1;
  Powerup() {
    x = int(random(width));
    y = -100;
    diam = 100;
    speed = 7;
    if(random(10)>5) {
      type = 'H';
      c1 = color(20,255, 22);
    } 
    else if(random(10)>5) {
      type = 'E';
      c1 = color(234,22,22);
    }
  }
  void display() {
    fill(c1);
    rect(x,y,diam,diam);
    fill(255);
    text(type,x,y);
  }
  void move() {
    y = y+speed;
  }
  void move(int x, int y) {
    this.x = x;
    this.y = y;
  }
  
  boolean reachedBottom() {
    if(y>height+w) {
      return true;
    } else {
      return false;
    }
  }
  boolean intersect(SpaceShip r) {
    float d = dist(x,y,r.x,r.y);
    if(d<50) {
      return true;
    } else {
      return false;
    }
  }
}
