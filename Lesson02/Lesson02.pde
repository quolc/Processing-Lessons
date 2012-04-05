// Lesson 02 "Scanning Lines"
//   simple animation technique with frameCount variable

void setup() {
  size(800,600);
  background(255);
}

void draw() {
  // using transparent white rect insted of background(255) to make motion blur
  fill(255,255,255,10);
  noStroke();
  rect(0,0,800,600);

  stroke(0);
  // x = t^2/100 ... accelerated motion
  // %800 for iteration
  line(frameCount*frameCount/100%800, 0, 800-frameCount*frameCount/100%800, 600);
}
