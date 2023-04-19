import processing.embroider.*;
PEmbroiderGraphics E;

void setup() {

  // Starting up:
  noLoop();
  size(1000, 800);
  E = new PEmbroiderGraphics(this, width, height);
  
  // change this line you want a different file type
  String outputFilePath = sketchPath("bezier"+ str(int(random(10000))) +".pes"); 
  E.setPath(outputFilePath); 
  E.beginDraw();
  E.clear();
  E.setStitch(5, 30, 0);

  //-------
  // Content goes here:
  
  E.beginShape();
  E.vertex(100, 100);
  for (int i = 1; i < 10; i++) {
    for (int j = 1; j < 10; j++) {
      //E.vertex(100*j, 100*i);
      E.bezierVertex(i*i*10 + (100-i), 0, i*50, j*100 + (150-j), i*50 - 10, i*50);
    }
  }
  E.endShape();
  
 
  // non-continuous bezier
  //for (int i = 1; i < 10; i++) {
  //  for (int j = 1; j < 10; j++) {
  //    //E.stroke(int(random(100, 255)), int(random(100, 255)), int(random(100, 255)));
  //    E.bezier(i*i*20 + (200-i), 200, i*100, j*200 + (300-j), i*100 - 20, i*100, j*100 - 30, i*100);
  //  }
  //}
 
 
  
  // continuous bezier
  // bezier(x1, y1, cpx1, cpy1, cpx2, cpy2, x2, y2);

  
  // continuous example
  // part 1 -- points in a line
//  E.beginShape();
//  E.vertex(100, 100);
//  float nextPointx, nextPointy;
//  int offset = 100;
//  for (int i = 1; i < 10; i++) {
//      E.stroke(0, 0, 0);

//    float randPoint1x = random(offset, width-offset);
//    float randPoint1y = random(offset, height-offset);
//    float randPoint2x = random(offset, width-offset);
//    float randPoint2y = random(offset, height-offset);
//    E.line(randPoint1x, randPoint1y, randPoint2x, randPoint2y);
    
//    E.stroke(0, 255, 0);
//    float linem = (randPoint2y - randPoint1y)/(randPoint2x - randPoint1x);
//    float linec = randPoint1y - randPoint1x*linem;
//    nextPointx = random(offset, width-offset);
//    nextPointy = nextPointx*linem + linec;
//    E.line(nextPointx, nextPointy, randPoint2x, randPoint2y);
//}
//  E.endShape();
 
 
 // part 2 -- continuous bezier
  // bezierVertex(cpx1, cpy1, cpx2, cpy2, x, y);
  //In order to make two curves A and B smoothly continuous, 
  //the last control point of A, the last point of A, and the 
  //first control point of B have to be on a straight line.
  // importantly the second point needs to be *inbetween*
 
  
//  E.beginShape();
//  int offset = 0;
//  float nextPointx = offset;
//  float nextPointy = offset;
//  E.vertex(nextPointx, nextPointy);
//  for (int i = 1; i < 10; i++) {
//      for (int j = 1; j < 10; j++) {
//      E.stroke(0, 0, 0);

//    float randPoint1x = 50*i;
//    float randPoint1y = 100*j-50;
//    float randPoint2x = 100*i;
//    float randPoint2y = 100*i-100;
//    float midPointx = (randPoint2x + randPoint1x)/2;
//    float midPointy = (randPoint2y + randPoint1y)/2;
    
//    E.bezierVertex(nextPointx, nextPointy, randPoint1x, randPoint1y, midPointx, midPointy);
//    //E.line(randPoint1x, randPoint1y, randPoint2x, randPoint2y);
    
//    nextPointx = randPoint2x;
//    nextPointy = randPoint2y;

//    //E.stroke(255, 0, 0);
//    //E.line(nextPointx, nextPointy, randPoint2x, randPoint2y);
//}
//  }
//  E.endShape();
  
  
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
