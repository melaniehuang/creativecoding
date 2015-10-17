// ** NEW GAME ** //
import controlP5.*;
ControlP5 cp5;
String textValue = "";

int bestOf = 3;
int[] gamesWon = new int[2];
String teamA = "COMMON CODE";
String teamB = "EVERYONE ELSE";

// ** END GAME ** //
boolean blinker;
int timer = -3000;

void setup() {  
  cp5 = new ControlP5(this);
            
  cp5.addTextfield("Team 1")
     .setPosition(40,200)
     .setSize(400,60)
     .setAutoClear(false)
     ;
     
  background(#6858ff);
  size(1200, 700);  
  noFill();
  stroke(#FFE0D6);
  pixelDensity(2);
  
  score[0] = 0;  
  score[1] = 0;
  gamesWon[0] = 0;
  gamesWon[1] = 0;

  for (int i = 0; i < balls.length; i++) {
    balls[i][0] = random(width);
    balls[i][1] = random(height);
    balls[i][2] = 1;
    balls[i][3] = 1;
    balls[i][4] = random(2,5);
  } 
}

void draw() {  
  drawCourt();
  newGame();
  writeTeams();
  writeScores();
  rectMode(CORNER);

  strokeWeight(1);
  blendMode(BLEND);
  
  fill(#6858ff, 10);
  rect(0, 0, width, height);
  
  for (int w = 0; w < width; w+=25) {
    for (int h = 0; h < height; h+=25) { 
      point(w,h);
    }
  }
  
  drawElement();
  drawLines();
}  
   
void newGame(){
  fill(255);
  textSize(10);
  text("Team 1", 360,180);
}

public void clear() {
  cp5.get(Textfield.class,"textValue").clear();
}

void controlEvent(ControlEvent theEvent) {
  if(theEvent.isAssignableFrom(Textfield.class)) {
    println("controlEvent: accessing a string from controller '"
            +theEvent.getName()+"': "
            +theEvent.getStringValue()
            );
  }
}







//void keyPressed() {
//  if (key == 's' || key == 'S') {
//    saveFrame(); 
//  }
//}

//void mousePressed() {
//  for (int i = 0; i < balls.length; i++) {
//    balls[i][0] = random(width);
//    balls[i][1] = random(height);
//    balls[i][2] = 1;
//    balls[i][3] = 1;
//    balls[i][4] = random(8);
//  }
//}