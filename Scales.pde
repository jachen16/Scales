void setup() {
  size(400, 400);
  background(0, 94, 217);
}

void draw()
{
  for (int y = 0; y < 450; y = y + 60) {
    for (int x = 0; x < 450; x = x + 60) {
      scale(x, y);
    }
  }
  for (int y = 30; y < 450; y = y + 60) {
    for (int x = 30; x < 450; x = x + 60) {
      scale(x, y);
    }
  }
}

void scale(int x, int y) {
  fill(0, 0, 0);
  noStroke();
  beginShape();
  curveVertex(x, y-30);
  curveVertex(x, y-30);
  curveVertex(x-15, y-5);
  curveVertex(x-30, y);
  curveVertex(x-15, y+5);
  curveVertex(x, y+30);
  curveVertex(x, y+30);
  endShape();
  beginShape();
  curveVertex(x, y-30);
  curveVertex(x, y-30);
  curveVertex(x+15, y-5);
  curveVertex(x+30, y);
  curveVertex(x+15, y+5);
  curveVertex(x, y+30);
  curveVertex(x, y+30);
  endShape(); 
  int diam = 0;
  float r = 0;
  noFill();
  while (diam < 25) {
    stroke(0, 0, r);
    ellipse(x, y, diam, diam);
    diam++;
    r+=255/30.0;
  }
}
