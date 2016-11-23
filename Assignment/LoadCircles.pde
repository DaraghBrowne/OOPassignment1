class LoadCircles
{
  float cx, cy;
  float px, py;
  float radius;
  float angle;
  float frequency;
  
  LoadCircles(float cx, float cy, float radius){
      this.cx = cx;
      this.cy = cy;
      this.radius =radius;
  }
  
  void display(){
    strokeWeight(5);
    stroke(95, 255, 245);
    noFill();
    ellipse(cx, cy, radius*2, radius*2);
  
    fill(95, 255, 245);
    ellipse(cx, cy, (radius*2)/3, (radius*2)/3);
  }
}