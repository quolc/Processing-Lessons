// Lesson 03 "Animated Shapes"
//   introduction of use of variables


// declaration of variables
int a;    // integer
float b;  // float point

void setup() {
  size(800, 600);
  smooth();
  a = 0;
  b = 0;
}

void draw() {
  background(255);
  fill(0, 0, 0);

  // draw shapes using variables to decide positions
  rect(a, a, 100, 100);
  arc(400, 300, 100, 100, 0, b);
  
  // substitution
  a = a + 1;
  b = b + TWO_PI/360;
}
