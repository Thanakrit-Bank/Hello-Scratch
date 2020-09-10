class Parrot {
  float posX, posY;
  int size;
  
  Parrot(int tempSize) {
    size = tempSize;
  }
  
  void create() {
    posX = mouseX;
    posY = mouseY;
    ellipse(posX, posY, size, size);
  }
}

class Arrow {
  float posX, posY, radian, leftHeadX, leftHeadY, rightHeadX, rightHeadY;
  int arrowLength = 150;
  int arrowheadLength = 40;
  
  void create() {
    
    // middle line of arrow
    radian = atan2(height-mouseY, width-mouseX);
    posY = (width-20) - (this.arrowLength * sin(radian)); // y = length x sin(angle)
    posX = (height-20) - (this.arrowLength * cos(radian)); // x = length x cos(angle)
    line(posX, posY, width-20, height-20);
    
    // left head of arrow : -15 degrees
    leftHeadY = (width-20) - ((this.arrowLength - this.arrowheadLength) * sin(radian-radians(15)));  
    leftHeadX = (height-20) - ((this.arrowLength - this.arrowheadLength) * cos(radian-radians(15)));
    line(posX, posY, leftHeadX, leftHeadY);
    
    // right head of arrow : +15 degrees
    rightHeadY = (width-20) - ((this.arrowLength - this.arrowheadLength) * sin(radian+radians(15)));
    rightHeadX = (height-20) - ((this.arrowLength - this.arrowheadLength) * cos(radian+radians(15)));
    line(posX, posY, rightHeadX, rightHeadY);
  }
}

Parrot p1 = new Parrot(80);
Arrow a1 = new Arrow();

void setup() {
  size(640,640);
}

void draw() {
  background(255);
  p1.create();
  a1.create();
}
