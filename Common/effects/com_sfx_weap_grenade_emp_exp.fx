ParticleEmitter("EMP_Clouds")
{
	MaxParticles(10.0000,10.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.0500, 0.0500);
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
		PositionScale(1.0000,1.0000);
		VelocityScale(2.0000,2.0000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 0.0500, 0.3500);
		Red(0, 4.0000, 4.0000);
		Green(0, 40.0000, 40.0000);
		Blue(0, 255.0000, 255.0000);
		Alpha(0, 0.0000, 0.0000);
		StartRotation(0, 0.0000, 360.0000);
		RotationVelocity(0, -20.0000, 20.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(1.0000);
		Position()
		{
			LifeTime(3.0000)
			Accelerate(0.8000, -0.1000, 0.8000);
		}
		Size(0)
		{
			LifeTime(0.1000)
			Scale(10.0000);
			Next()
			{
				LifeTime(0.9000)
				Scale(3.0000);
			}
		}
		Color(0)
		{
			LifeTime(0.1000)
			Move(0.0000,0.0000,0.0000,200.0000);
			Next()
			{
				LifeTime(0.9000)
				Move(0.0000,0.0000,0.0000,-200.0000);
			}
		}
	}
	Geometry()
	{
		BlendMode("ADDITIVE");
		Type("PARTICLE");
		Texture("com_sfx_explosion4");
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
			Size(0, 0.1000, 0.1000);
			Red(0, 255.0000, 255.0000);
			Green(0, 255.0000, 255.0000);
			Blue(0, 25.0000, 255.0000);
			Alpha(0, 255.0000, 255.0000);
			StartRotation(0, 0.0000, 360.0000);
			RotationVelocity(0, 0.0000, 0.0000);
			FadeInTime(0.0000);
		}
		Transformer()
		{
			LifeTime(0.2500);
			Position()
			{
				LifeTime(1.0000)
			}
			Size(0)
			{
				LifeTime(0.2500)
				Scale(50.0000);
			}
			Color(0)
			{
				LifeTime(0.2500)
				Reach(0.0000,255.0000,255.0000,0.0000);
			}
		}
		Geometry()
		{
			BlendMode("ADDITIVE");
			Type("PARTICLE");
			Texture("com_sfx_flashring1");
		}
		ParticleEmitter("Schrap")
		{
			MaxParticles(20.0000,20.0000);
			StartDelay(0.0000,0.0000);
			BurstDelay(0.0100, 0.0100);
			BurstCount(1.0000,1.0000);
			MaxLodDist(50.0000);
			MinLodDist(10.0000);
			BoundingRadius(5.0);
			SoundName("")
			Size(1.0000, 1.0000);
			Red(255.0000, 255.0000);
			Green(255.0000, 255.0000);
			Blue(255.0000, 255.0000);
			Alpha(255.0000, 255.0000);
			Spawner()
			{
				Circle()
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
				VelocityScale(3.0000,3.0000);
				InheritVelocityFactor(0.0000,0.0000);
				Size(0, 0.5000, 1.0000);
				Red(0, 0.0000, 128.0000);
				Green(0, 0.0000, 236.0000);
				Blue(0, 255.0000, 255.0000);
				Alpha(0, 32.0000, 32.0000);
				StartRotation(0, 0.0000, 360.0000);
				RotationVelocity(0, -20.0000, 20.0000);
				FadeInTime(0.0000);
			}
			Transformer()
			{
				LifeTime(1.5000);
				Position()
				{
					LifeTime(1.5000)
					Accelerate(0.0000, -5.0000, 0.0000);
				}
				Size(0)
				{
					LifeTime(0.1000)
					Scale(3.0000);
					Next()
					{
						LifeTime(1.4000)
						Scale(2.0000);
					}
				}
				Color(0)
				{
					LifeTime(1.0000)
					Move(0.0000,0.0000,0.0000,16.0000);
					Next()
					{
						LifeTime(0.5000)
						Move(0.0000,0.0000,0.0000,-170.0000);
					}
				}
			}
			Geometry()
			{
				BlendMode("ADDITIVE");
				Type("PARTICLE");
				Texture("com_sfx_dirt1");
			}
			ParticleEmitter("Sparks")
			{
				MaxParticles(50.0000,50.0000);
				StartDelay(0.0000,0.0000);
				BurstDelay(0.0500, 0.0500);
				BurstCount(2.0000,2.0000);
				MaxLodDist(50.0000);
				MinLodDist(10.0000);
				BoundingRadius(5.0);
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
						PositionX(0.0000,0.0000);
						PositionY(0.0000,0.0000);
						PositionZ(0.0000,0.0000);
					}
					Offset()
					{
						PositionX(-2.0000,2.0000);
						PositionY(-2.0000,2.0000);
						PositionZ(-2.0000,2.0000);
					}
					PositionScale(0.0000,0.0000);
					VelocityScale(0.0000,0.0000);
					InheritVelocityFactor(0.0000,0.0000);
					Size(0, 0.0200, 0.0700);
					Red(0, 0.0000, 255.0000);
					Green(0, 255.0000, 255.0000);
					Blue(0, 150.0000, 255.0000);
					Alpha(0, 255.0000, 255.0000);
					StartRotation(0, 0.0000, 360.0000);
					RotationVelocity(0, 0.0000, 0.0000);
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
						Scale(20.0000);
					}
					Color(0)
					{
						LifeTime(0.5000)
						Reach(255.0000,255.0000,100.0000,0.0000);
					}
				}
				Geometry()
				{
					BlendMode("ADDITIVE");
					Type("PARTICLE");
					Texture("com_sfx_flashball3");
				}
			}
		}
	}
}
