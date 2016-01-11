String startColor = "FFAA00";
String endColor = "00BBAA";
int nSteps = 10;
int rgbValues = 3;

int[] rColors = new int[nSteps]; 
int[] gColors = new int[nSteps]; 
int[] bColors = new int[nSteps]; 

int[][] grad = new int[nSteps][rgbValues];

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
 
 //println("R");
 //println(rColors);
 //println("G");
 //println(gColors);
 //println("B");
 //println(bColors);
 
 for (int i = 0; i < nSteps; i++){
   grad[i][0] = rColors[i];
   grad[i][1] = gColors[i];
   grad[i][2] = bColors[i];
   
   color hexColor = color(rColors[i],gColors[i],bColors[i]);
   println(i);
   println(hex(hexColor,6));
 }
 
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