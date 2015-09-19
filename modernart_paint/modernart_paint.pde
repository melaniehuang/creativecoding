float x1, y1;
float x2, y2;
color from = color(0,166,255);
color to = color(255,255,255);
float xoff;
float d;

void setup(){
  size(800,800);
  noStroke();
  frameRate(10);
  background(255);
}

void draw(){
   x1 = random(-200,width+200);
   y1 = random(-200, height+200);
   
   x2 = x1+800;
   d = random(2);
   
   if (d <= 1){
      y2 = y1 + 200;
   } else {
     y2 = y1 - 200;
   }
  
   float rand = random(180,200);

   for(int i = 0; i <= rand; i++) {
     
     xoff = xoff + 1;
     float n = noise(xoff);   
     noFill();
     color interA = lerpColor(from, to, n);    
     bezier(x1,y1+i,x1+60,y1+i,x2,y2+i,x2+60,y2+i);
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
