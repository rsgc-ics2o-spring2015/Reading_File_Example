  
BufferedReader reader;
String line;
 
void setup() {
  // Open the file from the createWriter() example
  reader = createReader("message.txt");    
}
 
void draw() {
  try {
    line = reader.readLine();
  } catch (IOException e) {
    e.printStackTrace();
    line = null;
  }
  if (line == null) {
    // Stop reading because of an error or file is empty
    noLoop();  
  } else {
    println(line);
  }
} 
