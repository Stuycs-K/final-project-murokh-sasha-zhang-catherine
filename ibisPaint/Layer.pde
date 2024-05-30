public class Layer {
  color colour;
  boolean started;
  int startX,startY;
  int BRUSH = 0;
  int ERASER = 1;
  int SHAPE1 = 2;
  int FILTER = 3;
  int IMAGE1 = 4;
  
  public Layer(){
    loadPixels();
    started = false;
  }
  public void setColor(color colour){
    this.colour = colour;
  }
  public color getColor(){
    return this.colour;
  }
  public void paint(int toolSelected) {
    if (toolSelected == BRUSH) {
      Brush brush = new Brush(colour,5);//
      brush.clicks();
    }
    if (toolSelected == ERASER) {
      Erase erase = new Erase(5);
      erase.clicks();
    }
  }
  public void dragged(int toolSelected) {
    if (toolSelected == BRUSH) {
      Brush brush = new Brush(colour,5);//
      brush.drag();
    }
    if (toolSelected == ERASER) {
      Erase erase = new Erase(5);
      erase.drag();
    }
  }
  
  public void shapeDragger(int toolSelected) {
    if (toolSelected == SHAPE1) {
      if (started) {
        Shape shape = new Shape(colour,startX,startY);
        shape.clicks();
        started = !started;
      }
      else {
        startX = mouseX;
        startY = mouseY;
        started = !started;
      }
    }
  }
}
