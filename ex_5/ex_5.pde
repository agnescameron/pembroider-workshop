import processing.embroider.*;
PEmbroiderGraphics E;

void setup() {

  // Starting up:
  noLoop();
  size(600, 600);
  E = new PEmbroiderGraphics(this, width, height);
  
  // change this line you want a different file type
  String outputFilePath = sketchPath("triangles" + str(int(random(0, 100))) + ".pes"); 
  E.setPath(outputFilePath); 
  E.beginDraw();
  E.clear();

 E.strokeSpacing(5);
  E.strokeMode(E.TANGENT);
  E.strokeWeight(20);     // sets the thickness of the stroke (in machine units)


  //-------
  // Content goes here:
  
  //for (int i=1; i<11; i++){
  //  E.line(50, 50, i*50, 500-i*50);
  //}
  
  
  //E.beginComposite();
  //  for (int i = 1; i < 12; i++) {
  //    for (int j = 1; j < 12; j++){
  //      E.composite.circle(i*50 + int(random(-50, 50)), j*50  + int(random(-50, 50)), 10 + int(random(50)));
  //      E.composite.rect()  
  //  }
  //}
  //E.endComposite(); 
  
  
  // E.beginComposite();
  //  for (int i = 1; i < 10; i++) {
  //    for (int j = 1; j < 10; j++){
  //      E.composite.circle(100 + i*50 + int(random(-10, 10)), 100 + j*50 + int(random(-10, 10)), 10 + int(random(50)));
  //    }
  //}
  //E.endComposite(); 
  
  //for (int i = 1; i < 12; i++) {
  //  //horizontal
  //  E.line(50, i*50, 550, i*50);
    
  //  //vertical
  //  E.line(i*50, 50, i*50, 550);
  //}

  //circles
  //E.beginComposite();
  //for (int i = 1; i < 10; i++) {
  //  for (int j = 1; j < 10; j++) {
  //  E.circle(i*50, j*50, 20 + int(random(50)));
  //  }
  //}
  //E.endComposite();

  // playing with triangles
  E.beginComposite();
  for (int i = 1; i < 10; i++) {
    for (int j = 1; j < 10; j++) {
    E.composite.triangle(i*60 + int(random(-60, 60)) , j*60 -int(random(60)), i*60 + int(random(60)), j*60 + int(random(60)), i*60 - int(random(60)), j*60 + int(random(60)));
    }
  }
  
  E.endComposite();
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
