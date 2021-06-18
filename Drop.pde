// 빗방울 떨어지는거

class Drop {
  float x, y;
  float speed;
  float r;
  float a,b,c,d;

  
  Drop() {
    r =8;
    x = random(width);
    y = -r*4;
    a=random(255);
    b=random(255);
    c=random(255);
    d=random(255);
    speed = random(3, 10);
    fill(a,b,c,d);
  } void move() { y += speed; }
  void display() {
    fill(a,b,c,d);
    noStroke();
    for (int i =2; i < r; i++) {
      ellipse(x, y+i*4, i*2, i*2);
    }
  } void caught() {
    speed = 0;
    y = -1000;
  } void drop() {
    stroke(255);
    fill(255);
    ellipse(x, y++, r, r);
  } 
  
  //void gameStop() {
  //  if (y == height-laserLimit) {
  //     fill(255, 0, 0);
  //     noLoop();
  //   }
  //}
}
