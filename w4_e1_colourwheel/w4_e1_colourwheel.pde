/*
 * Creative Coding
 * Week 4, 01 - an interactive colour wheel picker
 * Inspired by Indae Hwang and Jon McCormack
 * Copyright (c) 2014 Monash University
 * Edited by Melanie Huang
 */


void setup() {
  size(1000,1000);
  pixelDensity(2);
  colorMode(HSB, 360, 100, 100);
}

void draw() {  
  float bg = map(mouseX, 0, width, 0, 360); 
  background(bg,70,100);
  
  ellipseMode(CENTER);
  stroke(255);
  noFill();
  ellipse(width/2, height/2-75, 300,300);
  ellipse(width/2-75, height/2+75, 300,300);
  ellipse(width/2+75, height/2+75, 300,300);
  
  noStroke();
  fill(55,100,100);
  ellipse(width/2+150, height/2-75,20,20);
  ellipse(width/2+75, height/2+75, 20,20);
  ellipse(width/2+225, height/2+75, 20,20); 

}