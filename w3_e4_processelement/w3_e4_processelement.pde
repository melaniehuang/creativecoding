void setup(){
  size(200,200);
  background(0);  
  frameRate(1);
}

void draw() {
  drawElement();
}

void drawElement(){  
  noFill();
  stroke(255);
  ellipseMode(CENTER);
  
  int diameter = 10;
  
  int x = width/2;
  int y = height/2;
  
  int x1 = width/2;
  
  float xoff = random(-width/2,width/2);
  
  point(x,y);
  ellipse(x,y,diameter,diameter); 
   
  float d = dist(x,y,x1,y);
  
    if (d > diameter) {
      point(x1+xoff,y);
      ellipse(x1+xoff,y,diameter,diameter);
      line(x1,y,x+xoff,y); 
    } else {
      point(x1+xoff,y);
      ellipse(x1+xoff,y,diameter,diameter);
    }
    
    x = ++x1;
}

// draw circle/s 
// circles move in straight lines (100px away, in x or y direction)
// if circles overlap draw a line from centre of ellipses
// if d is equal to or greater than diameter = 100;
// colour first line yellow, colour second line blue