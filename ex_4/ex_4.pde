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
  
  E.setStitch(5, 30, 30);
 
  E.strokeMode(E.PERPENDICULAR);
  E.strokeWeight(10);     // sets the thickness of the stroke (in machine units)
  E.rect(10, 30, 430, 220);


  E.strokeMode(E.PERPENDICULAR);
  E.strokeWeight(5);     // sets the thickness of the stroke (in machine units)
 E.strokeSpacing(10);
  E.circle(450, 450, 200);


 E.strokeSpacing(1);
  E.strokeMode(E.TANGENT);
  E.strokeWeight(50);     // sets the thickness of the stroke (in machine units)

  E.beginShape();
  E.vertex(30, 120);
  E.vertex(150, 300);
  E.vertex(430, 320);
  E.vertex(100, 450);
    E.vertex(30, 120);
  E.endShape();

  E.setStitch(30, 50, 30);
  E.strokeMode(E.TANGENT);
  E.strokeWeight(1);     // sets the thickness of the stroke (in machine units)
  E.line(40, 400, 500, 350);


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
