import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class modernart_paint2 extends PApplet {

/*
 * A Joan Miro experiment
 * Modern Art series - Melanie Huang
 */
 
PFont myFont;

float x1, y1;
float x2, y2;
float x3, y3;
float x4, y4;

float xoff;
int circles;
float yoff;

public void setup(){
  
  noStroke();
  background(236,238,224);
  myFont = loadFont("Norwester-Regular-250.vlw");
  noLoop(); 
  
  circles = 4;
  yoff = 0.0f; 
}

public void draw(){ 
  blendMode(BLEND);
  
  createBase();
  createPaint();
  createPaint2();

  fill(255);
  textFont(myFont,50); 
  textAlign(CENTER,CENTER-30);
  text("TURNER",width/2, height/2);
}

public void createBase() {
  int from = color(230,224,202);
  int to = color(211,215,216);
  int num;
  
  for (int b = 0; b < height; b++) {
    xoff = xoff + 1;
    float n = noise(xoff);   
    noFill();
    int interA = lerpColor(from, to, n);  
    line(0,b,width,b);
    stroke(interA);
  }
}

public void createPaint() {
  int from = color(171,178,147);
  int to = color(129,125,98);  
  int num = 50;
  
  for (int a = 0; a < num; a++){
    x1 = random(-200,width/2+200);
    y1 = random(-200, height+200);
   
    x2 = x1 + 60;
    y2 = y1 + random(-20,30);
   
    x3 = x1 + random(700,900); //length
    y3 = y1 + random(-200,200); //direction
   
    x4 = x3 - 60;
    y4 = y3 + random(-30,20);

    float rand = random(10,200);
   
    for(int i = 0; i <= rand; i++) {
      xoff = xoff + 1;
      float n = noise(xoff);   
      noFill();
      strokeWeight(1);
      int interA = lerpColor(from, to, n);  
      bezier(x1, y1+i, x2, y2+i, x3, y3+i, x4, y4+i);
      stroke(interA, 200);  
    }
   }
}

public void createPaint2() {
  int from = color(118,133,114);
  int to = color(79,85,75);  
  int num = 50;
  
  for (int a = 0; a < num; a++){
    x1 = random(-200,width/2+200);
    y1 = random(-200, height+200);
   
    x2 = x1 + 60;
    y2 = y1 + random(-20,30);
   
    x3 = x1 + random(700,900); //length
    y3 = y1 + random(-200,200); //direction
   
    x4 = x3 - 60;
    y4 = y3 + random(-30,20);

    float rand = random(10,100);
   
    for(int i = 0; i <= rand; i++) {
      xoff = xoff + 1;
      float n = noise(xoff);   
      noFill();
      strokeWeight(1);
      int interA = lerpColor(from, to, n);  
      bezier(x1, y1+i, x2, y2+i, x3, y3+i, x4, y4+i);
      stroke(interA, 200);  
    }
   }
}

public void mousePressed() {
  saveFrame(); 
 clear();
 background(38,115,202);
 redraw();
}
  public void settings() {  size(1200,800); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "modernart_paint2" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
