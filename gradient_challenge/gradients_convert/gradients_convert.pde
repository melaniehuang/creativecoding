// convert a HEX to RGB
// 0-9 = number + 10-16 = A-F


String hexColor = "1A2BE2";
int a;
int b;
char h1;
char h2;

char x;
char y;

void draw(){    
  h1 = hexColor.charAt(0);
  
  if (h1 != '0' && h1 != '1' && h1 != '2' && h1 != '3' && h1 != '4' && h1 != '5' && h1 != '6' && h1 != '7' && h1 != '8' && h1 != '9'){
    charEquals();
  } else {
    numEquals();
  }
  
  h2 = hexColor.charAt(1);

  if (h2 != '0' && h2 != '1' && h2 != '2' && h2 != '3' && h2 != '4' && h2 != '5' && h2 != '6' && h2 != '7' && h2 != '8' && h2 != '9'){
    charEquals();
  } else {
    numEquals();
  }
}

void numEquals(){
  println(16*(h1-48)+(h2-48));
}

void charEquals(){
  
  if (h1 != 0 && h1 != 1 && h1 != 2 && h1 != 3 && h1 != 4 && h1 != 5 && h1 != 6 && h1 != 7 && h1 != 8 && h1 != 9) {  
    char c = h1;
    a = int(c);
  }
  
  if (h2 != 0 && h2 != 1 && h2 != 2 && h2 != 3 && h2 != 4 && h2 != 5 && h2 != 6 && h2 != 7 && h2 != 8 && h2 != 9) {  
    char c = h2;
    b = int(c);
  }

  println(16*(a-55)+(b-55)); 
}