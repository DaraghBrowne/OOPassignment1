class WaveGraph
{  
  int xspacing = 2;
  int w = width;
  
  float theta = 0.0;//starting angle
  float amplitude = 45.0;  // Height of wave
  float period = 300.0;  // How many pixels before the wave repeats
  float dx = (TWO_PI / period) * xspacing; 
  float[] yvalues  = new float[w/xspacing];

  void calcWave() {
    theta += 0.06;
    float x = theta;
    for (int i = 0; i < yvalues.length; i++) {
      yvalues[i] = sin(x)*amplitude;
      x+=dx;
    }
  }

  void renderWave() {
    noStroke();
    fill(255);
    for (int x = 0; x < yvalues.length; x++) {
      ellipse(x*xspacing, (height)-100+yvalues[x], 10, 10);
    }
  }
}