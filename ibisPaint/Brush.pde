public class Brush{
  color colour;
  public Brush(color initialColour){
    colour = initialColour;
  }
  public void stroke() {
     set(mouseX,mouseY,colour);
  }
}
