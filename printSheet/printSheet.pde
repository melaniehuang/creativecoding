import processing.pdf.*;
PImage avatar;

boolean portrait = true;
int avWidth = 600;

void setup() {
  size(2100, 2970, PDF, "data/printSheet.pdf");
  
  background(255);
  avatar = loadImage("10322.jpg");
}

void draw() {
  avSheet(); 
  println("Finished.");
  exit();
}

void avSheet(){
  //how many can fit in a row?
  
  int rowLeftover =  width % avWidth;
  int inaRow = (width - rowLeftover) / avWidth;
  
  println(rowLeftover);
  println(inaRow);
  
  int gap = rowLeftover/(inaRow+1);
  
  int colLeftover = height % avWidth;
  int inaCol = (height - colLeftover) / avWidth;
  
  println(colLeftover);
  println(inaCol);
  
  int totalHeight = (inaCol * avWidth) + (gap*inaCol+1);
  
  if (totalHeight > height) {
    inaCol = inaCol -1;
  }
  
  for (int i=0; i < inaRow; i++){
    for (int j=0; j < inaCol; j++){
      image(avatar,gap+(avWidth*i)+(gap*i),gap+(avWidth*j)+(gap*j),avWidth,avWidth);
    }
  }
  
  
}