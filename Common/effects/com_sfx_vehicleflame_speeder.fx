ParticleEmitter("Smoketrail")
{
	MaxParticles(-1.0000,-1.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.1000, 0.1000);
	BurstCount(1.0000,1.0000);
	MaxLodDist(2200.0000);
	MinLodDist(2000.0000);
	BoundingRadius(5.0);
	SoundName("com_amb_fire defer")
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
		Size(0, 0.3000, 0.3000);
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
			LifeTime(0.5000)
			Accelerate(0.0000, 1.0000, 0.0000);
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
			Size(0, 0.2500, 0.5000);
			Red(0, 64.0000, 64.0000);
			Green(0, 64.0000, 64.0000);
			Blue(0, 64.0000, 64.0000);
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
				LifeTime(0.5000)
				Accelerate(0.0000, 3.0000, 0.0000);
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
			Texture("com_sfx_smoke3");
		}
		ParticleEmitter("Flames")
		{
			MaxParticles(-1.0000,-1.0000);
			StartDelay(0.0000,0.0000);
			BurstDelay(0.0300, 0.0300);
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
					PositionX(-0.1000,0.1000);
					PositionY(-0.1000,0.1000);
					PositionZ(-0.1000,0.1000);
				}
				PositionScale(0.0000,0.0000);
				VelocityScale(0.0000,0.0000);
				InheritVelocityFactor(0.2500,0.2500);
				Size(0, 0.0500, 0.1000);
				Red(0, 200.0000, 200.0000);
				Green(0, 125.0000, 125.0000);
				Blue(0, 0.0000, 0.0000);
				Alpha(0, 0.0000, 64.0000);
				StartRotation(0, 0.0000, 0.0000);
				RotationVelocity(0, 0.0000, 0.0000);
				FadeInTime(0.0000);
			}
			Transformer()
			{
				LifeTime(0.1500);
				Position()
				{
					LifeTime(0.2000)
					Accelerate(0.0000, 8.0000, 0.0000);
				}
				Size(0)
				{
					LifeTime(0.2000)
					Scale(1.0000);
				}
				Color(0)
				{
					LifeTime(0.0500)
					Move(0.0000,0.0000,0.0000,64.0000);
					Next()
					{
						LifeTime(0.1000)
						Move(0.0000,0.0000,0.0000,-64.0000);
					}
				}
			}
			Geometry()
			{
				BlendMode("ADDITIVE");
				Type("SPARK");
				SparkLength(0.1000);
				Texture("com_sfx_flames1");
			}
			ParticleEmitter("Flames")
			{
				MaxParticles(-1.0000,-1.0000);
				StartDelay(0.1000,0.1000);
				BurstDelay(0.0300, 0.0300);
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
						PositionX(-0.1000,0.1000);
						PositionY(-0.1000,0.1000);
						PositionZ(-0.1000,0.1000);
					}
					PositionScale(0.0000,0.0000);
					VelocityScale(0.0000,0.0000);
					InheritVelocityFactor(0.2500,0.2500);
					Size(0, 0.0500, 0.1000);
					Red(0, 200.0000, 200.0000);
					Green(0, 125.0000, 125.0000);
					Blue(0, 50.0000, 50.0000);
					Alpha(0, 0.0000, 64.0000);
					StartRotation(0, 0.0000, 0.0000);
					RotationVelocity(0, 0.0000, 0.0000);
					FadeInTime(0.0000);
				}
				Transformer()
				{
					LifeTime(0.1500);
					Position()
					{
						LifeTime(0.2000)
						Accelerate(0.0000, 8.0000, 0.0000);
					}
					Size(0)
					{
						LifeTime(0.2000)
						Scale(1.0000);
					}
					Color(0)
					{
						LifeTime(0.0500)
						Move(0.0000,0.0000,0.0000,64.0000);
						Next()
						{
							LifeTime(0.1000)
							Move(0.0000,0.0000,0.0000,-64.0000);
						}
					}
				}
				Geometry()
				{
					BlendMode("ADDITIVE");
					Type("SPARK");
					SparkLength(0.1000);
					Texture("com_sfx_flames2");
				}
				ParticleEmitter("Flames")
				{
					MaxParticles(-1.0000,-1.0000);
					StartDelay(0.2000,0.2000);
					BurstDelay(0.0300, 0.0300);
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
							PositionX(-0.1000,0.1000);
							PositionY(-0.1000,0.1000);
							PositionZ(-0.1000,0.1000);
						}
						PositionScale(0.0000,0.0000);
						VelocityScale(0.0000,0.0000);
						InheritVelocityFactor(0.2500,0.2500);
						Size(0, 0.0500, 0.1000);
						Red(0, 200.0000, 200.0000);
						Green(0, 125.0000, 125.0000);
						Blue(0, 50.0000, 50.0000);
						Alpha(0, 0.0000, 96.0000);
						StartRotation(0, 0.0000, 0.0000);
						RotationVelocity(0, 0.0000, 0.0000);
						FadeInTime(0.0000);
					}
					Transformer()
					{
						LifeTime(0.1500);
						Position()
						{
							LifeTime(0.2000)
							Accelerate(0.0000, 8.0000, 0.0000);
						}
						Size(0)
						{
							LifeTime(0.2000)
							Scale(1.0000);
						}
						Color(0)
						{
							LifeTime(0.0500)
							Move(0.0000,0.0000,0.0000,64.0000);
							Next()
							{
								LifeTime(0.1000)
								Move(0.0000,0.0000,0.0000,-64.0000);
							}
						}
					}
					Geometry()
					{
						BlendMode("ADDITIVE");
						Type("SPARK");
						SparkLength(0.1000);
						Texture("com_sfx_flames3");
					}
				}
			}
		}
	}
}
