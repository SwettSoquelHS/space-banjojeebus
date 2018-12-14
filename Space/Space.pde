//Declare your variables here
Normal[] theNormal;
Oddball[] theOddball;
Jumbo[] theJumbo;
// so try declaring one Particle first, then instantiate it in setup, and use move and show in draw()

void setup() {
  //your code here
  size(600, 600);
  smooth();
  background(0);

  theNormal = new Normal[500];

  for (int i = 0; i < theNormal.length; i++) {
    float x = (float)(-200 + 800 * Math.random());
    float y = (float)(800 * Math.random());
    float s = .5;
    float a = (float)(-.5 * Math.random());
    float c = 200;


    theNormal[i] = new Normal(x, y, s, a, c);
  }

  theJumbo = new Jumbo[1];

  for (int i = 0; i < theJumbo.length; i++) {
    float x = (float)(-200 + 800 * Math.random());
    float y = (float)(800 * Math.random());
    float s = .5;
    float a = (float)(-.5 * Math.random());



    theJumbo[i] = new Jumbo(x, y, s, a);
  }
  theOddball = new Oddball[1];
  for (int i = 0; i < theOddball.length; i++) {
    float x = (float)(700 * Math.random());
    float y = (float)(-50 * Math.random());
    float s = 10;
    float a = (float)(5 * Math.random());

    theOddball[i] = new Oddball(x, y, s, a);
  }
} //end of setup


void draw() {
  //your code here
  frameRate(30);
  background(0);
  noStroke();
  for (int i = 0; i <500; i++) {
    theNormal[i].show();
    theNormal[i].move();
  }
  for (int i = 0; i <1; i++) {
    theJumbo[i].show();
    theJumbo[i].move();
  }
  for (int i = 0; i < 1; i++) {
    theOddball[i].show();
    theOddball[i].move();
  }
} //end of draw
