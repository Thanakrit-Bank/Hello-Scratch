class Parrot {
  int size;
  
  Parrot(int tempSize) {
    size = tempSize;
  }
  
  void create() {
    ellipse(mouseX, mouseY, size, size);
  }
}

class Arrow {
  float posX, posY;
  
  Arrow(float tempX, float tempY) {
    posX = tempX;
    posY = tempY;
  }
  
  void create() {
    line(width,height,width-100,height-100);
  }
}

Parrot p1 = new Parrot(80);
Arrow a1 = new Arrow(100,100);

void setup() {
  size(400,400);
}

void draw() {
  background(255);
  p1.create();
  a1.create();
}
