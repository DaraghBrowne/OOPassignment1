/*   Processing Assignment To create SciFi UI
 Daragh Browne
 C15396706
 */

void setup()
{
  size(1000, 800);
  background(0);
  smooth();
  
  float cx1 = width/2, cy1 = height/2;
  load1 = new LoadCircles(cx1, cy1, radius1);
  clock1 = new Clock(40, (width/5)*4, (height/5)*.5);
  wave1 = new WaveGraph();
  page2 = new PageSetup();
  
  //for orbiter circles
  float radDiv = min(width, height);
  for (int i = 1; i<=orbiters.length; i++) {
    Orbiter o = new Orbiter(width/2, (height/3)+85, random(360), random(30, 180), random(90, 540), radDiv);
    o.radius = (radDiv * ((float)i/orbiters.length)/2);
    orbiters[i - 1] = o;
  }
}

float radius1 = 150;
int frame = 0;

LoadCircles load1;
Clock clock1;
WaveGraph wave1;
PageSetup page2;

//initial gamestate(starting screen)
int gameState = 2;

int count = 10;
Orbiter[] orbiters = new Orbiter[count];

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
    page2.display();
    
    noFill();
    for (Orbiter o : orbiters) {
    o.update();
    o.display();
    }
    
    
    clock1.display();
    wave1.displayWave();
    
    frame++;
  }
}