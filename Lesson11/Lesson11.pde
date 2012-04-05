// Lesson 11 "Sketch Board"
//    introduction of user-interaction

int rad = 10;
int prevX;
int prevY;

void setup() {
  size(800, 600);
  smooth();
  background(255);
  
  prevX = mouseX;
  prevY = mouseY;
}

void draw() {
  int x = mouseX;
  int y = mouseY;
  
  stroke(0);
  line(prevX, prevY, x, y);
  
  prevX = x;
  prevY = y;
}

void mousePressed() {
  fill(0);
  ellipse(mouseX, mouseY, 10, 10);
}

void keyPressed() {
  switch(key) {
    case ' ': // hit space-key to clear the window
      background(255);
      break;
  }
}



