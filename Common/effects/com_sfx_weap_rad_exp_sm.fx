ParticleEmitter("Radiation")
{
	MaxParticles(3.0000,3.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.2500, 0.2500);
	BurstCount(1.0000,1.0000);
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
		Size(0, 0.5000, 0.5000);
		Red(0, 0.0000, 0.0000);
		Green(0, 0.0000, 10.0000);
		Blue(0, 0.0000, 10.0000);
		Alpha(0, 0.0000, 0.0000);
		StartRotation(0, 0.0000, 0.0000);
		RotationVelocity(0, 0.0000, 0.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(0.8000);
		Position()
		{
			LifeTime(1.2000)
		}
		Size(0)
		{
			LifeTime(0.8000)
			Scale(5.0000);
		}
		Color(0)
		{
			LifeTime(0.0800)
			Move(0.0000,0.0000,0.0000,200.0000);
			Next()
			{
				LifeTime(0.7200)
				Move(0.0000,0.0000,0.0000,-255.0000);
			}
		}
	}
	Geometry()
	{
		BlendMode("NORMAL");
		Type("PARTICLE");
		Texture("com_sfx_flashring1");
	}
	ParticleEmitter("Flash")
	{
		MaxParticles(20.0000,20.0000);
		StartDelay(0.0000,0.0000);
		BurstDelay(0.0100, 0.0100);
		BurstCount(20.0000,20.0000);
		MaxLodDist(50.0000);
		MinLodDist(10.0000);
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
			Size(0, 1.5000, 1.5000);
			Red(0, 0.0000, 255.0000);
			Green(0, 255.0000, 255.0000);
			Blue(0, 0.0000, 220.0000);
			Alpha(0, 32.0000, 32.0000);
			StartRotation(0, 1.0000, 1.9000);
			RotationVelocity(0, 0.0000, 0.0000);
			FadeInTime(0.0000);
		}
		Transformer()
		{
			LifeTime(1.2000);
			Position()
			{
				LifeTime(0.8000)
			}
			Size(0)
			{
				LifeTime(0.8000)
			}
			Color(0)
			{
				LifeTime(1.2000)
				Reach(200.0000,150.0000,255.0000,0.0000);
			}
		}
		Geometry()
		{
			BlendMode("ADDITIVE");
			Type("BILLBOARD");
			Texture("com_sfx_flashball3");
		}
		ParticleEmitter("Flare")
		{
			MaxParticles(1.0000,1.0000);
			StartDelay(0.0000,0.0000);
			BurstDelay(0.1000, 0.2000);
			BurstCount(1.0000,1.0000);
			MaxLodDist(50.0000);
			MinLodDist(10.0000);
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
				Size(0, 2.5000, 2.5000);
				Red(0, 255.0000, 255.0000);
				Green(0, 255.0000, 255.0000);
				Blue(0, 200.0000, 200.0000);
				Alpha(0, 64.0000, 64.0000);
				StartRotation(0, 0.0000, 0.0000);
				RotationVelocity(0, 0.0000, 0.0000);
				FadeInTime(0.0000);
			}
			Transformer()
			{
				LifeTime(0.2000);
				Position()
				{
					LifeTime(0.8000)
				}
				Size(0)
				{
					LifeTime(0.2000)
					Scale(3.0000);
				}
				Color(0)
				{
					LifeTime(0.2000)
					Reach(255.0000,255.0000,200.0000,0.0000);
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
				MaxParticles(20.0000,20.0000);
				StartDelay(0.0000,0.0000);
				BurstDelay(0.0100, 0.0100);
				BurstCount(20.0000,20.0000);
				MaxLodDist(50.0000);
				MinLodDist(10.0000);
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
						PositionX(-0.5000,0.5000);
						PositionY(0.0000,0.5000);
						PositionZ(-0.5000,0.5000);
					}
					Offset()
					{
						PositionX(0.0000,0.0000);
						PositionY(0.0000,0.0000);
						PositionZ(0.0000,0.0000);
					}
					PositionScale(0.5000,0.5000);
					VelocityScale(2.0000,7.0000);
					InheritVelocityFactor(0.0000,0.0000);
					Size(0, 0.0050, 0.0100);
					Red(0, 242.0000, 255.0000);
					Green(0, 100.0000, 200.0000);
					Blue(0, 20.0000, 80.0000);
					Alpha(0, 255.0000, 255.0000);
					StartRotation(0, 0.0000, 0.0000);
					RotationVelocity(0, 0.0000, 0.0000);
					FadeInTime(0.0000);
				}
				Transformer()
				{
					LifeTime(0.8000);
					Position()
					{
						LifeTime(0.8000)
						Accelerate(0.0000, -2.5000, 0.0000);
					}
					Size(0)
					{
						LifeTime(0.1600)
						Scale(1.0000);
					}
					Color(0)
					{
						LifeTime(0.8000)
						Move(-100.0000,-100.0000,-100.0000,-255.0000);
					}
				}
				Geometry()
				{
					BlendMode("ADDITIVE");
					Type("SPARK");
					SparkLength(0.0500);
					Texture("com_sfx_flashball3");
				}
			}
		}
	}
}
