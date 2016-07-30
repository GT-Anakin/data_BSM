ParticleEmitter("Smoketrail")
{
	MaxParticles(-1.0000,-1.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.1000, 0.1000);
	BurstCount(1.0000,1.0000);
	MaxLodDist(2200.0000);
	MinLodDist(2000.0000);
	BoundingRadius(5.0);
	SoundName("")
	Size(1.0000, 1.0000);
	Hue(255.0000, 255.0000);
	Saturation(255.0000, 255.0000);
	Value(255.0000, 255.0000);
	Alpha(255.0000, 255.0000);
	Spawner()
	{
		Spread()
		{
			PositionX(-1.0000,1.0000);
			PositionY(-1.0000,1.0000);
			PositionZ(-1.0000,1.0000);
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
		Size(0, 0.6500, 0.6500);
		Red(0, 80.0000, 80.0000);
		Green(0, 80.0000, 80.0000);
		Blue(0, 80.0000, 80.0000);
		Alpha(0, 0.0000, 64.0000);
		StartRotation(0, 1.0000, 1.0000);
		RotationVelocity(0, -1.0000, -1.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(0.5000);
		Position()
		{
			LifeTime(0.7500)
		}
		Size(0)
		{
			LifeTime(0.2000)
			Scale(1.0000);
		}
		Color(0)
		{
			LifeTime(0.1000)
			Move(0.0000,0.0000,0.0000,191.0000);
			Next()
			{
				LifeTime(0.3500)
				Move(0.0000,0.0000,0.0000,-255.0000);
			}
		}
	}
	Geometry()
	{
		BlendMode("NORMAL");
		Type("STREAK");
		Texture("com_sfx_smoketrail");
	}
	ParticleEmitter("Smoke")
	{
		MaxParticles(-1.0000,-1.0000);
		StartDelay(0.0000,0.0000);
		BurstDelay(0.0500, 0.0500);
		BurstCount(1.0000,1.0000);
		MaxLodDist(2200.0000);
		MinLodDist(2000.0000);
		BoundingRadius(5.0);
		SoundName("")
		Size(1.0000, 1.0000);
		Hue(255.0000, 255.0000);
		Saturation(255.0000, 255.0000);
		Value(255.0000, 255.0000);
		Alpha(255.0000, 255.0000);
		Spawner()
		{
			Spread()
			{
				PositionX(-1.0000,1.0000);
				PositionY(-1.0000,1.0000);
				PositionZ(-1.0000,1.0000);
			}
			Offset()
			{
				PositionX(-0.1000,0.1000);
				PositionY(-0.1000,0.1000);
				PositionZ(-0.1000,0.1000);
			}
			PositionScale(0.0000,0.0000);
			VelocityScale(1.0000,1.0000);
			InheritVelocityFactor(0.0000,0.0000);
			Size(0, 0.5000, 1.0000);
			Red(0, 128.0000, 128.0000);
			Green(0, 128.0000, 128.0000);
			Blue(0, 128.0000, 128.0000);
			Alpha(0, 0.0000, 128.0000);
			StartRotation(0, 0.0000, 360.0000);
			RotationVelocity(0, -40.0000, 40.0000);
			FadeInTime(0.0000);
		}
		Transformer()
		{
			LifeTime(0.5000);
			Position()
			{
				LifeTime(0.7500)
			}
			Size(0)
			{
				LifeTime(0.5000)
				Scale(3.0000);
			}
			Color(0)
			{
				LifeTime(0.1000)
				Move(0.0000,0.0000,0.0000,128.0000);
				Next()
				{
					LifeTime(0.4000)
					Move(0.0000,0.0000,0.0000,-255.0000);
				}
			}
		}
		Geometry()
		{
			BlendMode("NORMAL");
			Type("PARTICLE");
			Texture("com_sfx_smoke4");
		}
	}
}
