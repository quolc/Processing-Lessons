// Lesson 10 "Cell Automaton"
//    exercise of array 2

int[] a;

void setup() {
  size(800, 600);
  a = new int[800];
  for (int i=0; i<800; i++) {
    a[i] = 0;
  }
  a[400] = 1;
  background(0);
}

void draw() {
  // show
  for (int i=0; i<800; i++) {
    stroke(a[i]*255);
    point(i, frameCount%600);
  }
  
  // buffer
  int[] b = new int[800];

  // calculate the next generation of cells
  int[] rule = {0,1,1,0,1,0,0,0}; // the rule of cellular-automaton
  for(int i=1; i<799; i++) {    
    if (rule [a[i-1]*4+a[i]*2+a[i+1]] == 1) {
      b[i] = 1;
    } else {
      b[i] = 0;
    }
  }
  for(int i=0; i<800; i++) {
    a[i] = b[i];
  }
}








