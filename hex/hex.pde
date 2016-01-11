String startColor = "FFAA00";
String endColor = "00BBAA";
int nSteps = 10;

float[] rColors = new float[nSteps]; 
float[] gColors = new float[nSteps]; 
float[] bColors = new float[nSteps]; 

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
   rColors[i] = r3;
 } 
 println("R");
 println(rColors);
}

void gValues(){ 
 float gDiff = g1 - g2; 
 float gSteps = gDiff/(nSteps-1);
 
 for (int i=0; i < nSteps; i++) {
   float g3 = g1-(gSteps*i);
   gColors[i] = g3;
 } 
 println("G");
 println(gColors);
}

void bValues(){ 
 float bDiff = b1 - b2; 
 float bSteps = bDiff/(nSteps-1);
 
 for (int i=0; i < nSteps; i++) {
   float b3 = b1-(bSteps*i);
   bColors[i] = b3;
 } 
 println("B");
 println(bColors);
}