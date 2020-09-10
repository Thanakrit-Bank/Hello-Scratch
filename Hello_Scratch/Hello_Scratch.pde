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
  float posX, posY;
  
  Arrow() {
  }
  
  void create() {
    posX = mouseX - width/2;
    posY = mouseY - height/2;
    translate(width,height);
    line(0, 0, posX, posY);
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
