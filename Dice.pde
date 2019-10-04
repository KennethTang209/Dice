void setup()
{
	noLoop();
  size(300,300);
}
void draw()
{
	background(127);
	Die dice1 = new Die(100,100);
	dice1.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX, myY;
	Die(int x, int y) //constructor
	{
		myX = x;
    myY = y;
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		fill(255);
		rect(myX, myY, 50, 50);
    if((int)(Math.random()+1) == 1){
      fill(0);
      ellipse(myX+25, myY+25, 10, 10);
    }
	}
}
