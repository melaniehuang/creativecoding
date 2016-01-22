import processing.pdf.*;
PImage avatar;

//How many would you like to print?
int numAvatars = 20;
int 

void setup() {
  size(2100, 2970, PDF, "data/printSheet.pdf");
  background(255);
  avatar = loadImage("avatar.png");
}

void draw() {
  for (int i = 0; i < 10; i++){
    image(avatar,0+i,0,210,210);
  }

  println("Finished.");
  exit();
}