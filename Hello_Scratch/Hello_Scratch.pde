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
  float posX, posY, radian;
  int radius = width + (width/2);  // radius = 150
  
  Arrow() {
  }
  
  void create() {
    radian = atan2(height-mouseY, width-mouseX);
    posY = width - (this.radius * sin(radian));
    posX = height - (this.radius * cos(radian));
    
    line(posX, posY, width, height);
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
