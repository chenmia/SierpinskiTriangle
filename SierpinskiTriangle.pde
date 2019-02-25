int mySize = 600;
int n = 0;
int x = 0;
public void setup()
{
  size(600,602);
  background(0);
}
public void draw()
{
  frameRate(1);
  background(0);
  noFill();
  stroke(255);
  sierpinski(0,600,600);
  mySize=mySize/2;
  textSize(22);
  text((int)(Math.pow(4,n)),10,25);
  n++;
}

public void sierpinski(double x, double y, double len) 
{
  if(len<=mySize)
    triangle((float)x,(float)y,(float)(x+len),(float)y,(float)(x+len/2),(float)(y-len));
  else
  {
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y-len/2,len/2);
  }
}
