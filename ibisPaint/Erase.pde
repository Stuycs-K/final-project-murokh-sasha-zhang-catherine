public class Erase{
  color colour = color(255,255,255);
  int thickness;
  public Erase(int initialThickness){
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
