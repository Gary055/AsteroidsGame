class Bullet extends Floater
{
  public Bullet(Spaceship Ship)
  {
    myCenterX = Ship.getX();
    myCenterY = Ship.getY();
    myPointDirection = Ship.getDirection();
    accelerate(5);
  }
  public void show()
  {
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
}
