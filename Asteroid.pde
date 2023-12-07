class Asteroid extends Floater{
private double rotSpeed;
public Asteroid(){
  corners = 6;
  xCorners = new int[corners];
  yCorners = new int[corners];
  xCorners[0] =-11;
  yCorners[0] =-8;
  xCorners[1] =7;
  yCorners[1] =-8;
  xCorners[2] =13;
  yCorners[2] =0;
  xCorners[3] =6;
  yCorners[3] =10;
  xCorners[4] =-11;
  yCorners[4] =8;
  xCorners[5] =-5;
  yCorners[5] =0;
  myCenterX = (int)(Math.random()*500);
  myCenterY = (int)(Math.random()*500);
  myColor = color(152, 146, 146);
  myPointDirection = (int)(Math.random()*4)-2;
  myXspeed = (int)(Math.random()*.5)+1;
  myYspeed = (int)(Math.random()*.5)+1;
  rotSpeed = (int)(Math.random()*3)+1;
}
public void move(){
  turn(rotSpeed);
  super.move();
}
public double getMyCenterX(){
  return myCenterX;
}
public double getMyCenterY(){
  return myCenterY;
}
}
