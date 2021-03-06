void setup() {
  size(1024,512);
  background(255);
}

void draw() {    
 noStroke();
 
 fill(192, 41, 39); 
 quad(867, 172, 987, 190, 987, 331, 867, 348);
 
 fill(246, 150, 29); 
 quad(721, 149, 867, 172, 867, 348, 721, 369);
 
 fill(255, 234, 59); 
 quad(540, 121, 721, 149, 721, 369, 540, 395);
 
 fill(91, 183, 73); 
 quad(315, 86, 540, 121, 540, 395, 315, 428);
 
 fill(35, 64, 139); 
 quad(36, 43, 315, 86, 315, 428, 36, 469);
 
 // 3D
 noStroke();
 fill(50,92,255); 
 quad(46, 53, 305, 95, 305, 420, 46, 459);
 
 noStroke();
 fill(150,255,0); 
 quad(325, 97, 530, 130, 530, 386, 325, 418);
 
 noStroke();
 fill(255,255,0); 
 quad(550, 132, 711, 159, 711, 360, 550, 384);
 
 noStroke();
 fill(255,192,0); 
 quad(731, 160, 857, 181, 857, 340, 731, 358);
 
 noStroke();
 fill(250, 40, 30); 
 quad(877, 182, 977, 198, 977, 324, 877, 337);
 
 //holes
 fill(255); 
 ellipse(176, 106, 10, 10);
 ellipse(428, 141, 10, 10);
 ellipse(631, 169, 10, 10);
 ellipse(794, 192, 10, 10);
 ellipse(927, 210, 10, 10);
 
 ellipse(176, 408, 10, 10);
 ellipse(428, 375, 10, 10);
 ellipse(631, 349, 10, 10);
 ellipse(794, 328, 10, 10);
 ellipse(927, 311, 10, 10);
}