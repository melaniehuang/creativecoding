float col = 5;
float row = 4;

float x = 0;
float y= 50;

float w = 10;

float d = 1;
float s = 0.25;

int num = 1;
float[] xvals = new float[num];

void setup(){
  size(1000,800);
  background(0);    
  pixelDensity(2);
}

void draw() {
  background(0);
  for (int i=0; i < 10; i++){
    xvals[i] = random(0, width);
  }  
  
  drawElement(); 
}

void drawElement(){   
  for (int i = 0; i < num; i++){      
    noFill();
    stroke(255);
      
    if ( d == -1 && xvals[i] == xvals[i]){
      d = 1;
    }
      
    if ( d == 1 && xvals[i] == xvals[i]+200){
      d = -1;
    }
       
    x = xvals[i]+1*d*s;
      
    ellipse(x,y,w,w);
    point(x,y);
  }
  
}