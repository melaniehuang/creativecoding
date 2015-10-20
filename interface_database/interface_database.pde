import java.util.Date;
PrintWriter output;

void setup() {
  Date d = new Date();
  
  // Create a new file in the sketch directory
  output = createWriter("data/" + d.getTime() + ".txt"); 
}

void draw() {
  point(mouseX, mouseY);
  output.println(mouseY);
  //println(d.getTime());
}

void keyPressed() {
  output.flush();  // Writes the remaining data to the file
  output.close();  // Finishes the file
  exit();  // Stops the program
}