import controlP5.*;
ControlP5 cp5;

String textValue = "";

void setup(){
  size(700,400);
  pixelDensity(2);
  
  cp5 = new ControlP5(this);
  
  cp5.addTextfield("textValue")
     .setPosition(20,170)
     .setSize(200,40)
     .setFont(createFont("arial",20))
     ;
  }

void draw(){
  background(0);
  fill(255);
  text(textValue, 360,180);
}