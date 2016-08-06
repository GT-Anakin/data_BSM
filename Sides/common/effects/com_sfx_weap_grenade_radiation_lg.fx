ParticleEmitter("Flashes")
{
	MaxParticles(20.0000,22.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.1000, 0.1000);
	BurstCount(10.0000,10.0000);
	MaxLodDist(50.0000);
	MinLodDist(10.0000);
	BoundingRadius(30.0);
	SoundName("")
	Size(1.0000, 1.0000);
	Hue(255.0000, 255.0000);
	Saturation(255.0000, 255.0000);
	Value(255.0000, 255.0000);
	Alpha(255.0000, 255.0000);
	Spawner()
	{
		Circle()
		{
			PositionX(-1.0000,1.0000);
			PositionY(0.0000,0.5000);
			PositionZ(-1.0000,1.0000);
		}
		Offset()
		{
			PositionX(0.0000,0.0000);
			PositionY(0.0000,0.0000);
			PositionZ(0.0000,0.0000);
		}
		PositionScale(1.0000,1.5000);
		VelocityScale(0.5000,0.5000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 0.7500, 1.0500);
		Red(0, 150.0000, 180.0000);
		Green(0, 30.0000, 50.0000);
		Blue(0, 130.0000, 150.0000);
		Alpha(0, 255.0000, 255.0000);
		StartRotation(0, 0.0000, 360.0000);
		RotationVelocity(0, -50.0000, 50.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(8.0000);
		Position()
		{
			LifeTime(8.0000)
		}
		Size(0)
		{
			LifeTime(4.0000)
			Scale(10.0000);
			Next()
			{
				LifeTime(3.0000)
				Scale(1.0000);
			}
		}
		Color(0)
		{
			LifeTime(3.5000)
			Move(207.0000,102.0000,225.0000,64.0000);
			Next()
			{
				LifeTime(1.0000)
				Reach(1.0000,62.0000,0.0000,20.0000);
				Next()
				{
					LifeTime(3.0000)
					Reach(0.0000,0.0000,0.0000,0.0000);
				}
			}
		}
	}
	Geometry()
	{
		BlendMode("NORMAL");
		Type("PARTICLE");
		Texture("com_sfx_lightning3");
	}
	ParticleEmitter("Shockwave")
	{
		MaxParticles(1.0000,2.0000);
		StartDelay(0.0000,0.0000);
		BurstDelay(0.1000, 0.1000);
		BurstCount(2.0000,2.0000);
		MaxLodDist(1000.0000);
		MinLodDist(800.0000);
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
			Size(0, 3.0000, 3.0000);
			Red(0, 117.0000, 117.0000);
			Green(0, 5.0000, 5.0000);
			Blue(0, 10.0000, 10.0000);
			Alpha(0, 45.0000, 45.0000);
			StartRotation(0, 0.0000, 360.0000);
			RotationVelocity(0, 0.0000, 0.0000);
			FadeInTime(0.0000);
		}
		Transformer()
		{
			LifeTime(1.5000);
			Position()
			{
				LifeTime(1.5000)
			}
			Size(0)
			{
				LifeTime(0.5000)
				Scale(2.0000);
				Next()
				{
					LifeTime(0.5000)
					Scale(1.5000);
				}
			}
			Color(0)
			{
				LifeTime(1.0000)
				Reach(112.0000,12.0000,233.0000,25.0000);
				Next()
				{
					LifeTime(0.5000)
					Reach(0.0000,0.0000,0.0000,0.0000);
				}
			}
		}
		Geometry()
		{
			BlendMode("ADDITIVE");
			Type("PARTICLE");
			Texture("com_sfx_flashring1");
		}
	}
}
