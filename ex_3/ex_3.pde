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


  //E.hatchMode(E.CONCENTRIC);
  E.hatchMode(E.PARALLEL);
  //E.hatchMode(E.SATIN);
  //E.hatchMode(E.SPIRAL); 
  //E.hatchMode(E.PERLIN);
  //E.hatchMode(E.CROSS);


  E.hatchSpacing(10); 
  E.hatchAngleDeg(45); 
   
  E.fill(0,200,0);
  E.circle(300, 300, 200);
  
  E.hatchAngleDeg(90);
  E.hatchSpacing(20); 
  
  
    E.beginComposite();
     E.composite.circle(320, 250, 200);
     E.composite.triangle(100, 100, 200, 400, 400, 200);
   E.endComposite(); 
 
  //----------  
  // Visualization and export:
  // NOTE: Leave optimize() and endDraw() commented out,
  // until you are ready to export the embroidery file! 
  // Don't forget to un-comment them when you want to export!
  //
  // E.optimize(); // VERY SLOW, but essential for file output! 
  E.visualize(true, true, false);   // Display the embroidery path on-screen.
  // E.endDraw();  // Actually writes out the embroidery file.
}
