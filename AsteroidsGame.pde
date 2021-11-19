//your variable declarations here
Star [] Backdrop;
Spaceship Jeffery;
public void setup() 
{
  size(1000,1000);
  background(0);
  Backdrop = new Star[30];
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
   Jeffery.move();
   if(keyPressed)
   {
     if(key == 'a')
     {
       Jeffery.spin -= 0.1;
     }
     if(key == 'd')
     {
       Jeffery.spin += 0.1;
     }
     if(key == 'w')
     {
       Jeffery.accelerate(0.1);
     }
   }
   Jeffery.turn(Jeffery.spin);
  //your code here
}
