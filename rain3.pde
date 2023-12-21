float ptim;
float ctim;

class Rain {
  float a, b, c, d;

  Rain(int x, int y) {
    this.a = x;
    this.b = y;
    this.c = x;
    this.d = y;
  }

  void drawRain() {
      stroke(random(20, 120), 100, 100);
      strokeWeight(1);
      line(a, b, c, d);
      a = a+random(-5, 5);
      b = b+random(-5, 5);
      c = c+random(-5, 5);
      d = d+random(-5, 5);
     if (a > width) a = width-a;
     if (c > width) c = width-c;
     if (b > height) b = height-b;
     if (d > height) d = height-d; 
  }
}

Rain[] myRain;

void setup() {
  size(960, 540);


  myRain = new Rain [1000];

  for (int i = 0; i < 1000; i++) {
    myRain[i] = new Rain(int(random(width)), int(random(height)));
  }
}

void draw() {

  
  for (int i = 0; i < 1000; i++) {
    myRain[i].drawRain();
  }
}

