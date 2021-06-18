// 빗방울 잡는거

class Catcher {
  float r;
  float c;
  float x, y;

  Catcher(float _r) {
    r = _r;
    c = random(255);
    x = 0;
    y = 0;
  } void setLocation(float _x, float _y) {
    x = _x;
    y = _y;
  } void display() {
    stroke(0);
    fill(c);
    ellipse(x, y, r*2, r*2);
  }
  boolean intersect(Drop d) {
    float distance = dist(x, y, d.x, d.y);
    if (distance < r + d.r) {
      return true;
    } else {
      return false;
    }
  }
}
