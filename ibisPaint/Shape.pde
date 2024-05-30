public class Shape {
  color colour;
  int shapeSelected;
  int STRAIGHT=0;
  int CIRCLE=1;
  int RECTANGLE=2;
  int startX;
  int startY;
  public Shape(color initialColour, int x,int y) {
    colour = initialColour;
    startX=x;
    startY=y;
    shapeSelected=STRAIGHT;
  }
  public void popout() {
//
  }
  public void clicks() {
    stroke(colour);
    if (shapeSelected ==STRAIGHT){
      line(startX,startY,mouseX,mouseY); 
    }
    if (shapeSelected ==RECTANGLE){
      rect(startX,startY,mouseX,mouseY); 
    }
    if (shapeSelected ==CIRCLE){
      float diameter = (float) Math.sqrt(Math.pow(mouseX-startX,2) + Math.pow(mouseY-startY,2)) *2;
      ellipse(startX,startY,diameter,diameter); 
    }
    
  }
  public void drag() {
    line(startX,startY,mouseX,mouseY); 
  }
}
