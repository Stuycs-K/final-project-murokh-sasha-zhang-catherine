public class Brush{
  color colour;
  public Brush(color initialColour){
    colour = initialColour;
  }
  public void clicks() {
    loadPixels();
    pixels[(mouseY)*1400+(mouseX)] = colour;
    pixels[(mouseY+1)*1400+(mouseX)] = colour;
    pixels[(mouseY-1)*1400+(mouseX)] = colour;
    pixels[(mouseY)*1400+(mouseX+1)] = colour;
    pixels[(mouseY)*1400+(mouseX-1)] = colour;
    updatePixels();
  }
  public void drag() {
    loadPixels();
    pixels[(mouseY)*1400+(mouseX)] = colour;
    pixels[(mouseY+1)*1400+(mouseX)] = colour;
    pixels[(mouseY-1)*1400+(mouseX)] = colour;
    pixels[(mouseY)*1400+(mouseX+1)] = colour;
    pixels[(mouseY)*1400+(mouseX-1)] = colour;
    updatePixels();
  }
}
