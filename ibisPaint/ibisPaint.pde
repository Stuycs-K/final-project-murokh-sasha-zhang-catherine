int layerSelected;
Layer layer1, layer2, layer3;
int toolSelected;
static int BRUSH = 0;
static int ERASER = 1;
static int SHAPE1 = 2;
static int FILTER = 3;
static int IMAGE1 = 4;

void setup(){
  toolSelected = 1;
  layerSelected = 1;
  layer1 = new Layer();
  layer2 = new Layer();
  layer3 = new Layer();
  size(1400,800);
  drawBackground();
  drawColourSwatches();
  drawToolBar();
  
}

void mouseClicked() {
  if (mouseX>50 && mouseX <1150 && mouseY>50 && mouseY<650){
    if (layerSelected==1){
      layer1.paint(toolSelected);
    }
    if (layerSelected==2){
      layer2.paint(toolSelected);
    }
    if (layerSelected==3){
      layer3.paint(toolSelected);
    }
  }
  if (mouseX>50 && mouseX <1350 && mouseY>675 && mouseY<775){
    if(mouseY>685){
      if(mouseX>60 && mouseX<140){
        toolSelected = BRUSH;
        drawToolSlider();
        deleteShapeMenu();
      }
      if(mouseX>140 && mouseX<220){
        toolSelected = ERASER;
        deleteShapeMenu();
      }
      if(mouseX>220 && mouseX<300){
        toolSelected = SHAPE1;
        drawShapeMenu();
      }
      if(mouseX>300 && mouseX<380){
        toolSelected = FILTER;
        deleteShapeMenu();
      }
      if(mouseX>380 && mouseX<460){
        toolSelected = IMAGE1;
        deleteShapeMenu();
      }
      if(mouseX>460 && mouseX<540) {
        if (layerSelected==1){
          layer1.setShape(0);
        }
        if (layerSelected==2){
          layer2.setShape(0);
        }
        if (layerSelected==3){
          layer3.setShape(0);
        }
      }
      if(mouseX>540 && mouseX<620) {
        if (layerSelected==1){
          layer1.setShape(1);
        }
        if (layerSelected==2){
          layer2.setShape(1);
        }
        if (layerSelected==3){
          layer3.setShape(1);
        }
      }
      if(mouseX>620 && mouseX<700) {
        if (layerSelected==1){
          layer1.setShape(2);
        }
        if (layerSelected==2){
          layer2.setShape(2);
        }
        if (layerSelected==3){
          layer3.setShape(2);
        }
      }
    }
  }
  Layer curLay = new Layer();
  if (layerSelected==1){
      curLay = layer1;
    }
    if (layerSelected==2){
      curLay = layer2;
    }
    if (layerSelected==3){
      curLay = layer3;
    }
  if(mouseX>1200 && mouseX < 1350 && mouseY > 50 && mouseY < 650){
    if(mouseX>1220 && mouseX<1265){
      if(mouseY>70 && mouseY<108){
        color c = color(255, 0, 0);
        curLay.setColor(c);
      }
      if(mouseY>128 && mouseY<166){
        color c = color(255, 141, 0);
        curLay.setColor(c);
      }
      if(mouseY>186 && mouseY<224){
        color c = color(237, 255, 0);
        curLay.setColor(c);
      }
      if(mouseY>244 && mouseY<282){
        color c = color(28, 255, 0);
        curLay.setColor(c);
      }
      if(mouseY>302 && mouseY<340){
        color c = color(0, 255, 210);
        curLay.setColor(c);
      }
      if(mouseY>360 && mouseY<398){
        color c = color(0, 125, 255);
        curLay.setColor(c);
      }
      if(mouseY>418 && mouseY<456){
        color c = color(7, 0, 255);
        curLay.setColor(c);
      }
      if(mouseY>476 && mouseY<514){
        color c = color(156, 0, 255);
        curLay.setColor(c);
      }
      if(mouseY>534 && mouseY<572){
        color c = color(255, 0, 255);
        curLay.setColor(c);
      }
      if(mouseY>592 && mouseY<630){
        color c = color(255);
        curLay.setColor(c);
      }
      
    }
    if(mouseX<1330 && mouseX>1265){
      if(mouseY>70 && mouseY<108){
        color c = color(0);
        curLay.setColor(c);
      }
    }
  }
  if(mouseX>1280 && mouseY<50){
    fill(255);
    stroke(0);
    rect(50,50,1100,600);
  }
  if(mouseX>10 && mouseX<210 && mouseY>595 && mouseY < 685){
    curLay.setThickness(mouseX % 20);
  }
  
}

void mouseDragged(){
  if (mouseX>50 && mouseX <1150 && mouseY>50 && mouseY<650){
    if (layerSelected==1){
      layer1.dragged(toolSelected);
    }
    if (layerSelected==2){
      layer2.dragged(toolSelected);
    }
    if (layerSelected==3){
      layer3.dragged(toolSelected);
    }
  }
}

void mousePressed(){
  if (mouseX>50 && mouseX <1150 && mouseY>50 && mouseY<650){
    if (layerSelected==1){
      layer1.shapeDragger(toolSelected);
    }
    if (layerSelected==2){
      layer2.shapeDragger(toolSelected);
    }
    if (layerSelected==3){
      layer3.shapeDragger(toolSelected);
    }
  }
}

void mouseReleased(){
  if (mouseX>50 && mouseX <1150 && mouseY>50 && mouseY<650){
    if (layerSelected==1){
      layer1.shapeDragger(toolSelected);
    }
    if (layerSelected==2){
      layer2.shapeDragger(toolSelected);
    }
    if (layerSelected==3){
      layer3.shapeDragger(toolSelected);
    }
  }
  //if(mouseX>10 && mouseX < 210 && mouseY>595 && mouseY < 685){
  //  rect(mouseX,mouseY,10,10);
  //}
}


void draw(){
  noStroke();
  fill(99, 99, 99);
  rect(50, 0, 50, 50);
  textSize(15);
  color c = layer1.getColor();
  fill(c);
  text(mouseX, 50, 10);
  text(mouseY, 50, 35);
  text(layer1.getThickness(),50,50);
}

void drawBackground(){
  rect(50,50,1100,600);
  rect(1200,50,150,600);
  fill(99, 99, 99);
  rect(50,675,1300,100);
  PImage clear = loadImage("clear.png");
  clear.resize(80,80);
  image(clear, 1280, -15);
}

void drawColourSwatches(){
  fill(255, 0, 0);
  rect(1220,70,45,38);
  fill(255, 141, 0);
  rect(1220,128,45,38);
  fill(237, 255, 0);
  rect(1220,186,45,38);
  fill(28, 255, 0);
  rect(1220,244,45,38);
  fill(0, 255, 210);
  rect(1220,302,45,38);
  fill(0, 125, 255);
  rect(1220,360,45,38);
  fill(7, 0, 255);
  rect(1220,418,45,38);
  fill(156, 0, 255);
  rect(1220,476,45,38);
  fill(255, 0, 255);
  rect(1220,534,45,38);
  fill(255);
  rect(1220,592,45,38);
  fill(0);
  rect(1285,70,45,38);
}

void drawToolBar(){
  PImage icon = loadImage("brush_temp.png");
  image(icon,60,685);
  PImage icon1 = loadImage("eraser.png");
  image(icon1,140,685);
  PImage icon2 = loadImage("shape.png");
  image(icon2,220,685);
  PImage icon3 = loadImage("image.png");
  image(icon3,300,685);
  PImage icon4 = loadImage("filter.png");
  image(icon4,380,685);
}

void drawShapeMenu(){
  PImage icon5 = loadImage("line.png");
  image(icon5,460,685);
  PImage icon6 = loadImage("circle.png");
  image(icon6,540,685);
  PImage icon7 = loadImage("rectangle.png");
  image(icon7,620,685);
}

void deleteShapeMenu(){
  fill(99, 99, 99);
  rect(460,685,700,685);
}

void drawToolSlider(){
  int thicc = 1;
  stroke(0);
  fill(190,190,190);
  rect(10,595,200,90);
  fill(255, 0, 0);
  rect(5,590,10,10);
  strokeWeight(2);
  line(20,640,200,640);
  strokeWeight(1);
  fill(0);
  textSize(20);
  text("" + thicc, 20,620);
  rect(20,635,10,10);
  thicc++;
  text("" + thicc, 40,620);
  rect(40,635,10,10);
  thicc++;
  text("" + thicc, 60,620);
  rect(60,635,10,10);
  thicc++;
  text("" + thicc, 80,620);
  rect(80,635,10,10);
  thicc++;
  text("" + thicc, 100,620);
  rect(100,635,10,10);
  thicc++;
  text("" + thicc, 120,620);
  rect(120,635,10,10);
  thicc++;
  text("" + thicc, 140,620);
  rect(140,635,10,10);
  thicc++;
  text("" + thicc, 160,620);
  rect(160,635,10,10);
  thicc++;
  text("" + thicc, 180,620);
  rect(180,635,10,10);
  thicc++;
  text("" + thicc, 190,620);
  rect(190,635,10,10);
}
