
public void setup()
{
  size(600,600);
  background(0);
}
public void draw()
{
  fill(255);
  noStroke();
  sierpinski(0,600,600);
}

public void sierpinski(double x, double y, double len) 
{
  if(len<=10)
    triangle((float)x,(float)y,(float)(x+len),(float)y,(float)(x+len/2),(float)(y-len));
  else
  {
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y-len/2,len/2);
  }
}
