PFont numFont;

void setup(){
  size(600,600);
  noLoop();
  background(0);
  
  //textSize(100);
  numFont = loadFont("Miso-Light-100.vlw");
  textFont(numFont, 90);
  textAlign(CENTER);
}

void draw(){    
  int[] findRGBColor = masterConvert("3D11AB");  
  printArray(findRGBColor);
  
  String s1 = str(findRGBColor[0]);
  String s2 = str(findRGBColor[1]);
  String s3 = str(findRGBColor[2]);
  
  String s = s1 + ", " + s2 + ", " + s3;
  
  background(findRGBColor[0], findRGBColor[1], findRGBColor[2]);
  text(s, width/2, height/2+20); 
}

int[] masterConvert(String hexColor){
  char[] hexValues = new char[6]; 
  int[] colorValues = new int[6];
  int[] rgbValues = new int[3];

  for (int i = 0; i < 3; i++){
    int x = i*2;
    hexValues[x] = hexColor.charAt(x);
    hexValues[x+1] = hexColor.charAt(x+1);
  
    colorValues[x] = asciiOffset(hexValues[x]);
    colorValues[x+1] = asciiOffset(hexValues[x+1]);
    
    rgbValues[i] = (colorValues[x]*16)+colorValues[x+1]; 
  }
  
  return rgbValues;
}

int asciiOffset(char h){
  if (h == '1' || h == '2' || h == '3' || h == '4' || h == '5' || h == '6' || h == '7' || h == '8' || h == '9'){
    return int(h)-48;
  } else if (h == 'A' || h == 'B' || h == 'C' || h == 'D' || h == 'E' || h == 'F') {
    return int(h)-55;
  } else {
    return 0;
  }
}