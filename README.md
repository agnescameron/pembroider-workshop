This is the written version of an embroidery workshop in the CCI, and can either accompany the live workshop or be worked through by itself. As we go through the exercises, it's a good idea to have the [PEmbroider Cheat Sheet](https://github.com/CreativeInquiry/PEmbroider/blob/master/PEmbroider_Cheat_Sheet.md) open in a tab for reference. These notes are heavily adapted from the cheat sheet.

Copies of the files used for each of the exercises that can be downloaded [here](https://github.com/agnescameron/pembroider-workshop), but I'd recommend trying to generate the files yourself where possible.

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

When you run this file, you should see an output that looks like this (if you *don't* see this, you will want to check over the setup steps again):

[![](https://wiki.cci.arts.ac.uk/uploads/images/gallery/2022-08/scaled-1680-/oNeiDiDCFCcp0wjG-image-1660208322307-58-38.png)](https://wiki.cci.arts.ac.uk/uploads/images/gallery/2022-08/oNeiDiDCFCcp0wjG-image-1660208322307-58-38.png)

The pink dots represent the ends of stitches, where the needle enters the fabric. Shortly we will experiment with different stitch types and lengths, but for now we are using the default settings.

The first thing we will look at is the structure of the canvas. If you like, you can also try 'commenting out' the content line, to just see a plain canvas.

### Exercise 1.1

* Can you make the canvas larger? 
* Can you make the canvas rectangular rather than square?

Now we will look at lines. The PEmbroider code for drawing a line is:

```
E.line(x1, y1, x2, y2);
```

This means that (x1, y1) is the coordinates of the point where the line starts, and (x2, y2) is the point where the line ends. The `E.line()` part means "use the line function that belongs to PEmbroider, which is represented in our code by the letter E". We call this a 'method' In our code, we get a diagonal line because we draw from the point (0, 0) to the point (600, 600) (the edge of the canvas).

### Exercise 1.2
* Can you make the line draw only halfway across the original canvas?
* Are you able to draw a vertical line? What about drawing 2 lines?

## Playing with shapes

From now on, unless we're changing more of the file, I'm going to list just the 'content' code that we're changing, using `...` to represent the rest of the file. In our last exercise, the content was a single line -- the `E.line()` method -- but it can be more -- the important part is that it goes in the same place in the file each time.

Try changing out the line for a circle:

```
...

E.circle(200, 200, 200)
...
```

You should see a slightly off-center circle. In the documentation, the `E.circle()` method is listed as:

```
E.circle(x, y, r);
```

### Exercise 2.1
* What do you think `r` represents in this method?
* Can you place the circle in the center of the canvas? What about a circle that fills the whole canvas?
* The PEmbroider method for drawing a rectangle is `E.rect(x, y, w, h);`. Can you replace the circle-drawing line with a line that draws a rectangle instead? What do you think `w` and `h` represent?

PEmbroider also has good support for merging and joining composite shapes. This can quickly allow us to create more complex drawings. In this example, we merge together 2 circles:

```java
// Merge two circles into a peanut shape
E.beginComposite();
  E.composite.circle(320, 250, 200);
  E.composite.circle(420, 250, 200);
  // add more, etc. ...
E.endComposite(); 
```

### Exercise 2.2
* Experiment with changing the size and the position of the circles. What happens when you make one of the circles very large?
* Try adding a third circle. Can you make a clover shape? What about a snowman?
* What happens when you add `E.composite.circle(420, 250, 200);` after the line `E.endComposite();`? Why do you think that happened?
* Can you make a composite from a rectangle and a circle? Do you need to add anything to the original rectangle-drawing method?
* The PEmbroider method for drawing a triangle is `E.triangle(x1, y1, x2, y2, x3, y3);`. Can you make a composite shape from a triangle and a circle?

