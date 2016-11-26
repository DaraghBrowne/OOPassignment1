class WaveGraph
{  
  int xspacing = 2;
  int w = width;
  
  float theta = 0.0;//starting angle
  float amplitude = 60.0;  // Height of wave
  float period = 300.0;  // How many pixels before the wave repeats
  float dx = ((TWO_PI) / period) * xspacing; 
  float[] yvalues  = new float[w/xspacing];

  void calcWave(float tr) {
    theta += tr;
    float x = theta;
    for (int i = 0; i < yvalues.length; i++) {
      yvalues[i] = sin(x)*amplitude;
      x+=dx;
    }
  }

  void renderWave(color c) {
    noStroke();
    fill(c);
    for (int x = 0; x < yvalues.length; x++) {
      ellipse(x*xspacing, (height)-100+yvalues[x], 10, 10);
    }
  }
}