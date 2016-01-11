String startColor = "FFFFFF";
String endColor = "000000";
int nSteps = 10;

int[] rColors = new int[nSteps]; 
int[] gColors = new int[nSteps]; 
int[] bColors = new int[nSteps]; 

int[] rgbColors = new int[3*nSteps]; 
//String[] stepColors = new String[nSteps]; 

float r1;
float g1;
float b1;

float r2;
float g2;
float b2;

void draw(){
 getColor1();
 getColor2();
 
 rValues();
 gValues();
 bValues();
 
 for (int i = 0; i < nSteps; i = i+2){
  rgbColors[i] = rColors[i];
  rgbColors[i+1] = gColors[i];
  rgbColors[i+2] = bColors[i];
 }
 
 println(rgbColors);

 //println(r1,g1,b1);
 //println(r2,g2,b2);
 
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

void rValues(){ 
 float rDiff = r1 - r2; 
 float rSteps = rDiff/(nSteps-1);
 
 for (int i=0; i < nSteps; i++) {
   float r3 = r1-(rSteps*i);
   int r4 = int(r3);
   rColors[i] = r4;
 } 
 //println("R");
 //println(rColors);
}

void gValues(){ 
 float gDiff = g1 - g2; 
 float gSteps = gDiff/(nSteps-1);
 
 for (int i=0; i < nSteps; i++) {
  float g3 = g1-(gSteps*i);
  int g4 = int(g3);
  gColors[i] = g4;
 } 
 //println("G");
 //println(gColors);
}

void bValues(){ 
 float bDiff = b1 - b2; 
 float bSteps = bDiff/(nSteps-1);
 
 for (int i=0; i < nSteps; i++) {
  float b3 = b1-(bSteps*i);
  int b4 = int(b3);
  bColors[i] = b4;
 } 
 //println("B");
 //println(bColors);
}