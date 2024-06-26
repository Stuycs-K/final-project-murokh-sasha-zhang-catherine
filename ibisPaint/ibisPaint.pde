int layerSelected;
Layer layer1, layer2, layer3;
int toolSelected;
int stickerSelected;
static int BRUSH = 0;
static int ERASER = 1;
static int SHAPE1 = 2;
static int FILTER = 3;
static int IMAGE1 = 4;
static boolean notBroken;


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
        deleteShapeMenu();
        drawToolSlider();
      }
      if(mouseX>140 && mouseX<220){
        toolSelected = ERASER;
        deleteShapeMenu();
        deleteStickerSheet();
        drawToolSlider();
      }
      if(mouseX>220 && mouseX<300){
        toolSelected = SHAPE1;
        drawShapeMenu();
        drawShapeToolSlider();
      }
      if(mouseX>300 && mouseX<380){
        toolSelected = IMAGE1;
        deleteShapeMenu();
        drawStickerSheet();
      }
      if(mouseX>380 && mouseX<460){
        toolSelected = FILTER;
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
    strokeWeight(1);
    fill(200,200,200);
    rect(0, 0, 1400, 800);
    fill(255);
    stroke(0);
    drawBackground();
    drawColourSwatches();
    drawToolBar();
  }
  /////THIS IS WHERE SAVE GOES
  if(mouseX>480 && mouseX<680 && mouseY>712 && mouseY<732 &&
  (toolSelected == BRUSH || toolSelected == ERASER)){
    curLay.setThickness(mouseX % 50);
  }
  if(mouseX>780 && mouseX<980 && mouseY>712 && mouseY<732 && toolSelected == SHAPE1){
    curLay.setThickness(mouseX % 50);
  }
  PImage sticker1 = loadImage("sticker (1).png");
  PImage sticker2 = loadImage("sticker (2).png");
  PImage sticker3 = loadImage("sticker (3).png");
  PImage sticker4 = loadImage("sticker (4).png");
  PImage sticker5 = loadImage("sticker (5).png");
  PImage sticker6 = loadImage("sticker (6).png");
  PImage sticker7 = loadImage("sticker (7).png");
  PImage sticker8 = loadImage("sticker (8).png");
  PImage sticker9 = loadImage("sticker (9).png");
  PImage sticker10 = loadImage("sticker (10).png");
  if(mouseX>260 && mouseX<300 && mouseY>65 && mouseY<135){
    stickerSelected = 1;
    fill(255);
    rect(500, 685, 150, 80);
    fill(0);
    textSize(20);
    text("selected sticker:", 500, 705);
    sticker1.resize(70, 70);
    image(sticker1, 500, 695);
  }
  if(mouseX>330 && mouseX<370 && mouseY>65 && mouseY<135){
    stickerSelected = 2;
    rect(500, 685, 150, 80);
    fill(0);
    textSize(20);
    text("selected sticker:", 500, 705);
    sticker2.resize(70, 70);
    image(sticker2, 500, 695);
  }
  if(mouseX>390 && mouseX<430 && mouseY>65 && mouseY<135){
    stickerSelected = 3;
    rect(500, 685, 150, 80);
    fill(0);
    textSize(20);
    text("selected sticker:", 500, 705);
    sticker3.resize(70, 70);
    image(sticker3, 500, 695);
  }
  if(mouseX>260 && mouseX<300 && mouseY>140 && mouseY<215){
    stickerSelected = 4;
    rect(500, 685, 150, 80);
    fill(0);
    textSize(20);
    text("selected sticker:", 500, 705);
    sticker4.resize(70, 70);
    image(sticker4, 500, 695);
  }
  if(mouseX>330 && mouseX<370 && mouseY>140 && mouseY<215){
    stickerSelected = 5;
    rect(500, 685, 150, 80);
    fill(0);
    textSize(20);
    text("selected sticker:", 500, 705);
    sticker5.resize(70, 70);
    image(sticker5, 500, 695);
  }
  if(mouseX>390 && mouseX<430 && mouseY>140 && mouseY<215){
    stickerSelected = 6;
    rect(500, 685, 150, 80);
    fill(0);
    textSize(20);
    text("selected sticker:", 500, 705);
    sticker6.resize(70, 70);
    image(sticker6, 500, 695);
  }
  if(mouseX>250 && mouseX<300 && mouseY>230 && mouseY<260){
    stickerSelected = 7;
    rect(500, 685, 150, 80);
    fill(0);
    textSize(20);
    text("selected sticker:", 500, 705);
    sticker7.resize(70, 70);
    image(sticker7, 500, 695);
  }
  if(mouseX>320 && mouseX<340 && mouseY>230 && mouseY<245){
    stickerSelected = 8;
    rect(500, 685, 150, 80);
    fill(0);
    textSize(20);
    text("selected sticker:", 500, 705);
    sticker8.resize(70, 70);
    image(sticker8, 500, 695);
  }
  if(mouseX>320 && mouseX<340 && mouseY>255 && mouseY<260){
    stickerSelected = 9;
    rect(500, 685, 150, 80);
    fill(0);
    textSize(20);
    text("selected sticker:", 500, 705);
    sticker9.resize(70, 70);
    image(sticker9, 500, 695);
  }
  if(mouseX>350 && mouseX<370 && mouseY>230 && mouseY<235){
    stickerSelected = 10;
    rect(500, 685, 150, 80);
    fill(0);
    textSize(20);
    text("selected sticker:", 500, 705);
    sticker10.resize(70, 70);
    image(sticker10, 500, 685);
  }
  if(toolSelected == IMAGE1){
    fill(0);
    textSize(20);
    text("selected sticker:" + stickerSelected, 500, 705);
    if(stickerSelected == 1){
      image(sticker1, mouseX, mouseY);
    }
    if(stickerSelected == 2){
      image(sticker2, mouseX, mouseY);
    }
    if(stickerSelected == 3){
      image(sticker3, mouseX, mouseY);
    }
    if(stickerSelected == 4){
      image(sticker4, mouseX, mouseY);
    }
    if(stickerSelected == 5){
      image(sticker5, mouseX, mouseY);
    }
    if(stickerSelected == 6){
      image(sticker6, mouseX, mouseY);
    }
    if(stickerSelected == 7){
      image(sticker7, mouseX, mouseY);
    }
    if(stickerSelected == 8){
      image(sticker8, mouseX, mouseY);
    }
    if(stickerSelected == 9){
      image(sticker9, mouseX, mouseY);
    }
    if(stickerSelected == 10){
      image(sticker10, mouseX, mouseY);
    }
  }
  if(mouseX>250 && mouseX<260 && mouseY>51 && mouseY<61 && toolSelected == IMAGE1){
    deleteStickerSheet();
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
    notBroken = true;
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
    notBroken = false;
  }
  else if (notBroken) {
    if (layerSelected==1){
      layer1.shapeDragger(-1);
    }
    if (layerSelected==2){
      layer2.shapeDragger(-1);
    }
    if (layerSelected==3){
      layer3.shapeDragger(-1);
    }
  }
  //if(mouseX>10 && mouseX < 210 && mouseY>595 && mouseY < 685){
  //  rect(mouseX,mouseY,10,10);
  //}
}


void draw(){
  noStroke();
  fill(120, 120, 120);
  rect(50, 0, 50, 50);
  textSize(15);
  color c = layer1.getColor();
  fill(c);
  text(mouseX, 50, 10);
  text(mouseY, 50, 35);
  text(layer1.getThickness(),50,50);
  if(mouseX>480 && mouseX<680 && mouseY == 722 && 
  (toolSelected == BRUSH || toolSelected == ERASER)){
    String curTool = "";
    if(toolSelected == BRUSH){
      curTool = "brush";
    }
    if(toolSelected == ERASER){
      curTool = "eraser";
    }
    drawToolSlider();
    circle(mouseX, mouseY, 5);
    fill(99, 99, 99);
    textSize(20);
    rect(480,680, 200, 20);
    fill(0);
    text(curTool + "Size: " + layer1.getThickness(), 480, 700);
  }
  if(mouseX>780 && mouseX<980 && mouseY==722 && 
  toolSelected == SHAPE1){
    drawToolSlider();
    circle(mouseX, mouseY, 5);
    fill(99, 99, 99);
    textSize(20);
    rect(780,680, 200, 20);
    fill(0);
    text("shapeSize: " + layer1.getThickness(), 780, 700);
  }
}

void drawBackground(){
  rect(50,50,1100,600);
  rect(1200,50,150,600);
  fill(99, 99, 99);
  rect(50,675,1300,100);
  PImage clear = loadImage("clear.png");
  clear.resize(80,80);
  image(clear, 1280, -15);
  PImage save = loadImage("save.png");
  save.resize(60,60);
  image(save, 1200, 0);
}

void drawColourSwatches(){
  PImage colorWheel = loadImage("colorWheel.png");
  colorWheel.resize(60, 60);
  image(colorWheel, 1285, 128);
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
  noStroke();
  fill(99, 99, 99);
  rect(460,685,540,80);
}

void drawToolSlider(){
  stroke(0);
  fill(190,190,190);
  rect(480,700,200,45);
  strokeWeight(2);
  line(500,722,660,722);
}

void drawShapeToolSlider(){
  stroke(0);
  fill(190,190,190);
  rect(780,700,200,45);
  strokeWeight(2);
  line(800,722,960,722);
}

void drawStickerSheet(){
  PImage stickerSheet = loadImage("stickerSheet.png");
  image(stickerSheet, 250, 51);
  fill(255);
  rect(500, 685, 150, 80);
  fill(0);
  textSize(20);
  text("selected sticker:", 500, 705);
  fill(255, 0, 0);
  rect(250, 51, 10, 10);
}
void deleteStickerSheet(){
  noStroke();
  fill(255);
  rect(250,51,420, 594);
}
