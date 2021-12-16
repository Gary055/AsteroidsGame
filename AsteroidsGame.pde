//your variable declarations here
ArrayList <Asteroids> Rocks = new ArrayList <Asteroids>();
ArrayList <Bullet> pews = new ArrayList <Bullet>();
Star [] Backdrop;
Spaceship Jeffery;
Spaceship Jeremy;
Spaceship Jackson;
Spaceship Jaqueline;
public void setup() 
{
  size(1000,1000);
  background(0);
  for(int i = 0; i < 10; i++)
  {
    Asteroids Rock = new Asteroids();
    Rocks.add(Rock);
  }
  Backdrop = new Star[30];
  for(int i = 0; i < Backdrop.length; i++)
  {
    Backdrop[i] = new Star();
  }
   Jeffery = new Spaceship(500, 450);
   Jeremy = new Spaceship(450, 500);
   Jackson = new Spaceship(550, 500);
   Jaqueline = new Spaceship(600, 550);
  //your code here
}
public void draw() 
{
  background(0);
  for(int i = 0; i < Rocks.size(); i++)
  {
    Rocks.get(i).move();
    Rocks.get(i).show();
    if(dist((float)Jeffery.myCenterX, (float)Jeffery.myCenterY, (float)Rocks.get(i).myCenterX, (float)Rocks.get(i).myCenterY) < 30)
      Rocks.remove(i);
  }
  for(int i = 0; i < Rocks.size(); i++)
  {
  for(int j = 0; j < pews.size(); j++)
     {
       if(dist((float)pews.get(j).myCenterX, (float)pews.get(j).myCenterY, (float)Rocks.get(i).myCenterX, (float)Rocks.get(i).myCenterY) < 10)
        {
        Rocks.remove(i);
        pews.remove(j);
        break;
        }
     }
  }
  for(int i = 0; i < pews.size(); i++)
  {
    pews.get(i).move();
    pews.get(i).show();
  }
  for(int i = 0; i < Backdrop.length; i++)
    Backdrop[i].show();
   Jeffery.show();
   Jeffery.move();
   Jeffery.turn(Jeffery.spin);
   Jeremy.show();
   Jeremy.move();
   Jeremy.turn(Jeremy.spin);
   Jackson.show();
   Jackson.move();
   Jackson.turn(Jackson.spin);
   Jaqueline.show();
   Jaqueline.move();
   Jaqueline.turn(Jaqueline.spin);
   if(keyPressed)
   {
     if(key == 'a')
     {
       Jeffery.addspin(-0.1);
       Jeremy.addspin(-0.1);
       Jackson.addspin(-0.1);
       Jaqueline.addspin(-0.1);
     }
     if(key == 'd')
     {
       Jeffery.addspin(0.1);
       Jeremy.addspin(0.1);
       Jackson.addspin(0.1);
       Jaqueline.addspin(0.1);
     }
     if(key == 'w')
     {
       Jeffery.accelerate(0.1);
       Jeremy.accelerate(0.1);
       Jackson.accelerate(0.1);
       Jaqueline.accelerate(0.1);
     }
     if(key == 's')
     {
       Jeffery.accelerate(-0.1);
       Jeremy.accelerate(-0.1);
       Jackson.accelerate(-0.1);
       Jaqueline.accelerate(-0.1);
     }
     if(key == 'e')
     {
       Jeffery.n++;
       if(Jeffery.n == 10)
       {
       Jeffery.hyperspace();
       Jeremy.hyperspace();
       Jackson.hyperspace();
       Jaqueline.hyperspace();
       Jeffery.n = 0;
       Jeremy.n = 0;
       Jackson.n = 0;
       Jaqueline.n = 0;
       }
     }
     if(key == ' ')
     {
       pews.add(new Bullet(Jeffery));
     }
   }
  //your code here
}
