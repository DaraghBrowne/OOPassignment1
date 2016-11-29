class Orbiter
{
  float centerX, centerY;
  float angle;
  float rotationSpeed;
  float radius;

  Orbiter(float centerX, float centerY, float startAngle, float rotationSpeed, float radius) {
    this.centerX = centerX;
    this.centerY = centerY;
    angle = startAngle;
    this.rotationSpeed = rotationSpeed;
    this.radius = radius;
  }

  void update() {
    angle += rotationSpeed / 60;
  }

  void display() {

    strokeWeight(5);
    stroke(0, 255, 255);
    arc(centerX, centerY, radius, radius, radians(angle), radians(angle + 90));
  }
}