ParticleEmitter("Smoke")
{
	MaxParticles(-1.0000,-1.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.0100, 0.0100);
	BurstCount(1.0000,1.0000);
	MaxLodDist(50.0000);
	MinLodDist(10.0000);
	BoundingRadius(25.0);
	SoundName("")
	Size(1.0000, 1.0000);
	Red(255.0000, 255.0000);
	Green(255.0000, 255.0000);
	Blue(255.0000, 255.0000);
	Alpha(255.0000, 255.0000);
	Spawner()
	{
		Spread()
		{
			PositionX(-0.1000,0.1000);
			PositionY(-0.1000,0.1000);
			PositionZ(-0.1000,0.1000);
		}
		Offset()
		{
			PositionX(0.0000,0.0000);
			PositionY(0.0000,0.0000);
			PositionZ(0.0000,0.0000);
		}
		PositionScale(0.0000,0.0000);
		VelocityScale(2.0000,2.0000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 0.1000, 0.6000);
		Red(0, 255.0000, 255.0000);
		Green(0, 255.0000, 255.0000);
		Blue(0, 255.0000, 255.0000);
		Alpha(0, 0.0000, 50.0000);
		StartRotation(0, 0.0000, 360.0000);
		RotationVelocity(0, -20.0000, 20.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(1.0000);
		Position()
		{
			LifeTime(1.0000)
			Accelerate(0.0000, -0.5000, 0.0000);
		}
		Size(0)
		{
			LifeTime(3.0000)
			Scale(5.0000);
		}
		Color(0)
		{
			LifeTime(0.2000)
			Reach(255.0000,255.0000,255.0000,32.0000);
			Next()
			{
				LifeTime(0.8000)
				Reach(255.0000,255.0000,255.0000,0.0000);
			}
		}
	}
	Geometry()
	{
		BlendMode("NORMAL");
		Type("PARTICLE");
		Texture("com_sfx_smoke2");
	}
	ParticleEmitter("Spark_Emitter")
	{
		MaxParticles(-1.0000,-1.0000);
		StartDelay(0.0000,0.0000);
		BurstDelay(0.0050, 0.0050);
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
			Circle()
			{
				PositionX(0.0000,0.0000);
				PositionY(0.0000,0.0000);
				PositionZ(0.0000,0.0000);
			}
			Offset()
			{
				PositionX(-0.1000,0.1000);
				PositionY(-0.1000,0.1000);
				PositionZ(-0.1000,0.1000);
			}
			PositionScale(0.0000,0.0000);
			VelocityScale(0.0000,0.0000);
			InheritVelocityFactor(0.0000,0.0000);
			Size(0, 0.5000, 0.6000);
			Red(0, 255.0000, 255.0000);
			Green(0, 200.0000, 200.0000);
			Blue(0, 100.0000, 100.0000);
			Alpha(0, 255.0000, 255.0000);
			StartRotation(0, 0.0000, 20.0000);
			RotationVelocity(0, -90.0000, 90.0000);
			FadeInTime(0.0000);
		}
		Transformer()
		{
			LifeTime(0.1500);
			Position()
			{
				LifeTime(0.1500)
				Reach(0.0000, 0.0000, 0.0000);
			}
			Size(0)
			{
				LifeTime(0.1500)
				Scale(0.2500);
			}
			Color(0)
			{
				LifeTime(0.0500)
				Reach(255.0000,100.0000,0.0000,120.0000);
				Next()
				{
					LifeTime(0.1000)
					Reach(200.0000,50.0000,0.0000,20.0000);
				}
			}
		}
		Geometry()
		{
			BlendMode("ADDITIVE");
			Type("PARTICLE");
			Texture("com_sfx_flashball3");
		}
		ParticleEmitter("Flare")
		{
			MaxParticles(-1.0000,-1.0000);
			StartDelay(0.0000,0.0000);
			BurstDelay(0.0500, 0.0500);
			BurstCount(1.0000,1.0000);
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
				Size(0, 10.0000, 10.0000);
				Red(0, 255.0000, 255.0000);
				Green(0, 150.0000, 150.0000);
				Blue(0, 50.0000, 50.0000);
				Alpha(0, 50.0000, 80.0000);
				StartRotation(0, 0.0000, 0.0000);
				RotationVelocity(0, 0.0000, 0.0000);
				FadeInTime(0.0000);
			}
			Transformer()
			{
				LifeTime(0.1000);
				Position()
				{
					LifeTime(1.0000)
				}
				Size(0)
				{
					LifeTime(0.2000)
					Scale(1.0000);
				}
				Color(0)
				{
					LifeTime(0.1000)
					Reach(255.0000,150.0000,50.0000,0.0000);
				}
			}
			Geometry()
			{
				BlendMode("ADDITIVE");
				Type("PARTICLE");
				Texture("com_sfx_flare1");
			}
		}
	}
}
