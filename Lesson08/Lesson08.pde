// Lesson 08 "Flicker"
//   control flow 3 : branch (if)

void setup() {
  size(800, 600);
  frameRate(30);
}

void draw() {
  if (frameCount%2 == 0) {
    background(0);
  } else {
    background(255);
  }
}

