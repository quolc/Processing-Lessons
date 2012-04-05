// Lesson 06 "Gray Scale"
//    control flow 1 : interation (while)

void setup() {
  size(800, 600);
  noStroke();
}

void draw() {
  background(255);
  
  int i = 0;
  while (i<800) {
    stroke(255.0/800*i);
    line(i, 0, i, 600);
    i++; // increment the counter
  }
}
