class Jumbo {
  float x_pos;
  float y_pos;
  float speed;
  float angle;

  public Jumbo(float x, float y, float s, float a) {
    x_pos = x;
    y_pos = y;
    speed = s;
    angle = a;

  }

  void move() {

    if (x_pos >= 800) {
      x_pos = (float)(-200 + Math.random());
    }
    if (y_pos >= 800 || y_pos <= -200) {
      y_pos = (float)(700 + Math.random());
    }
    x_pos = x_pos + speed;
    y_pos = y_pos + angle;
  }

  void show() {
    pushMatrix();
    translate(x_pos, y_pos);
    fill(255,255,0);
    ellipse(0, 0, 100, 100);
    popMatrix();
  }
}
