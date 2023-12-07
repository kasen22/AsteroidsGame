Spaceship mySpaceship = new Spaceship();
ArrayList <Asteroid> myAsteroids;
Star [] Sky = new Star[200];
public void setup() 
{
  myAsteroids = new ArrayList <Asteroid>();
  size(500, 500);
  for (int i = 0; i<Sky.length; i++)
  {
    Sky[i] = new Star();
  }
  for (int i =0; i<=15; i++){
    myAsteroids.add(new Asteroid());
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
  for(int i= myAsteroids.size()-1; i>=0; i--){
    Asteroid currentAsteroid = myAsteroids.get(i);
    currentAsteroid.move();
    currentAsteroid.show();
    
  float distance = dist((float)currentAsteroid.getMyCenterX(), (float)currentAsteroid.getMyCenterY(), (float)mySpaceship.getMyCenterX(), (float)mySpaceship.getMyCenterY());
  if (distance<30){
    myAsteroids.remove(i);
  }
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
