This is the written version of an embroidery workshop in the CCI, and can either accompany the live workshop or be worked through by itself. As we go through the exercises, it's a good idea to have the [PEmbroider Cheat Sheet](https://github.com/CreativeInquiry/PEmbroider/blob/master/PEmbroider_Cheat_Sheet.md) open in a tab for reference.

There is a .zip folder for each of the exercises that can be downloaded [here]()

## Hello World: Drawing a Line

Follow the instructions [here](https://github.com/CreativeInquiry/PEmbroider#getting-started-with-pembroider-in-processing) to set up PEmbroider on your computer. You will need Processing 4. The first thing we will do in PEMbroider is draw a single line, which we can also use to test everything is working correctly.

### Template File

All files in PEmbroider have a similar structure, and the [cheat sheet]((https://github.com/CreativeInquiry/PEmbroider/blob/master/PEmbroider_Cheat_Sheet.md) ) helpfully provides a template, which I've adapted slightly to match the file format we use in the CCI. We'll be using this as the basis for all the files in the workshop. This file draws a single line, but we can change that to anything we like.

```java
// Example PEmbroider program
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
```

In order, this file:
* sets up a new canvas, of size 600x600 pixels
* tells the computer that it's an embroidery canvas, and sets an output file path
* draws a line on the canvas
* shows it to us (visualise)

There are some other lines that are 'commented out' (have slashes in front of them) and don't run. These we might use later but for now we don't need to use them.

When you run this file, you should see an output that looks like this:

[![](https://wiki.cci.arts.ac.uk/uploads/images/gallery/2022-08/scaled-1680-/oNeiDiDCFCcp0wjG-image-1660208322307-58-38.png)](https://wiki.cci.arts.ac.uk/uploads/images/gallery/2022-08/oNeiDiDCFCcp0wjG-image-1660208322307-58-38.png)

The pink dots represent the ends of stitches, where the needle enters the fabric. Shortly we will experiment with different stitch types and lengths, but for now we are using the default settings.

The PEmbroider code for drawing a line is:

```
E.line(x1, y1, x2, y2);
```

This means that (x1, y1) is the coordinates of the point where the line starts, and (x2, y2) is the point where the line ends. In our code, we get a diagonal line because we draw from the point (0, 0) to the point (600, 600) (the edge of the canvas).

### Exercise 1

* Can you make the canvas larger? 
* Can you make the canvas rectangular rather than square?
* Can you make the line draw only halfway across the original canvas?
* Are you able to draw a vertical line? What about drawing 2 lines?

## Playing with shapes

From now on, unless we're changing more of the file, I'm going to list code 