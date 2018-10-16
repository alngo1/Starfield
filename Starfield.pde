Particle[] stars = new Particle[50];

void setup()

{

	size(300, 300);
	for(int i = 0; i < stars.length; i++)

	{

		stars[i] = new NormalParticle();

	}

	stars[0] = new OddballParticle();

	stars[1] = new JumboParticle();

}

void draw()

{

	background(#FFFFFF);
	
	for(int i = 0; i < stars.length; i++)

	{


		stars[i].move();

		stars[i].show();

		fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256), 10);
		rect(300, 300, 300, 300);

	}

}

void mousePressed()
{
	setup();
}


class NormalParticle implements Particle

{

	double myX, myY, myAngle, mySpeed;

	int myColor;

	NormalParticle()

	{

		myX = 150;

		myY = 150;

		myAngle = Math.random()*(2*Math.PI);

		mySpeed = Math.random()*10;

		myColor = color ((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));

	}

	public void move()
	{

		myX = myX + (Math.cos(myAngle)*mySpeed);
		
		myY = myY + (Math.sin(myAngle)*mySpeed);
	
	}

	public void show()
	{

		fill(myColor);

		ellipse((float)myX, (float)myY, 10, 10);

	}

}



interface Particle

{

	public void show();

	public void move();

}

class OddballParticle implements Particle

{

	double myX, myY, myAngle, mySpeed;

	int myColor;

	OddballParticle()

	{

		myX = 150;

		myY = 150;

		myAngle = Math.random()*(2*Math.PI);

		mySpeed = Math.random()*10;

		myColor = color ((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));

	}

	public void move()
	{

		myX = myX + (Math.cos(myAngle)*mySpeed);
	
	}

	public void show()
	{

		fill(myColor);

		rect((float)myX, (float)myY, 25, 25);

	}

}

class JumboParticle extends NormalParticle

{

	
	public void move()
	{

		myX = myX + (Math.cos(myAngle)*mySpeed);
		
		myY = myY + (Math.sin(myAngle)*mySpeed);
	
	}

	public void show()
	{

		fill(myColor);

		ellipse((float)myX, (float)myY, 50, 50);

	}

}
