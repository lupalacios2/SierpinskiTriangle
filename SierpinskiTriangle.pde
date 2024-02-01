private boolean isTriangle = true; 

public void setup() {
  size(500, 500);
  noLoop();
}

public void draw() {
  background(255);
  
  if (isTriangle) {
    sierpinskiTriangle(0, 0, width);
  } else {
    hawaiianEarring(width/2, height/2, width);
  }
}

public void mouseDragged() {
  redraw();
}

public void keyPressed() {
  if (key == ' ') {
    isTriangle = !isTriangle;
    redraw();
  }
}

public void sierpinskiTriangle(int x, int y, int len) {
  fill((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256)); 
  strokeWeight(3); 

  if (len <= 20) {
    triangle(x, y + height, x + len/2, y - len + height, x + len, y + height);
  } else {
    sierpinskiTriangle(x, y, len/2); 
    sierpinskiTriangle(x + len/2, y, len/2); 
    sierpinskiTriangle(x + len/4, y - len/2, len/2);
  }
}

public void hawaiianEarring(int x, int y, int len) {
  fill((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256)); 
  stroke(0); 
  strokeWeight(3);
    
  if (len <= 20) {
    ellipse(x, y, len, len);
  } else {
    ellipse(x, y, len, len);
    hawaiianEarring(x/2, y, len/2);
  }
}
