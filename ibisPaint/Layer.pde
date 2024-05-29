public class Layer {
  color colour;
  public Layer(){
    loadPixels();
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
      brush.stroke();
    }
    if (toolSelected == 1) {
      Erase erase = new Erase();
      erase.stroke();
    }
    if (toolSelected == 2) {
      Shape shape = new Shape(colour);
      shape.stroke();
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
