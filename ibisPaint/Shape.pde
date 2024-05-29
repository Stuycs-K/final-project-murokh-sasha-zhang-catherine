public class Shape {
  color colour;
  int shapeSelected;
  int STRAIGHT=0;
  int CIRCLE=1;
  int RECTANGLE=2;
  boolean clicked;
  int startX;
  int startY;
  public Shape(color initialColour) {
    colour = initialColour;
    clicked = false;
  }
  public void popout() {
    //deal with pixels
    shapeSelected=0; //temp
  }
  public void stroke() {
    loadPixels();
    if (clicked = true) {
      ///make a line or whatever based on shapesleected
    }
    else {
      clicked = true;
    }
    updatePixels();
  }
  public void drag() {
    loadPixels();
    //yes
    updatePixels();
  }
}
