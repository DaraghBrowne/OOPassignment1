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

   // for (int i = 0; i<5; i++ ) {
      noStroke();
      float barWidth = (width*1/5)/5;
      fill(random(80, 120), random(80, 120), random(80, 120));
      rect(j*barWidth, (height/8)+30, barWidth,400*(j+1)/5 );
   // }
  }
}