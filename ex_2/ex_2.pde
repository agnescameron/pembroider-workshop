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

  //circle
  E.circle(200, 200, 200);

  // //rectangle
  // E.rect(100, 100, 200, 200);

  // //triangle
  // E.triangle(100, 100, 200, 300, 300, 200);

  // // composites
  // E.beginComposite();
  //   // peanut
  //   E.composite.circle(320, 250, 200);
  //   E.composite.circle(420, 250, 200);

  //   // clover
  //   E.composite.circle(300, 250, 200);
  //   E.composite.circle(450, 250, 200);
  //   E.composite.circle(375, 350, 200);

  //   // snowman
  //   E.composite.circle(300, 200, 100);
  //   E.composite.circle(300, 300, 150);
  //   E.composite.circle(300, 400, 200);

  //   // rectangle
  //   E.composite.rect(100, 100, 200, 200);

  //   // triangle
  //   E.composite.triangle(100, 100, 200, 400, 400, 200);

  // E.endComposite(); 
 
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
