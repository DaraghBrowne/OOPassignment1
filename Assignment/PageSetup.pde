class PageSetup
{
  void display()
  {
    //border lines
    fill(200, 200, 200);
    rect(0, (height/8), width, 30);
    rect(width*1/5, (height/8), 30, height-((height/8)+(height/8)*2.25));
    rect(width*4/5-30, (height/8), 30, height-((height/8)+(height/8)*2.25));
  }

  void leftSide()
  {

    noStroke();
    float barWidth = (width*1/5)/6+.5;
    fill(0, map(j,0,6,0,255), 255);
    rect(j*barWidth, (height/8)+30, barWidth, 445*(j+1)/6 );
  }
  
  void rightSide()
  {
  pushMatrix();
  fill(255);
  translate(width*0.9, height*0.3);
  rotate(frameCount / 60.0);
  star(0, 0, 80, 85, int(random(10,30))); 
  popMatrix();
  
  pushMatrix();
  fill(map(mouseY,0,height,0,255),map(mouseX,0,width,0,255),150);
  translate(width*0.9, height*0.3);
  rotate(frameCount / 60.0);
  star(0, 0, 40, 50, 15); 
  popMatrix();
  
  pushMatrix();
  fill(255);
  translate(width*0.9, height*0.6);
  rotate(frameCount / 60.0);
  star(0, 0, 80, 85, int(random(10,30))); 
  popMatrix();
  
  pushMatrix();
  fill(map(mouseX,0,height,0,255),map(mouseY,0,width,0,255),150);
  translate(width*0.9, height*0.6);
  rotate(frameCount / 60.0);
  star(0, 0, 40, 50, 15); 
  popMatrix();
  }
  
  void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
}