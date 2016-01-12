void setup(){
  noLoop();   
}

void draw(){ 
  String[] sexyGradient = masterGradient("FFAA00", "00BBAA", 10000);
  //printArray(sexyGradient);
}

String[] masterGradient(String startC, String endC, int steps){
  String[] colorList = new String[0];
  //Get Hex strings, divide and turn into integers
  float[] color1 = getColors(startC);
  float[] color2 = getColors(endC);

  //Find the nStep values between the r,g and b colors respectively
  int[] rColors = cValues(color1[0], color2[0], steps);
  int[] gColors = cValues(color1[1], color2[1], steps);
  int[] bColors = cValues(color1[2], color2[2], steps);
 
  //Compile rgb values into final hex values
  int[][] grad = new int[steps][3];

  for (int i = 0; i < steps; i++){
    grad[i][0] = rColors[i];
    grad[i][1] = gColors[i];
    grad[i][2] = bColors[i];   
  
    color hexColor = color(rColors[i],gColors[i],bColors[i]); 
    colorList = append(colorList, hex(hexColor,6));
  } 
  
  return colorList;
}

float[] getColors(String gradVal){
  float[] getHexColors = new float[3];
  
  for (int i = 0; i < 3; i++){
    String cHex = gradVal.substring(i*2,(i*2)+2); 
    float c = unhex(cHex);
    getHexColors[i] = c;
  }
  
  return getHexColors;
}

int[] cValues (float firstColor, float secondColor, int steps){ 
  int[] cColors = new int[steps];
  
  float cDiff = firstColor - secondColor; 
  float cSteps = cDiff/(steps-1);
   
  for (int i=0; i < steps; i++) {
    float c3 = firstColor-(cSteps*i);
    int c4 = int(c3);
    cColors[i] = c4;
  } 
  
  return cColors;
}