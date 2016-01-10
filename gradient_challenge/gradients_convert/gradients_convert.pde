// convert a HEX to RGB
// 0-9 = number + 10-16 = A-F

String hexColor = "ABFFFD";
char h1;
char h2;
char h3;
char h4;
char h5;
char h6;

int a;
int b;
int c;
int d;
int e;
int f;


void draw(){    
  h1 = hexColor.charAt(0);
  h2 = hexColor.charAt(1);
  h3 = hexColor.charAt(2);
  h4 = hexColor.charAt(3);
  h5 = hexColor.charAt(4);
  h6 = hexColor.charAt(5);
 
  a = asciiOffset(h1);
  b = asciiOffset(h2);
  c = asciiOffset(h3);
  d = asciiOffset(h4);
  e = asciiOffset(h5);
  f = asciiOffset(h6);

  println((a*16)+b,(c*16)+d,(e*16)+f);
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
  