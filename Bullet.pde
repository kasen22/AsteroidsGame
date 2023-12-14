class Bullet extends Floater{
  public Bullet(Spaceship mySpaceship){
    myCenterX = mySpaceship.getX();
    myCenterY = mySpaceship.getY();
    myXspeed = mySpaceship.getXspeed();
    myYspeed = mySpaceship.getYspeed();
    myPointDirection = mySpaceship.getPointDirection();
    myColor = color(255);
    accelerate(5);
  }
  public void show(){
    fill(255,0,0);
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  //public void move(){
  //  myCenterX = +-5;
  //  myCenterY = +-5;
  //}
}
