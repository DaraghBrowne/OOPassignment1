class LoadCircles
{
  float cx, cy;
  float px, py;
  float radius;
  float angle;
  float frequency = 3;
  PFont f = createFont("Stencil", 60); //Create Font;
  int bx = 20;
  int by = 40;

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
    angle += frequency;
  }

  void loadText() {
    textFont(f);
    textAlign(CENTER);
    fill(95, 255, 245);
    text("LOADING...", width/2, 150);
  }

  void loadBoxes() {
    fill(95, 255, 245);
    rect(00, 600, bx, by);
    bx += 2;
    if (bx>=width) {
      text("ANY KEY TO CONTINUE", width/2, (height/10)*9);
      
      if(keyPressed==true)
      {
      gameState = 2;
      }
    }
  }
}