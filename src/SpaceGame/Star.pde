class Star {
  int x,y,w,speed;

  Star() {
    x = int(random(width));
    y = -10;
    w = int (random(1,5));
    speed = int(random(1,4));
  }
void display() {
  fill(random(150),100,150);
  ellipse(x,y,w,w);
}
void move() {
  y=y+speed;
}
boolean reachedBottom() {
  if(y>height+w) {
      return true;
    } else {
      return false;
    }
}
}
