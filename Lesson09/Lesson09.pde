// Lesson 09 "Blur"
//    introduction of array data + exercise of control flow

int[] a;

void setup() {
  size(800, 600);
  a = new int[800];
  
  // make seeds
  for (int i=0; i<800; i++) {
    if (random(0,1) < 0.5) {
      a[i] = 0;
    } else {
      a[i] = 255;
    }
  }
  background(0);
}

void draw() {
  // show
  for (int i=0; i<800; i++) {
    stroke(a[i]);
    point(i, frameCount-1);
  }
  
  // blur
  int[] b = new int[800]; // buffer
  b[0] = (2*a[0]+a[1])/3; // edge
  b[799] = (a[798]+2*a[799])/3; // edge
  for(int i=1; i<799; i++) {
    b[i] = (a[i-1]+2*a[i]+a[i+1])/4; // get the mean of three neighboring cells
  }
  for(int i=0; i<800; i++) {
    a[i] = b[i];
  }
}

