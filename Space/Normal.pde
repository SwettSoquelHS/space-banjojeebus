class Normal {
  float x_pos;
  float y_pos;
  float speed;
  float angle;
  float normColor;
  public Normal(float x, float y, float s, float a, float c) {
    x_pos = x;
    y_pos = y;
    speed = s;
    angle = a;
    normColor = c;
  }

  void move() {

    if (x_pos >= 650) {
      x_pos = (float)(-50 + Math.random());
    }
    if (y_pos >= 650 || y_pos <= -50) {
      y_pos = (float)(700 + Math.random());
    }
    x_pos = x_pos + speed;
    y_pos = y_pos + angle;
  }

  void show() {
    pushMatrix();
    translate(x_pos, y_pos);
    fill(normColor);
    ellipse(0, 0, 5, 5);
    popMatrix();
  }
}
