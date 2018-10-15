NormalParticle stars = new NormalParticle();

void setup()

{

	size(300, 300);

}

void draw()

{

	stars.move();

	stars.show();	

}

class NormalParticle

{

	double myX, myY, myAngle, mySpeed;

	int myColor;

	void NormalParticle()

	{

		myX = 150;

		myY = 150;

		myAngle = Math.random()*(2*Math.PI);

		mySpeed = Math.random()*10;

	}

	void move()
	{

		myX = myX + (Math.cos(myAngle)*mySpeed);
		
		myY = myY + (Math.sin(myAngle)*mySpeed);
	
	}

	void show()
	{

		fill(myColor);

		ellipse((float)myX, (float)myY, 10, 10);

	}

}

/*

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
*/