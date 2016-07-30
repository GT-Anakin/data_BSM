ParticleEmitter("Fire_Normal")
{
	MaxParticles(10.0000,10.0000);
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
		PositionScale(0.5000,1.0000);
		VelocityScale(0.5000,0.5000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 0.7500, 1.0500);
		Red(0, 5.0000, 20.0000);
		Green(0, 15.0000, 50.0000);
		Blue(0, 0.0000, 0.0000);
		Alpha(0, 64.0000, 64.0000);
		StartRotation(0, 0.0000, 360.0000);
		RotationVelocity(0, -50.0000, 50.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(3.0000);
		Position()
		{
			LifeTime(1.0000)
		}
		Size(0)
		{
			LifeTime(3.0000)
			Scale(2.5000);
		}
		Color(0)
		{
			LifeTime(0.1000)
			Reach(10.0000,50.0000,0.0000,64.0000);
			Next()
			{
				LifeTime(1.0000)
				Reach(10.0000,50.0000,0.0000,64.0000);
				Next()
				{
					LifeTime(1.7000)
					Reach(0.0000,0.0000,0.0000,0.0000);
				}
			}
		}
	}
	Geometry()
	{
		BlendMode("NORMAL");
		Type("PARTICLE");
		Texture("com_sfx_explosion4");
	}
	ParticleEmitter("Fire_Additive")
	{
		MaxParticles(8.0000,8.0000);
		StartDelay(0.0000,0.0000);
		BurstDelay(0.1000, 0.1000);
		BurstCount(8.0000,8.0000);
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
			PositionScale(0.5000,1.0000);
			VelocityScale(0.5000,0.5000);
			InheritVelocityFactor(0.0000,0.0000);
			Size(0, 1.0000, 1.3000);
			Hue(0, 42.5000, 79.3333);
			Saturation(0, 105.0000, 255.0000);
			Value(0, 128.0000, 255.0000);
			Alpha(0, 0.0000, 0.0000);
			StartRotation(0, 0.0000, 360.0000);
			RotationVelocity(0, -50.0000, 50.0000);
			FadeInTime(0.0000);
		}
		Transformer()
		{
			LifeTime(3.0000);
			Position()
			{
				LifeTime(1.0000)
			}
			Size(0)
			{
				LifeTime(3.0000)
				Scale(2.5000);
			}
			Color(0)
			{
				LifeTime(0.1000)
				Move(0.0000,0.0000,0.0000,64.0000);
				Next()
				{
					LifeTime(1.0000)
					Move(0.0000,0.0000,0.0000,-30.0000);
					Next()
					{
						LifeTime(1.9000)
						Reach(0.0000,0.0000,0.0000,0.0000);
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
		ParticleEmitter("InitialBurst")
		{
			MaxParticles(10.0000,10.0000);
			StartDelay(0.0000,0.0000);
			BurstDelay(0.1000, 0.1000);
			BurstCount(10.0000,10.0000);
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
				PositionScale(0.5000,1.0000);
				VelocityScale(0.5000,0.5000);
				InheritVelocityFactor(0.0000,0.0000);
				Size(0, 1.0000, 1.3000);
				Hue(0, 42.5000, 70.8333);
				Saturation(0, 127.0000, 255.0000);
				Value(0, 15.0000, 255.0000);
				Alpha(0, 64.0000, 64.0000);
				StartRotation(0, 0.0000, 360.0000);
				RotationVelocity(0, -50.0000, 50.0000);
				FadeInTime(0.0000);
			}
			Transformer()
			{
				LifeTime(0.5000);
				Position()
				{
					LifeTime(1.0000)
				}
				Size(0)
				{
					LifeTime(0.5000)
					Scale(5.0000);
				}
				Color(0)
				{
					LifeTime(0.5000)
					Reach(76.5000,255.0000,125.0000,0.0000);
				}
			}
			Geometry()
			{
				BlendMode("ADDITIVE");
				Type("PARTICLE");
				Texture("com_sfx_explosion4");
			}
		}
	}
}
