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
int gameState = 1;

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
    wave1.calcWave();
    wave1.renderWave();
  }
 
}