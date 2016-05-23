ParticleEmitter("Streak")
{
	MaxParticles(-1.0000,-1.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.1000, 0.1000);
	BurstCount(1.0000,1.0000);
	MaxLodDist(1000.0000);
	MinLodDist(800.0000);
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
		Size(0, 0.1500, 0.1500);
		Red(0, 255.0000, 255.0000);
		Green(0, 255.0000, 255.0000);
		Blue(0, 255.0000, 255.0000);
		Alpha(0, 255.0000, 255.0000);
		StartRotation(0, 0.0000, 10.0000);
		RotationVelocity(0, 0.0000, 0.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(2.5000);
		Position()
		{
			LifeTime(1.0000)
			Scale(0.0000);
		}
		Size(0)
		{
			LifeTime(2.5000)
			Scale(0.0000);
		}
		Color(0)
		{
			LifeTime(2.5000)
			Reach(255.0000,255.0000,255.0000,0.0000);
		}
	}
	Geometry()
	{
		BlendMode("ADDITIVE");
		Type("STREAK");
		Texture("spa1_sfx_lasertrail_b");
		ParticleEmitter("Trail")
		{
			MaxParticles(4.0000,4.0000);
			StartDelay(0.0000,0.0000);
			BurstDelay(0.0250, 0.0250);
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
					PositionX(-2.6250,2.6250);
					PositionY(-2.6250,2.6250);
					PositionZ(-2.6250,2.6250);
				}
				Offset()
				{
					PositionX(-0.1313,0.1313);
					PositionY(-0.1313,0.1313);
					PositionZ(-0.1313,0.1313);
				}
				PositionScale(0.0000,0.0000);
				VelocityScale(2.6250,2.6250);
				InheritVelocityFactor(0.2000,0.2000);
				Size(0, 1.3125, 1.8375);
				Hue(0, 12.0000, 20.0000);
				Saturation(0, 5.0000, 10.0000);
				Value(0, 200.0000, 220.0000);
				Alpha(0, 0.0000, 0.0000);
				StartRotation(0, -20.0000, 20.0000);
				RotationVelocity(0, -20.0000, 20.0000);
				FadeInTime(0.0000);
			}
			Transformer()
			{
				LifeTime(1.0000);
				Position()
				{
					LifeTime(3.0000)
					Scale(0.0000);
				}
				Size(0)
				{
					LifeTime(3.0000)
					Scale(1.0000);
				}
				Color(0)
				{
					LifeTime(0.1000)
					Move(0.0000,0.0000,0.0000,255.0000);
					Next()
					{
						LifeTime(1.0000)
						Move(0.0000,0.0000,0.0000,0.0000);
					}
				}
			}
			Geometry()
			{
				BlendMode("NORMAL");
				Type("PARTICLE");
				Texture("spa1_sfx_lasertrail_b");
			}
		}
	}
}
