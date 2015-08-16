int border = 50;
int repetitions = 5;
int w = 100;
int h = 100;
int x = 0;
int y = 0;

void setup() {
  size(800,800);
  rectMode(CORNER);
  noStroke();
  frameRate(1);
}

void draw() {
  background(240);

  for (int i=0; i<repetitions; i++){
    for (int n=0; n<repetitions; n++) {
      int x = (int) random(-5, 5); 
      int y = (int) random(-5, 5); 
      
      fill(127,63,62,200);
      rect((width/2-(5*w/2))+(w*i)+x, (height/2-(5*h/2))+(h*n)+y, w, h);
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
