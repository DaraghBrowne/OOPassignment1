/*   Processing Assignment To create SciFi UI
 Daragh Browne
 C15396706
 */

//some variables
float radius1 = 150;
int frame = 0;
int j= 0;

//create some class variables
LoadCircles load1;
Clock clock1;
WaveGraph wave1;
PageSetup page2;

//initial gamestate(starting screen)
int gameState = 1;

//text for loading screen
int textstate = 1;

//amount of arcs in orbiter & array of orbiter variables
int count = 15;
Orbiter[] orbiters = new Orbiter[count];


void setup()
{
  size(1000, 800);
  background(0);
  smooth();

  //center points for loading circles
  float cx1 = width/2, cy1 = height/2;

  //initialise different class variables
  load1 = new LoadCircles(cx1, cy1, radius1);
  clock1 = new Clock(60, (width/5)*4, (height/5)*.4);
  wave1 = new WaveGraph();
  page2 = new PageSetup();

  //for orbiter circles -> makes sure radii are evenly divided across the screen
  float radDiv = min(width, height);
  //array to initialise the array of orbiter variables
  for (int i = 1; i<=orbiters.length; i++) {
    Orbiter o = new Orbiter(width/2, (height/3)+85, random(360), random(90, 540), radDiv);
    o.radius = (radDiv * ((float)i/orbiters.length)/2);
    orbiters[i - 1] = o;
  }
}


void draw()
{
  //gameState 1 is for the "Loading" screen
  if (gameState==1)
  {
    background(0);
    load1.display();
    load1.rotateCircle();
    load1.loadText();
    load1.loadBoxes();
  }

  //gameState 2 is for "Main" screen
  if (gameState==2)
  {
    background(0);
    page2.display();
    page2.rightSide();
    page2.leftSide();

    noFill();
    for (Orbiter o : orbiters) {
      o.update();
      o.display();
    }

    clock1.display();
    wave1.displayWave();
    frame++;
  }
}//end of draw() method