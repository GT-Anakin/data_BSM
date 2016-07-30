ParticleEmitter("Fire")
{
	MaxParticles(25.0000,25.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.0100, 0.0100);
	BurstCount(5.0000,5.0000);
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
		Circle()
		{
			PositionX(-4.0000,4.0000);
			PositionY(-4.0000,4.0000);
			PositionZ(-4.0000,4.0000);
		}
		Offset()
		{
			PositionX(0.0000,0.0000);
			PositionY(1.0000,1.5000);
			PositionZ(0.0000,0.0000);
		}
		PositionScale(0.4000,0.4000);
		VelocityScale(2.0000,3.0000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 0.4000, 0.8000);
		Hue(0, 0.0000, 20.0000);
		Saturation(0, 50.0000, 60.0000);
		Value(0, 20.0000, 125.0000);
		Alpha(0, 0.0000, 0.0000);
		StartRotation(0, 0.0000, 255.0000);
		RotationVelocity(0, -80.0000, 80.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(0.5000);
		Position()
		{
			LifeTime(0.5000)
			Accelerate(0.0000, 2.0000, 0.0000);
		}
		Size(0)
		{
			LifeTime(0.5000)
			Scale(1.5000);
		}
		Color(0)
		{
			LifeTime(0.0100)
			Move(0.0000,0.0000,0.0000,255.0000);
			Next()
			{
				LifeTime(0.1900)
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
