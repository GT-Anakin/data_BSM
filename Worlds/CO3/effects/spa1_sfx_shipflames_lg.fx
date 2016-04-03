ParticleEmitter("Flames")
{
	MaxParticles(-1.0000,-1.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.2000, 0.3000);
	BurstCount(1.0000,1.0000);
	MaxLodDist(2000.0000);
	MinLodDist(1000.0000);
	BoundingRadius(30.0);
	SoundName("com_amb_fire_large defer")
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
		PositionScale(0.0000,0.0000);
		VelocityScale(0.2500,0.5000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 1.0000, 5.0000);
		Red(0, 255.0000, 255.0000);
		Green(0, 255.0000, 255.0000);
		Blue(0, 255.0000, 255.0000);
		Alpha(0, 0.0000, 0.0000);
		StartRotation(0, 0.0000, 360.0000);
		RotationVelocity(0, -20.0000, 20.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(2.0000);
		Position()
		{
			LifeTime(2.0000)
		}
		Size(0)
		{
			LifeTime(2.0000)
			Scale(5.0000);
		}
		Color(0)
		{
			LifeTime(0.5000)
			Move(0.0000,0.0000,0.0000,64.0000);
			Next()
			{
				LifeTime(1.5000)
				Move(128.0000,-50.0000,-50.0000,-64.0000);
			}
		}
	}
	Geometry()
	{
		BlendMode("ADDITIVE");
		Type("PARTICLE");
		Texture("spa1_sfx_explosion01");
		ParticleEmitter("BlackSmoke")
		{
			MaxParticles(3.0000,3.0000);
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
				VelocityScale(3.7500,3.7500);
				InheritVelocityFactor(0.1000,0.1000);
				Size(0, 0.5250, 1.0500);
				Red(0, 254.0000, 255.0000);
				Green(0, 172.0000, 179.0000);
				Blue(0, 75.0000, 89.0000);
				Alpha(0, 0.0000, 0.0000);
				StartRotation(0, -20.0000, 20.0000);
				RotationVelocity(0, -20.0000, 20.0000);
				FadeInTime(0.0000);
			}
			Transformer()
			{
				LifeTime(0.6250);
				Position()
				{
					LifeTime(0.7500)
					Scale(0.0000);
				}
				Size(0)
				{
					LifeTime(0.6250)
					Scale(5.0000);
				}
				Color(0)
				{
					LifeTime(0.0050)
					Move(0.0000,0.0000,0.0000,48.0000);
					Next()
					{
						LifeTime(0.6200)
						Move(0.0000,0.0000,0.0000,-64.0000);
					}
				}
			}
			Geometry()
			{
				BlendMode("ADDITIVE");
				Type("PARTICLE");
				Texture("thicksmoke3");
			}
		}
	}
	ParticleEmitter("CloudFlames")
	{
		MaxParticles(-1.0000,-1.0000);
		StartDelay(0.0000,0.0000);
		BurstDelay(0.1000, 0.6000);
		BurstCount(1.0000,1.0000);
		MaxLodDist(2000.0000);
		MinLodDist(1000.0000);
		BoundingRadius(30.0);
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
			PositionScale(0.0000,0.0000);
			VelocityScale(0.5000,1.0000);
			InheritVelocityFactor(0.0000,0.0000);
			Size(0, 3.0000, 6.0000);
			Red(0, 255.0000, 255.0000);
			Green(0, 240.0000, 240.0000);
			Blue(0, 220.0000, 220.0000);
			Alpha(0, 0.0000, 0.0000);
			StartRotation(0, 0.0000, 360.0000);
			RotationVelocity(0, -10.0000, 10.0000);
			FadeInTime(0.0000);
		}
		Transformer()
		{
			LifeTime(2.0000);
			Position()
			{
				LifeTime(2.0000)
			}
			Size(0)
			{
				LifeTime(2.0000)
				Scale(4.0000);
			}
			Color(0)
			{
				LifeTime(0.1000)
				Move(0.0000,-50.0000,-100.0000,96.0000);
				Next()
				{
					LifeTime(1.9000)
					Move(0.0000,-100.0000,-200.0000,-96.0000);
				}
			}
		}
		Geometry()
		{
			BlendMode("ADDITIVE");
			Type("PARTICLE");
			Texture("spa1_sfx_explosion02");
			ParticleEmitter("BlackSmoke")
			{
				MaxParticles(3.0000,3.0000);
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
					VelocityScale(3.7500,3.7500);
					InheritVelocityFactor(0.1000,0.1000);
					Size(0, 0.5250, 1.0500);
					Red(0, 254.0000, 255.0000);
					Green(0, 172.0000, 179.0000);
					Blue(0, 75.0000, 89.0000);
					Alpha(0, 0.0000, 0.0000);
					StartRotation(0, -20.0000, 20.0000);
					RotationVelocity(0, -20.0000, 20.0000);
					FadeInTime(0.0000);
				}
				Transformer()
				{
					LifeTime(0.6250);
					Position()
					{
						LifeTime(0.7500)
						Scale(0.0000);
					}
					Size(0)
					{
						LifeTime(0.6250)
						Scale(5.0000);
					}
					Color(0)
					{
						LifeTime(0.0050)
						Move(0.0000,0.0000,0.0000,48.0000);
						Next()
						{
							LifeTime(0.6200)
							Move(0.0000,0.0000,0.0000,-64.0000);
						}
					}
				}
				Geometry()
				{
					BlendMode("ADDITIVE");
					Type("PARTICLE");
					Texture("thicksmoke3");
				}
			}
		}
		ParticleEmitter("Embers")
		{
			MaxParticles(-1.0000,-1.0000);
			StartDelay(0.0000,0.0000);
			BurstDelay(0.2500, 0.4500);
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
				VelocityScale(5.0000,5.0000);
				InheritVelocityFactor(0.0000,0.0000);
				Size(0, 2.0000, 6.0000);
				Red(0, 200.0000, 255.0000);
				Green(0, 128.0000, 128.0000);
				Blue(0, 64.0000, 64.0000);
				Alpha(0, 0.0000, 0.0000);
				StartRotation(0, 0.0000, 360.0000);
				RotationVelocity(0, -25.0000, 25.0000);
				FadeInTime(0.0000);
			}
			Transformer()
			{
				LifeTime(1.0000);
				Position()
				{
					LifeTime(1.0000)
				}
				Size(0)
				{
					LifeTime(1.0000)
					Scale(3.0000);
				}
				Color(0)
				{
					LifeTime(0.0500)
					Move(50.0000,50.0000,50.0000,255.0000);
					Next()
					{
						LifeTime(0.9500)
						Move(-50.0000,-50.0000,-50.0000,-255.0000);
					}
				}
			}
			Geometry()
			{
				BlendMode("ADDITIVE");
				Type("PARTICLE");
				Texture("spa1_sfx_asteroidshatterdust1");
			}
		}
	}
}
