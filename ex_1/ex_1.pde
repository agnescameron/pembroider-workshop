import processing.embroider.*;
PEmbroiderGraphics E;

void setup() {

  // Starting up:
  noLoop();
  size(600, 600);
  E = new PEmbroiderGraphics(this, width, height);
  
  // change this line you want a different file type
  String outputFilePath = sketchPath("filename.pes"); 
  E.setPath(outputFilePath); 
  E.beginDraw();
  E.clear();

  //-------
  // Content goes here:
  E.line(0, 0, 600, 600); 

  //----------  
  // Visualization and export:
  // NOTE: Leave optimize() and endDraw() commented out,
  // until you are ready to export the embroidery file! 
  // Don't forget to un-comment them when you want to export!
  //
  // E.optimize(); // VERY SLOW, but essential for file output! 
  E.visualize();   // Display the embroidery path on-screen.
  // E.endDraw();  // Actually writes out the embroidery file.
}
