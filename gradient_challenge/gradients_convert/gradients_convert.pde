// convert a HEX to RGB
// 0-9 = number + 10-16 = A-F

void setup(){
  noLoop();
}

void draw(){    
  int[] findRGBColor = masterConvert("FFAA00");  
  println(findRGBColor);
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
  if (h == '1' || h == '2' || h == '2' || h == '3' || h == '4' || h == '5' || h == '6' || h == '7' || h == '8' || h == '9'){
    return int(h)-48;
  } else if (h == 'A' || h == 'B' || h == 'C' || h == 'D' || h == 'E' || h == 'F') {
    return int(h)-55;
  } else {
    return 0;
  }
}