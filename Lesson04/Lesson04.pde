// Lesson 04 "Color Square"
//   advanced animation techniques (easing, color)

float t;

void setup() {
  t = 0;
  size(800,600);
  colorMode(HSB, 255); // HSB (hue, saturation, brightness) colormode
  noStroke();
  background(255);
}

// sigmoid function
float sig(float x) {
  return 1.0/(1+exp(-x));
}

void draw() {
  fill(255, 1);
  rect(0, 0, 800, 600);
  // use sigmoid function to express easing
  // sig(-x) -> 0, sig(x) -> 1 (x->inf)
  fill(255*sig(t/10-8), 255, 255);
  rect(700*sig(t/10-8), 250, 100, 100);
  t += 1;
}
