public class Layer {
  color colour;
  public Layer(){
    loadPixels();
  }
  public void paint(int toolSelected) {
    if (toolSelected == 0) {
      colour = color(0);
      Brush brush = new Brush(colour);
      brush.stroke();
    }
    if (toolSelected == 1) {
      Erase erase = new Erase();
      erase.stroke();
    }
  }
  public void dragged(int toolSelected) {
    if (toolSelected == 0) {
      colour = color(0);
      Brush brush = new Brush(colour);
      brush.drag();
    }
    if (toolSelected == 1) {
      Erase erase = new Erase();
      erase.drag();
    }
  }
}
