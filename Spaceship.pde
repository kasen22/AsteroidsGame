class Spaceship extends Floater{
  public Spaceship(){
    corners = 4;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    yCorners[2] = 8;
    xCorners[3] = -4;
    yCorners[3] = 0;
    myCenterX = 250;
    myCenterY = 250;
    myPointDirection = 0;
    myColor = color(255);
  }
  public void setXspeed(double x){
    myXspeed = x;
  }
  public void setYspeed(double y){
    myYspeed = y;
  }
  public void setCenterX (int x){
    myCenterX = x;
  }
  public void setCenterY (int y){
    myCenterY = y;
  }
  public void setPointDirection (int x){
    myPointDirection = x;
  }
  public double getMyCenterX(){
    return myCenterX;
  }
  public double getMyCenterY(){
    return myCenterY;
  }
}
