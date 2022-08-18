import processing.embroider.*;
PEmbroiderGraphics E;

void setup() {

  // Starting up:
  noLoop();
  size(1000, 1000);
  E = new PEmbroiderGraphics(this, width, height);
  
  // change this line you want a different file type
  String outputFilePath = sketchPath("bezier.pes"); 
  E.setPath(outputFilePath); 
  E.beginDraw();
  E.clear();
  E.setStitch(5, 30, 0);

  //-------
  // Content goes here:
  // bezier
  E.beginShape();
  for (int i = 1; i < 10; i++) {
    for (int j = 1; j < 10; j++) {
      E.vertex(i*100 + random(-100, 100) , j*100 + random(-100, 100));
    E.bezierVertex(i*100, 0, i*50, j*70, i*100 - 10, i*50);
    }
  }
  
  E.endShape();
  //----------  
  // Visualization and export:
  // NOTE: Leave optimize() and endDraw() commented out,
  // until you are ready to export the embroidery file! 
  // Don't forget to un-comment them when you want to export!
  //
   E.optimize(); // VERY SLOW, but essential for file output! 
  E.visualize(true, true, false);   // Display the embroidery path on-screen.
   E.endDraw();  // Actually writes out the embroidery file.
}
