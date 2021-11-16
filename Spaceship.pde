class Spaceship extends Floater  
{   
  public Spaceship()
  {
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = 0;
    yCorners[0] = -5;
    xCorners[1] = -2;
    yCorners[1] = -7;
    xCorners[2] = -3;
    yCorners[2] = -5;
    xCorners[3] = 0;
    yCorners[3] = 7;
    xCorners[4] = 3;
    yCorners[4] = -5;
    xCorners[5] = 2;
    yCorners[5] = -7;
    myColor = color(255);
  }
  //your code here
}
