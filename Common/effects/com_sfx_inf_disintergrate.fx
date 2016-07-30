ParticleEmitter("Fire")
{
	MaxParticles(125.0000,125.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.0300, 0.0300);
	BurstCount(3.0000,3.0000);
	MaxLodDist(50.0000);
	MinLodDist(10.0000);
	BoundingRadius(5.0);
	SoundName("")
	NoRegisterStep();
	Size(1.0000, 1.0000);
	Hue(255.0000, 255.0000);
	Saturation(255.0000, 255.0000);
	Value(255.0000, 255.0000);
	Alpha(255.0000, 255.0000);
	Spawner()
	{
		Spread()
		{
			PositionX(-2.0000,2.0000);
			PositionY(-2.0000,2.0000);
			PositionZ(-2.0000,-2.0000);
		}
		Offset()
		{
			PositionX(-0.7500,0.7500);
			PositionY(0.0000,0.2500);
			PositionZ(-0.7500,0.7500);
		}
		PositionScale(0.0000,0.0000);
		VelocityScale(0.1000,0.3000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 0.2000, 0.4000);
		Hue(0, 0.0000, 20.0000);
		Saturation(0, 50.0000, 60.0000);
		Value(0, 60.0000, 200.0000);
		Alpha(0, 0.0000, 0.0000);
		StartRotation(0, 0.0000, 255.0000);
		RotationVelocity(0, -80.0000, 80.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(1.0000);
		Position()
		{
			LifeTime(4.0000)
			Accelerate(0.0000, 5.0000, 0.0000);
		}
		Size(0)
		{
			LifeTime(1.0000)
			Scale(3.0000);
		}
		Color(0)
		{
			LifeTime(0.2000)
			Move(0.0000,0.0000,0.0000,255.0000);
			Next()
			{
				LifeTime(0.5000)
				Move(0.0000,0.0000,0.0000,-220.0000);
				Next()
				{
					LifeTime(0.3000)
					Move(0.0000,0.0000,0.0000,-35.0000);
				}
			}
		}
	}
	Geometry()
	{
		BlendMode("NORMAL");
		Type("PARTICLE");
		Texture("com_sfx_waterfoam1");
	}
}
