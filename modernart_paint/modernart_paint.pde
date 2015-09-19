float x1, y1;
float x2, y2;
color from = color(0,166,255);
color to = color(255,255,255);
float xoff;

void setup(){
  size(800,800);
  noStroke();
  frameRate(10);
  background(255);
}

void draw(){
   x1 = random(-200,width+200);
   y1 = random(-200, height+200);
   
   x2 = random(-200,width+200);
   y2 = random(-200, height+200);
   
   float rand = random(80,100);

   for(int i = 0; i <= rand; i++) {
     
     xoff = xoff + 1;
     float n = noise(xoff);   
     
     color interA = lerpColor(from, to, n);    
     line(x1+i,y1,x2+i,y2);
     stroke(interA,150);  
   }
   
   float e1 = random(0,width); 
   float e2 = random(0,height); 
   
//   for(int e = 0; e <= 8; e++) {
//     ellipse(e1,e2,20,20);
//     fill(0);
//     noStroke();
//   }
}
