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

		int sum = 0;
		fill(0);
    	if((int)(Math.random()*6 + 1) == 1){
      		draw1();
      		sum+=1;
    	}else if((int)(Math.random()*6 + 1) == 2){
    		draw2();
    		sum+=2;
    	}else if((int)(Math.random()*6 + 1) == 3){
    		draw1();
    		draw2();
    		sum+=3;
    	}else if((int)(Math.random()*6 + 1) == 4){
    		draw4();
    		sum+=4;
    	}else if((int)(Math.random()*6 + 1) == 5){
    		draw4();
    		draw1();
    		sum+=5;
    	}else if((int)(Math.random()*6 + 1) == 6){
    		draw4();
    		ellipse(myX+12, myY+25, 10, 10);
    		ellipse(myX+37, myY+25, 10, 10);
    		sum+=6;
    	}
	}
	void draw1(){
		ellipse(myX+25, myY+25, 10, 10);
	}
	void draw2(){
		ellipse(myX+12, myY+12, 10, 10);
    	ellipse(myX+37, myY+37, 10, 10);
	}
	void draw4(){
		ellipse(myX+37, myY+12, 10, 10);
    	ellipse(myX+12, myY+37, 10, 10);
    	ellipse(myX+12, myY+12, 10, 10);
    	ellipse(myX+37, myY+37, 10, 10);
	}
}
