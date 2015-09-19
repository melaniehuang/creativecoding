float x1, y1;
float x2, y2;
float x3, y3;
float x4, y4;

color from = color(0,166,255);
color to = color(255,255,255);
float xoff;

int num = 30;


void setup(){
  size(800,800);
  noStroke();
  background(0,166,255);
  noLoop();
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
    x1 = random(-200,width+200);
    y1 = random(-200, height+200);
   
    x2 = x1 + 60;
    y2 = y1 + random(-20,30);
   
    x3 = x1 + random(500,900); //length
    y3 = y1 + random(-200,200); //direction
   
    x4 = x3 - 60;
    y4 = y3 + random(-30,20);

    float rand = random(180,200);
   
    for(int i = 0; i <= rand; i++) {
      xoff = xoff + 1;
      float n = noise(xoff);   
      noFill();
      color interA = lerpColor(from, to, n);  
     
      bezier(x1, y1+i, x2, y2+i, x3, y3+i, x4, y4+i);
      stroke(interA,150);  
    }
    
    println(num);
   }  
}

void mousePressed() {
  clear();
  background(0,166,255);
  redraw();
}


