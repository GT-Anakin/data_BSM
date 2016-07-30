ParticleEmitter("Fire")
{
	MaxParticles(-1.0000,-1.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.0300, 0.0300);
	BurstCount(1.0000,1.0000);
	MaxLodDist(50.0000);
	MinLodDist(10.0000);
	BoundingRadius(5.0);
	SoundName("com_amb_fire defer")
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
			PositionZ(-40.0000,-30.0000);
		}
		Offset()
		{
			PositionX(-0.1000,0.1000);
			PositionY(-0.1000,0.1000);
			PositionZ(-0.1000,0.1000);
		}
		PositionScale(0.0000,0.0000);
		VelocityScale(0.1000,0.1000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 0.4000, 0.8000);
		Hue(0, 0.0000, 20.0000);
		Saturation(0, 50.0000, 255.0000);
		Value(0, 255.0000, 255.0000);
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
			LifeTime(1.0000)
			Accelerate(0.0000, 0.0000, 0.0000);
		}
		Size(0)
		{
			LifeTime(1.0000)
			Scale(3.0000);
		}
		Color(0)
		{
			LifeTime(0.0500)
			Move(0.0000,0.0000,0.0000,255.0000);
			Next()
			{
				LifeTime(0.2500)
				Move(0.0000,0.0000,0.0000,-220.0000);
				Next()
				{
					LifeTime(0.7000)
					Move(0.0000,0.0000,0.0000,-35.0000);
				}
			}
		}
	}
	Geometry()
	{
		BlendMode("ADDITIVE");
		Type("PARTICLE");
		Texture("com_sfx_explosion2");
	}
}
