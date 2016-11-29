class WaveGraph
{  
  int xspacing = 1;//closesness together of the ellipses that make the graph
  int w = width;

  float theta = 0;//starting angle
  float amplitude = 60;  // Height of wave
  float period = 300;  // How many pixels before the wave repeats
  float dx = ((TWO_PI) / period) * xspacing; 
  float[] yvalues  = new float[w/xspacing];

  void calcWave(float tr) {
    theta += tr;
    float x = theta;
    for (int i = 0; i < yvalues.length; i++) 
    {
      yvalues[i] = sin(x)*amplitude;
      x+=dx;
    }
  }

  //function for normal sine wave
  void renderWave(color c) {
    noStroke();
    fill(c);
    for (int x = 0; x < yvalues.length; x++) {
      ellipse(x*xspacing, (height)-100+yvalues[x], 10, 10);
    }
  }

  //function for danger sine waves
  void renderWave2(color c) {
    noStroke();
    fill(c);
    for (int x = 0; x < yvalues.length; x++) {
      ellipse(x*xspacing*2, (height)-100+yvalues[x], 10, 10);
    }
    for (int x = 0; x < yvalues.length; x++) {
      ellipse(x*xspacing*4, (height)-100+yvalues[x], 10, 10);
    }
  }

  void displayWave() {
    //speed up graph if mouse is in danger box
    if (mouseY>((height/8)*5.75)&& mouseY<(height/8*5.75)+30)
    {
      calcWave(.2);
      renderWave(color(random(50, 250), random(50, 100), random(200, 250)));
      renderWave2(color(random(50, 250), random(50, 100), random(200, 250)));

      textFont(createFont("Stencil", 80));
      textAlign(CENTER);
      fill(color(random(50, 250), random(50, 100), random(200, 250)));
      text("DANGER", width/5, 70);
    } 
    //normal calm sine wave
    else
    {

      textFont(createFont("Stencil", 80));
      fill(57, 255, 20);
      textAlign(CENTER);
      text("SYSTEMS OKAY", width/3, 70);

      calcWave(.08);
      renderWave(color(57, 255, 20));
    }
  }
}