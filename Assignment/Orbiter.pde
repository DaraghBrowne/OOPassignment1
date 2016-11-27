class Orbiter
{
  float centerX, centerY;

  float sweep = 45;
  float angle;
  float rotationSpeed;
  float radius;

  public Orbiter(float centerX, float centerY, float startAngle, float sweep, float rotationSpeed, float radius) {
    this.centerX = centerX;
    this.centerY = centerY;
    angle = startAngle;
    this.rotationSpeed = rotationSpeed;
    this.radius = radius;
    this.sweep = sweep;
  }

  void update() {
    angle += rotationSpeed / 60;
  }

  void display() {

    strokeWeight(5);
    stroke(0, 255, 255);
    arc(centerX, centerY, radius, radius, radians(angle), radians(angle + sweep));
  }
}