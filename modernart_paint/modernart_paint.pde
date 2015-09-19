/*
 * A Joan Miro experiment
 * Modern Art series - Melanie Huang
 * 
 */
PFont myFont;

float x1, y1;
float x2, y2;
float x3, y3;
float x4, y4;

color from = color(38,115,202);
color to = color(89,185,236);
float xoff;

int num = 10;
int circles = 4;
float yoff = 0.0;  

void setup(){
  size(1200,800);
  noStroke();
  smooth(20);
  background(38,115,202);
  myFont = loadFont("Norwester-Regular-250.vlw");
  //noLoop();
  
}

void draw(){ 
  for (int b = 0; b < height; b++) {
    xoff = xoff + 1;
    float n = noise(xoff);   
    noFill();
    color interA = lerpColor(from, to, n);  
    line(0,b,width,b);
    stroke(interA);
  }

  for (int a = 0; a < num; a++){
    x1 = random(-200,width/2+200);
    y1 = random(-200, height+200);
   
    x2 = x1 + 60;
    y2 = y1 + random(-20,30);
   
    x3 = x1 + random(700,900); //length
    y3 = y1 + random(-200,200); //direction
   
    x4 = x3 - 60;
    y4 = y3 + random(-30,20);

    float rand = random(180,200);
   
    for(int i = 0; i <= rand; i++) {
      xoff = xoff + 1;
      float n = noise(xoff);   
      noFill();
      color interA = lerpColor(from, to, n);  
      strokeWeight(1);
      bezier(x1, y1+i, x2, y2+i, x3, y3+i, x4, y4+i);
      stroke(interA,150);  
    }
   } 
   
   createLine();
   
   //left side ellipses
   for (int e = 0; e < circles; e++) {
     float ex = random(100, width/2-100);
     float ey = random(100, height-100);
     float r = random(20,40);
     
     fill(30,100);    
     for (int blur = 0; blur < 10; blur++){  
         stroke(30,150-(15*blur));
         strokeWeight(4*blur);
         ellipse(ex,ey,r,r);
     }
   } 
   
   float angle = 0;

   //right side ellipses
   for (int a = 0; a < circles; a++) {
     
     float ex = random(width/2, width-100);
     float ey = random(100, height-100);
     float r = random(40,50);
     
     fill(30,100);
     for (int blur = 0; blur < 10; blur++){  
         stroke(30,150-(15*blur));
         strokeWeight(6*blur);
         ellipse(ex,ey,r,r);
     }
   } 
   
   float lx = random(130,width/2);
   float ly = random(50, height/2);
 
  
   for (int blur = 0; blur < 5; blur++){  
      stroke(242, 0, 26, 130-(20*blur));
      strokeWeight(20+(9*blur));
      line(lx, ly, lx+90, ly-50); 
   }
     
   stroke(242, 0, 26);
   strokeWeight(20);
   line(lx, ly, lx+90, ly-50); 
}

void createLine() {
  strokeWeight(1);
  stroke(0);
  noFill();

  beginShape(); 
  float yoff = 0;      
  float y;
  for (y = 0; y <= height; y += 10) {
    float x = map(noise(xoff, yoff), 0, 1, 600,900);
    vertex(x, y); 
    yoff += 0.05;
  }
  xoff += 1;
  endShape();
  
  textFont(myFont,90); 
  textAlign(CENTER,CENTER-30);
  fill(255);
  text("THIS IS ART MODERN",width/2, height/2);
}

//void mousePressed() {
//  clear();
//  background(38,115,202);
//  redraw();
//}


