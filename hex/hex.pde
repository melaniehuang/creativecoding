String startColor = "FFFFFF";
String endColor = "000000";
int nSteps = 10;

float r1;
float g1;
float b1;

float r2;
float g2;
float b2;

void draw(){
 getColor1();
 getColor2();
 
 println(r1,g1,b1);
 println(r2,g2,b2);
 
 defineGradient();
}

void getColor1(){
  String rHex = startColor.substring(0,2); 
  r1 = unhex(rHex);
  
  String gHex = startColor.substring(2,4); 
  g1 = unhex(gHex);

  String bHex = startColor.substring(4); 
  b1 = unhex(bHex);
}

void getColor2(){
  String rHex = endColor.substring(0,2); 
  r2 = unhex(rHex);
  
  String gHex = endColor.substring(2,4); 
  g2 = unhex(gHex);

  String bHex = endColor.substring(4); 
  b2 = unhex(bHex); 
}

void defineGradient(){
 float rInc = (r1-r2)/(nSteps-1);
 r1 = r1 - rInc;
 println(r1);
}