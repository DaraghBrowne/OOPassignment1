class Clock{
  int fontSize;
  float x, y;
  PFont f = createFont("Stencil", 60); //Create Font;
  
  Clock(int fontSize, float x, float y) {
    this.fontSize = fontSize;
    this.x = x;
    this.y = y;
  }
  
  void display() {
    textFont(f);
    fill(255);
    textSize(fontSize);
    textAlign(CENTER);
    text (hour() + ":" + nf(minute(), 2) + ":" + nf(second(), 2), x, y);
  } 
  
  void hand(){
  
  }
}