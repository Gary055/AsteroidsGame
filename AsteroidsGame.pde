//your variable declarations here
Star [] Backdrop;
Spaceship Jeffery;
public void setup() 
{
  size(1000,1000);
  background(0);
  Backdrop = new Star[20];
  for(int i = 0; i < Backdrop.length; i++)
  {
    Backdrop[i] = new Star();
  }
   Jeffery = new Spaceship();
  //your code here
}
public void draw() 
{
  background(0);
  for(int i = 0; i < Backdrop.length; i++)
    Backdrop[i].show();
   Jeffery.show();
  //your code here
}
