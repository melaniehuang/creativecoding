float x = 0;
float y = 100;
  
float d = 1;
float s = 5;
  
int w = 10;

float num = 5;
  
void setup(){
  size(200,1000);
  background(0);    
  pixelDensity(2);
}

void draw() {
  background(0);  
  drawElement(); 
}

void drawElement(){       
  noFill();
  stroke(255);
  
  if ( d == -1 && x == 0){
   d = 1;
  }
      
  if ( d == 1 && x == 200){
   d = -1;
  }
  
  x = x+1*d*s;
  
  for (int i = 0; i < num; i++) {
    ellipse(x,y+200*i,w,w);
    point(x,y+200*i);
  }
  
}