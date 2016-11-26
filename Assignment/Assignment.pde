/*   Processing Assignment To create SciFi UI
 Daragh Browne
 C15396706
 */

void setup()
{
  size(800, 800);
  background(0);
  smooth();
  
  float cx1 = width/2, cy1 = height/2;
  load1 = new LoadCircles(cx1, cy1, radius1);
  clock1 = new Clock(40, (width/5)*4, (height/5)*.5);
  wave1 = new WaveGraph();
}

float radius1 = 150;
LoadCircles load1;
Clock clock1;
WaveGraph wave1;
int frame;
int gameState = 2;

void draw()
{
  if(gameState==1)
  {
    background(0);
    load1.display();
    load1.rotateCircle();
    load1.loadText();
    load1.loadBoxes();
  }
  if(gameState==2)
  {
    background(0);
    clock1.display();
    
    rect(10,(height/8)*5.75,80,30);
    
    //speed up graph if mouse is in danger box
    if((mouseX>10&& mouseX<90)&&(mouseY>((height/8)*5.75)&& mouseY<(height/8*5.75)+30))
    {
      fill(color(random(50,250),random(50,100), random(200,250)));
      rect(10,(height/8)*5.75,80,30);
      wave1.calcWave(.2);
      wave1.renderWave(color(random(50,250),random(50,100), random(200,250)));
      wave1.renderWave2(color(random(50,250),random(50,100), random(200,250)));
    }
    else
    {
      fill(57,255, 20);
      rect(10,(height/8)*5.75,80,30);
      wave1.calcWave(.08);
      wave1.renderWave(color(57,255, 20));
    }
  }
 
}