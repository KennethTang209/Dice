void setup()
{
	noLoop();
  	size(300,350);
  	textSize(20);
  	textAlign(CENTER);
}
void draw()
{
	background(255);
	int sum = 0;
	for(int j = 0; j < 300; j+= 50){
		for(int k = 0; k < 300; k+=50){
				Die die1 = new Die(j,k);
				die1.show();
				sum += die1.value;

		}
	}
	text("Sum: " + sum , 150, 325);	
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX, myY, value;

	Die(int x, int y) //constructor
	{
		myX = x;
    	myY = y;
    	value = (int)(Math.random()*6 + 1);
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		fill((int)(Math.random()*130+130), (int)(Math.random()*130+130), (int)(Math.random()*130+130));
		rect(myX, myY, 50, 50);

		fill(0);
    	if(value == 1){
      		draw1();
    	}else if(value == 2){
    		draw2();
    	}else if(value == 3){
    		draw1();
    		draw2();
    	}else if(value == 4){
    		draw4();
    	}else if(value == 5){
    		draw4();
    		draw1();
    	}else if(value == 6){
    		draw4();
    		ellipse(myX+12, myY+25, 10, 10);
    		ellipse(myX+37, myY+25, 10, 10);
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
