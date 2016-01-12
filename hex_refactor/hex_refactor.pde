void setup(){
  noLoop();
}

void draw(){ 
  masterGradient("FFAA00", "00BBAA", 16);
}

void masterGradient(String startC, String endC, int steps){
 //Get Hex strings, divide and turn into integers
 float[] color1 = getColors(startC);
 float[] color2 = getColors(endC);

 //Find the nStep values between the r,g and b colors respectively
 int[] rColors = cValues(color1[0], color2[0]);
 int[] gColors = cValues(color1[1], color2[1]);
 int[] bColors = cValues(color1[2], color2[2]);
 
 //Compile rgb values into final hex values
 int[][] grad = new int[steps][3];

 for (int i = 0; i < steps; i++){
  grad[i][0] = rColors[i];
  grad[i][1] = gColors[i];
  grad[i][2] = bColors[i];   
  
  color hexColor = color(rColors[i],gColors[i],bColors[i]); 
  println(hex(hexColor,6));
 } 
}

float[] getColors(String gradVal){
  float[] getHexColors = new float[3];
  
  String rHex = gradVal.substring(0,2); 
  float r = unhex(rHex);
  getHexColors[0] = r; 
  
  String gHex = gradVal.substring(2,4); 
  float g = unhex(gHex);
  getHexColors[1] = g;
  
  String bHex = gradVal.substring(4); 
  float b = unhex(bHex); 
  getHexColors[2] = b;
   
  return getHexColors;
}

int[] cValues (float firstColor, float secondColor){ 
  int[] cColors = new int[nSteps];
  
  float cDiff = firstColor - secondColor; 
  float cSteps = cDiff/(nSteps-1);
   
  for (int i=0; i < nSteps; i++) {
   float c3 = firstColor-(cSteps*i);
   int c4 = int(c3);
   cColors[i] = c4;
  } 
  
  return cColors;
}