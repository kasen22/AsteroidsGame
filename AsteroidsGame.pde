Spaceship mySpaceship = new Spaceship();
Star [] Sky = new Star[200];
public void setup() 
{
  size(500, 500);
  for (int i = 0; i<Sky.length; i++)
  {
    Sky[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  mySpaceship.move();
  mySpaceship.show();
  for (int i = 0; i<Sky.length; i++)
  {
    Sky[i].show();
  }
}
public void keyPressed() // turns the spaceship left and right
{
  if (key == 'a') {
    mySpaceship.turn(-20);
  }
  if (key == 'd') {
    mySpaceship.turn(20);
  }
  if (key == 'w') {
    mySpaceship.accelerate(.5);
  }
  if (key == ' '){
    mySpaceship.setXspeed(0);
    mySpaceship.setYspeed(0);
    mySpaceship.setCenterX ((int)(Math.random()*450));
    mySpaceship.setCenterY ((int)(Math.random()*450));
    mySpaceship.setPointDirection ((int)(Math.random()*100));
  }
}
