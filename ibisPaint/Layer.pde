public class Layer {
  color colour;
  public Layer(){
    loadPixels();
  }
  public void paint(int toolSelected) {
    if (toolSelected == 1) {
      loadPixels();
      colour = color(0);
      Brush brush = new Brush(colour);
      brush.stroke();
      updatePixels();
    }
  }
  public void update() {
    
  }
}
