Spaceship mySpaceship = new Spaceship();
ArrayList <Asteroid> myAsteroids;
ArrayList <Bullet> shots = new ArrayList <Bullet>();
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
    for(int i=0; i<shots.size(); i++){
      Bullet myBullet = shots.get(i);
    myBullet.move();
    myBullet.show();
    for(int j=myAsteroids.size()-1; j>=0; j--){
      Asteroid removeAsteroid = myAsteroids.get(j);
      float distance = dist((float)removeAsteroid.getMyCenterX(), (float)removeAsteroid.getMyCenterY(), (float)myBullet.myCenterX, (float)myBullet.myCenterY);
      if (distance<20){
        myAsteroids.remove(j);
        shots.remove(i);
        break;
      }
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
  if (key == 's'){
    mySpaceship.setXspeed(0);
    mySpaceship.setYspeed(0);
    mySpaceship.setCenterX ((int)(Math.random()*450));
    mySpaceship.setCenterY ((int)(Math.random()*450));
    mySpaceship.setPointDirection ((int)(Math.random()*100));
  }
  if (key == ' '){
    shots.add(new Bullet(mySpaceship));
  }
}
