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
	int x = 50;
  int y = 50;
	
	Die(int x, int y) //constructor
	{
		
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		fill(255);
		rect(x, y, 50, 50);
	}
}
