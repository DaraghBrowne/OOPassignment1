class LoadCircles
{
  float cx, cy;
  float px, py;
  float radius;
  float angle;
  float frequency = 3;

  LoadCircles(float cx, float cy, float radius) {
    this.cx = cx;
    this.cy = cy;
    this.radius =radius;
  }

  //Display simple circles
  void display() {
    strokeWeight(5);
    stroke(95, 255, 245);
    noFill();
    ellipse(cx, cy, radius*2, radius*2);

    fill(95, 255, 245);
    ellipse(cx, cy, (radius*2)/3, (radius*2)/3);
  }

  void rotateCircle() {
    //rotate a circle around outer cirlce
    px = cx + cos(radians(angle))*(radius);
    py = cy + sin(radians(angle))*(radius);
    noStroke();
    fill(0);
    ellipse (px, py, (radius*2)/3, (radius*2)/3);

    stroke(95, 255, 245);
    fill(95, 255, 245);
    ellipse (px, py, 40, 40);
    angle -= frequency;
  }
}