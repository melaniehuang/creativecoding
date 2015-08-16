int border = 50;
int num = 5;
int gap = 40;

void setup() {
  size(800,800);
  rectMode(CORNER);
  noStroke();
}

void draw() {
  background(255,237,0);

  for (int i=0; i<num; i++){
    for (int n=0; n<num; n++) {
      rect((0+border)+gap*i,(0+border)+gap*n,10,10);
    }
  }
}











//  background(255,237,0);
//  int num = (int) random(3, 12);   // select a random number of squares each frame
//  int gap = (int) random(5, 50); // select a random gap between each square
//  
//  // calculate the size of each square for the given number of squares and gap between them
//  float cellsize = ( width - (num + 1) * gap ) / (float)num;
//  
//  // print out the size of each square
//  println("cellsize = " + cellsize);
//
//    for (int i=0; i<num; i++) {
//      for (int j=0; j<num; j++) {
//
//        fill(255); // rectangle
//        rect(gap * (i+1) + cellsize * i, gap * (j+1) + cellsize * j, cellsize, cellsize);
//      }
//    }
