// Lesson 07 "Color Chart"
//   control flow 2 : iteration (for)

void setup() {
  size(800, 600);
  colorMode(HSB);
  noStroke();
}

void draw() {
  background(255);
  for (int i=0; i<10; i++) {
    for (int j=0; j<10; j++) {
//      fill(255.0*((i+frameCount/10)%10)/10, 255.0*(1.0-(float)j/10), 255); // animated version
      fill(255.0*i/10, 255.0*(1.0-j/10.0), 255);
      rect(150+i*50, 50+j*50, 50, 50);
    }
  }
}
