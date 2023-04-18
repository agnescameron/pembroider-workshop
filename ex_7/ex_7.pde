import processing.embroider.*;
PEmbroiderGraphics E;
Table table;

void setup() {

  // Starting up:
  noLoop();
  size(1000, 1000);
  E = new PEmbroiderGraphics(this, width, height);
  
  // change this line you want a different file type
  String outputFilePath = sketchPath("filename.pes"); 
  E.setPath(outputFilePath); 
  E.beginDraw();
  E.clear();

  
  table = loadTable("datasets/temp.csv", "header");

  println(table.getRowCount() + " total rows in table");


  //circles
 
  int num=0;
  int rowLength = 13;
  int spacing = round(900/(rowLength));

  for (TableRow row : table.rows()) {
    int i = num % rowLength;
    int j = floor(num/rowLength);
    
    //int id = row.getInt("id");
    int year = row.getInt("year");
    float temp = row.getFloat("unsmoothed");
    float radius = (temp + 1.0)*45;
    E.circle((i+1)*spacing, (j+1)*spacing, radius);
    println("year " + year + " temp " + temp);
    num=num+1;
  }
  
  
  // //composite circles
  //E.beginComposite();
  //int num=0;
  //int rowLength = 13;
  //int spacing = round(900/(rowLength));

  //for (TableRow row : table.rows()) {
  //  int i = num % rowLength;
  //  int j = floor(num/rowLength);
    
  //  //int id = row.getInt("id");
  //  int year = row.getInt("year");
  //  float temp = row.getFloat("unsmoothed");
  //  float radius = (temp + 1.0)*45;
  //  E.composite.circle((i+1)*spacing, (j+1)*spacing, radius);
  //  println("year " + year + " temp " + temp);
  //  num=num+1;
  //}
  //E.endComposite();

  // E.optimize(); // VERY SLOW, but essential for file output! 
  E.visualize(true, true, false);   // Display the embroidery path on-screen.
   //E.endDraw();  // Actually writes out the embroidery file.

}
