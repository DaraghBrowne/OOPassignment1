class PageSetup
{
  void display()
  {
    fill(200,200,200);
    rect(0,(height/8),width,30);
    rect(width*1/5,(height/8),30,height-((height/8)+(height/8)*2.25));
    rect(width*4/5-30,(height/8),30,height-((height/8)+(height/8)*2.25));
  }
  
}