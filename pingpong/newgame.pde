import controlP5.*;
import java.util.Date;

ControlP5 cp5;
ControlGroup messageBox;

PrintWriter output;

int messageBoxResult = -1;
String teamOne = "";
String teamTwo = "";

String doesThisWork = "";

int messageBoxWidth = 500;
int messageBoxHeight = 380;


void toggleBox(int theValue) {
  if(messageBox.isVisible()) {
    messageBox.hide();
  } else {
    Date d = new Date();
    output = createWriter("data/" + d.getTime() + ".txt");   
    cp5.get(Textfield.class,"teamOne").clear();
    cp5.get(Textfield.class,"teamTwo").clear();
    messageBox.show();
  }
}

void createMessageBox() {
  // create a group to store the messageBox elements
  messageBox = cp5.addGroup("messageBox")
                  .setPosition(width/2-250, height/2-200)
                  .setSize(500,380)                  
                  .setBackgroundColor(color(255))
                  //.bringToFront() 
                  .hideBar();
  
  // add a TextLabel to the messageBox.

  Textlabel l = cp5.addTextlabel("messageBoxLabel","Enter new team names",150,50)
                   .setColorValue(#505050)
                   //.setFont(cfont)
                   .moveTo(messageBox);
  
  Textfield f1 = cp5.addTextfield("teamOne");
                         //.setPosition(50,120)
                         //.setSize(400,60)
                         //.setFocus(true)
 
                         //.setFont(cfont)
                         
                         //.setColorForeground(color(255))
                         //.setColorBackground(color(#F03A0C))
                         //.setColorActive(color(#FF5429))
                         
                         //.setAutoClear(false);
                                               
  
  f1.moveTo(messageBox);
  
  Textfield f2 = cp5.addTextfield("teamTwo")
                         
                         .setPosition(50,190)
                         .setSize(400,60)
                         .setColorForeground(color(255))
                         .setColorBackground(color(#296EFF))
                         .setColorActive(color(#00B0FF))
                  
                         .setAutoClear(false);               
   f2.moveTo(messageBox);                      
                                                    
  // OK button
  Button b1 = cp5.addButton("buttonOK")
                 .setSize(120,60)
                 .setPosition(190,280)
                 
                 .setColorBackground(color(200))
                 .setColorActive(color(150))
                 .setBroadcast(false)                
                 .setValue(1)
                 .setBroadcast(true);                
  
  b1.setCaptionLabel("OK")
    .getCaptionLabel()
    //.setFont(cfont)
    .setSize(20);
    
  b1.moveTo(messageBox);
}


void createButtonOK(){
  Button b = cp5.addButton("toggleBox")
                .setLabel("NEW GAME")
                .setSize(100,20)
                .setPosition(30,30)
                .setDefaultValue(1);
}

void buttonOK(int theValue) {
  println("New game, play ball.");
  
  teamOne = ((Textfield)cp5.getController("teamOne")).getText();
  println("Team Red : " + teamOne);
  
  teamTwo = ((Textfield)cp5.getController("teamTwo")).getText();
  println("Team Blue : " + teamTwo);
  
  output.println(teamOne + "," + teamTwo);
  
  messageBoxResult = theValue;
  messageBox.hide();
  
  output.flush();  
  output.close();
}

//void writeTeams(){
//  fill(255);
//  textSize(32);
//  textAlign(CENTER);
//  text(teamOne, (width/2+50)/2, 50+((height-100)/4)); 
//  text(teamTwo, width/2 + ((width/2-50)/2), 50+((height-100)/4)); 
//}