public class Brush{
  color colour;
  int thickness;
  public Brush(color initialColour,int initialThickness){
    colour = initialColour;
    thickness = initialThickness/2;
  }
  public void clicks() {
    loadPixels();
    for (int i=(thickness*-1);i<=thickness;i++){
      for (int j=(thickness*-1);j<=thickness;j++) {
        pixels[(mouseY+i)*1400+(mouseX+j)] = colour;
      }
    }
    updatePixels();
  }
  public void drag() {
    loadPixels();
    for (int i=(thickness*-1);i<=thickness;i++){
      for (int j=(thickness*-1);j<=thickness;j++) {
        pixels[(mouseY+i)*1400+(mouseX+j)] = colour;
      }
    }
    updatePixels();
  }
}
