public class Shape {
  color colour;
  int shapeSelected;
  int STRAIGHT=0;
  int CIRCLE=1;
  int RECTANGLE=2;
  int startX,startY;
  int thickness;
  public Shape(color initialColour, int x,int y,int initialThickness,int initialShape) {
    colour = initialColour;
    startX=x;
    startY=y;
    shapeSelected=initialShape;
    thickness = initialThickness;
  }
  public void popout() {
//
  }
  public void clicks() {
    stroke(colour);
    if (shapeSelected ==STRAIGHT){
      strokeWeight(thickness);
      line(startX,startY,mouseX,mouseY); 
    }
    if (shapeSelected ==RECTANGLE){
      rect(startX,startY,mouseX-startX,mouseY-startY); 
    }
    if (shapeSelected ==CIRCLE){
      float radius = (float) Math.sqrt(Math.pow(mouseX-startX,2) + Math.pow(mouseY-startY,2));
      ellipse(Math.abs((mouseX+startX)/2),Math.abs((mouseY+startY)/2),radius,radius); 
    }
    
  }
}
