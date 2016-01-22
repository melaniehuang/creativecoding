import processing.pdf.*;
PImage avatar;

//How many would you like to print?
int numAvatars = 20;
int avWidth = 200 ;

void setup() {
  size(2100, 2970, PDF, "data/printSheet.pdf");
  background(255);
  avatar = loadImage("avatar.png");

}

void draw() {
  
  avSheet();
  
  println("Finished.");
  exit();
}

void avSheet(){
  int rowLeftover = width % avWidth;
  int inaRow = (width - rowLeftover) / avWidth;
  
  println(rowLeftover);
  println(inaRow);
  
  int gap = rowLeftover/(inaRow);
  
  for (int i=0; i < inaRow; i++){
    image(avatar,gap+(avWidth*i)+(gap*i),gap,avWidth,avWidth);
  }
  
  
}