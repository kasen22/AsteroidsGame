class Star
{
  private int myX, myY, mySize;
  private int myColor;
  public Star()
  {
    mySize = (int)(Math.random()*5);
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    myColor = color((int)(Math.random()*256),(int)(Math.random()*256), (int)(Math.random()*256));
  }
  
  public void show()
  {
    noStroke();
    fill(myColor);
    ellipse(myX, myY, mySize, mySize);
  }
}
