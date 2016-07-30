ParticleEmitter("lightsabredeflect")
{
	MaxParticles(1.0000,1.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.2000, 0.2000);
	BurstCount(1.0000,1.0000);
	MaxLodDist(1100.0000);
	MinLodDist(1000.0000);
	BoundingRadius(5.0);
	SoundName("")
	NoRegisterStep();
	Size(0.4000, 0.4000);
	Hue(255.0000, 255.0000);
	Saturation(255.0000, 255.0000);
	Value(255.0000, 255.0000);
	Alpha(255.0000, 255.0000);
	Spawner()
	{
		Circle()
		{
			PositionX(0.0000,0.0000);
			PositionY(0.0000,0.0000);
			PositionZ(0.0000,0.0000);
		}
		Offset()
		{
			PositionX(0.0000,0.0000);
			PositionY(0.0000,0.0000);
			PositionZ(0.0000,0.0000);
		}
		PositionScale(0.0000,0.0000);
		VelocityScale(0.0000,0.0000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 1.5000, 1.5000);
		Red(0, 255.0000, 255.0000);
		Green(0, 255.0000, 255.0000);
		Blue(0, 255.0000, 255.0000);
		Alpha(0, 200.0000, 200.0000);
		StartRotation(0, 0.0000, 360.0000);
		RotationVelocity(0, 0.0000, 0.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(0.1000);
		Position()
		{
			LifeTime(1.0000)
			Scale(0.0000);
		}
		Size(0)
		{
			LifeTime(0.3000)
			Scale(5.0000);
		}
		Color(0)
		{
			LifeTime(0.1000)
			Move(0.0000,0.0000,0.0000,-200.0000);
		}
	}
	Geometry()
	{
		BlendMode("ADDITIVE");
		Type("PARTICLE");
		Texture("com_sfx_flashball1");
	}
	ParticleEmitter("Sparks")
	{
		MaxParticles(49.0000,49.0000);
		StartDelay(0.0000,0.0000);
		BurstDelay(0.0000, 0.0000);
		BurstCount(49.0000,49.0000);
		MaxLodDist(50.0000);
		MinLodDist(10.0000);
		BoundingRadius(5.0);
		SoundName("")
		NoRegisterStep();
		Size(1.0000, 1.0000);
		Red(255.0000, 255.0000);
		Green(255.0000, 255.0000);
		Blue(255.0000, 255.0000);
		Alpha(255.0000, 255.0000);
		Spawner()
		{
			Circle()
			{
				PositionX(-1.0000,1.0000);
				PositionY(-1.0000,1.0000);
				PositionZ(-1.0000,1.0000);
			}
			Offset()
			{
				PositionX(0.0000,0.0000);
				PositionY(0.0000,0.0000);
				PositionZ(0.0000,0.0000);
			}
			PositionScale(0.5000,0.5000);
			VelocityScale(0.1000,3.1000);
			InheritVelocityFactor(0.0000,0.0000);
			Size(0, 0.0200, 0.0200);
			Red(0, 255.0000, 255.0000);
			Green(0, 255.0000, 255.0000);
			Blue(0, 255.0000, 255.0000);
			Alpha(0, 255.0000, 255.0000);
			StartRotation(0, 0.0000, 360.0000);
			RotationVelocity(0, -100.0000, 100.0000);
			FadeInTime(0.0000);
		}
		Transformer()
		{
			LifeTime(0.5000);
			Position()
			{
				LifeTime(0.5000)
				Accelerate(0.0000, -5.0000, 0.0000);
			}
			Size(0)
			{
				LifeTime(3.0000)
				Scale(0.0000);
			}
			Color(0)
			{
				LifeTime(0.5000)
				Move(50.0000,50.0000,50.0000,0.0000);
			}
		}
		Geometry()
		{
			BlendMode("ADDITIVE");
			Type("SPARK");
			SparkLength(0.0250);
			Texture("com_sfx_laser_orange");
		}
	}
}
