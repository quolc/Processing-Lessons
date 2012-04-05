// Lesson 05 "Pendulum"
//   integration of mathematical functions

float t;

void setup() {
  t = 0;
  size(800, 600);
  smooth();
  background(255);
}

float sig(float x) {
  return 1.0/(1+exp(-x)); 
}

void draw() {
  fill(255, 10);
  noStroke();
  rect(0,0,800,600);
  
  fill(0);
  float theta = TWO_PI*sig(-10+t/6);
  ellipse(400+200*sin(theta), 300-200*cos(theta), 100, 100);
  t = t+1;
 
  // Loop
  if (t == 120) t=0;
}









