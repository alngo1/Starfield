Particle [] stars = new NormalParticle[30];
void setup()
{
	size(300, 300);
	for(var i = 0; i < stars.length; i++)
	{
		stars[i] = new NormalParticle();
	}
	stars[0] = new OddballParticle
	stars[1] = new JumboParticle
}
void draw()
{
	//your code here
}
class NormalParticle
{
	int myX, myY, mySize;
	NormalParticle()
	{
		myX = 150;
		myY = 150;
		mySize = 10;
	}
}
interface Particle
{
	public void show();
	public void move();
}
class OddballParticle //uses an interface
{
	int myX, myY, mySize;
	OddballParticle()
	{
		myX = 150;
		myY = 150;
		mySize = 50;
	}
}
class JumboParticle //uses inheritance
{
	int myX, myY, mySize;
	JumboParticle()
	{
		myX = 150;
		myY = 150;
		mySize = 100;
	}
}

