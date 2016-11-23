/*   Processing Assignment To create SciFi UI
 Daragh Browne
 C15396706
 */

void setup()
{
  size(800, 800);
  background(0);
  smooth();
  load1 = new LoadCircles(cx1, cy1, radius1);
}

float radius1 = 150;
float cx1 = 400, cy1 = 400;
LoadCircles load1;
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
    frame++;
  }
  if(gameState==2)
  {
    background(0);
  }
}