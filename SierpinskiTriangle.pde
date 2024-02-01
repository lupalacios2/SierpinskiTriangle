public void setup() {
  size(500, 500);
  background(255);
  noLoop();
}

public void draw() {
  sierpinski(0, 0, width);
}

public void mouseDragged() {
  redraw();
}

public void sierpinski(int x, int y, int len) {
  fill((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
  stroke(0);
  strokeWeight(1);

  if (len <= 20){
    triangle(x, y + height, x + len/2, y - len + height, x + len, y + height);
  } else {
    sierpinski(x, y, len/2);
    sierpinski(x + len/2, y, len/2);
    sierpinski(x + len/4, y - len/2, len/2);
  }
}
