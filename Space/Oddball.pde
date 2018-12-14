class Oddball {
  float x_pos;
  float y_pos;
  float speed;
  float angle;

  public Oddball(float x, float y, float s, float a) {
    x_pos = x;
    y_pos = y;
    speed = s;
    angle = a;
  }

  void move() {

    if (y_pos >= 650) {
      y_pos = (float)(-50 * Math.random());
      x_pos = (float)(700 * Math.random());
    }
    x_pos = x_pos + angle;
    y_pos = y_pos + angle;
  }

  void show() {
    pushMatrix();
    translate(x_pos, y_pos);
    fill(255, 0, 0);
    ellipse(0, 0, 20, 20);
    popMatrix();
  }
}
