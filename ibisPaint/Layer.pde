public class Layer {
  color colour;
  boolean clicked;
  int startX,startY;
  
  public Layer(){
    loadPixels();
    clicked = false;
  }
  public void setColor(color colour){
    this.colour = colour;
  }
  public color getColor(){
    return this.colour;
  }
  public void paint(int toolSelected) {
    if (toolSelected == 0) {
      Brush brush = new Brush(colour);
      brush.clicks();
    }
    if (toolSelected == 1) {
      Erase erase = new Erase();
      erase.clicks();
    }
    if (toolSelected == 2) {
      if (clicked) {
        Shape shape = new Shape(colour,startX,startY);
        shape.clicks();
        clicked = !clicked;
      }
      else {
        startX = mouseX;
        startY = mouseY;
        clicked = !clicked;
        ///////POTENTIALLY ADD SOMETHING TO THE MOUSE TO SHOW THAT A LINE IS BEING DRAGGED FROM STARTING POINT
      }
    }
  }
  public void dragged(int toolSelected) {
    if (toolSelected == 0) {
      Brush brush = new Brush(colour);
      brush.drag();
    }
    if (toolSelected == 1) {
      Erase erase = new Erase();
      erase.drag();
    }
  }
}
