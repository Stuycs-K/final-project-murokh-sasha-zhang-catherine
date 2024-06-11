public class Layer {
  color colour;
  boolean started;
  int startX,startY;
  int BRUSH = 0;
  int ERASER = 1;
  int SHAPE1 = 2;
  int FILTER = 3;
  int IMAGE1 = 4;
  int thickness;
  int shapeSelect;
  
  public Layer(){
    loadPixels();
    started = false;
    thickness = 10;
    colour = color(0);
  }
  public void setColor(color colour){
    this.colour = colour;
  }
  public color getColor(){
    return this.colour;
  }
  public void setThickness(int thicc){
    thickness = thicc;
  }
  public int getThickness(){
    return thickness;
  }
  public void paint(int toolSelected) {
    if (toolSelected == BRUSH) {
      Brush brush = new Brush(colour,thickness);
      brush.clicks();
    }
    if (toolSelected == ERASER) {
      Erase erase = new Erase(thickness);
      erase.clicks();
    }
    if (toolSelected == FILTER) {
      
      Filter filter1 = new Filter();
      filter1.setFilter();
    }
  }
  public void dragged(int toolSelected) {
    if (toolSelected == BRUSH) {
      Brush brush = new Brush(colour,thickness);
      brush.drag();
    }
    if (toolSelected == ERASER) {
      Erase erase = new Erase(thickness);
      erase.drag();
    }
  }
  
  public void shapeDragger(int toolSelected) {
    if (toolSelected == SHAPE1) {
      if (started) {
        Shape shape = new Shape(colour,startX,startY,thickness,shapeSelect);
        shape.clicks();
        started = !started;
      }
      else {
        startX = mouseX;
        startY = mouseY;
        started = !started;
      }
    }
    if (toolSelected == -1) {
      started = false;
      System.out.println("hi");
    }
  }
  
  public void setShape(int shapeFr){
    shapeSelect = shapeFr;
  }
}
