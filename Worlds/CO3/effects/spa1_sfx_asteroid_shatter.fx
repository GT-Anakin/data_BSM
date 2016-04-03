ParticleEmitter("Explosion")
{
	MaxParticles(5.0000,5.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.0010, 0.0010);
	BurstCount(5.0000,5.0000);
	MaxLodDist(10000.0000);
	MinLodDist(9000.0000);
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
		VelocityScale(50.0000,150.0000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 1.8000, 3.6000);
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
		LifeTime(2.0000);
		Position()
		{
			LifeTime(1.0000)
		}
		Size(0)
		{
			LifeTime(1.5000)
		}
		Color(0)
		{
			LifeTime(1.5000)
			Reach(255.0000,255.0000,255.0000,255.0000);
		}
	}
	Geometry()
	{
		BlendMode("NORMAL");
		Type("EMITTER");
		Texture("explode3");
		ParticleEmitter("Smoke")
		{
			MaxParticles(4.0000,4.0000);
			StartDelay(0.0000,0.0000);
			BurstDelay(0.0010, 0.0010);
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
					PositionX(-1.8000,1.8000);
					PositionY(-1.8000,1.8000);
					PositionZ(-1.8000,1.8000);
				}
				Offset()
				{
					PositionX(0.0000,0.0000);
					PositionY(0.0000,0.0000);
					PositionZ(0.0000,0.0000);
				}
				PositionScale(0.0000,0.0000);
				VelocityScale(0.9000,0.9000);
				InheritVelocityFactor(0.2500,0.2500);
				Size(0, 10.0000, 30.0000);
				Red(0, 100.0000, 100.0000);
				Green(0, 100.0000, 100.0000);
				Blue(0, 100.0000, 100.0000);
				Alpha(0, 125.0000, 255.0000);
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
					Scale(0.0000);
				}
				Size(0)
				{
					LifeTime(1.5000)
					Scale(4.0000);
				}
				Color(0)
				{
					LifeTime(1.5000)
					Move(0.0000,0.0000,0.0000,-255.0000);
				}
			}
			Geometry()
			{
				BlendMode("NORMAL");
				Type("PARTICLE");
				Texture("com_sfx_smoke3");
				ParticleEmitter("BlackSmoke")
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
							PositionX(-4.7250,4.7250);
							PositionY(-4.7250,4.7250);
							PositionZ(-4.7250,4.7250);
						}
						Offset()
						{
							PositionX(-0.2364,0.2364);
							PositionY(-0.2364,0.2364);
							PositionZ(-0.2364,0.2364);
						}
						PositionScale(0.0000,0.0000);
						VelocityScale(4.7250,4.7250);
						InheritVelocityFactor(0.2000,0.2000);
						Size(0, 2.3626, 3.3076);
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
						LifeTime(1.5000);
						Position()
						{
							LifeTime(1.5000)
							Scale(0.0000);
						}
						Size(0)
						{
							LifeTime(2.0000)
							Scale(6.0000);
						}
						Color(0)
						{
							LifeTime(0.1000)
							Move(0.0000,0.0000,0.0000,255.0000);
							Next()
							{
								LifeTime(1.4000)
								Move(0.0000,0.0000,0.0000,-255.0000);
							}
						}
					}
					Geometry()
					{
						BlendMode("NORMAL");
						Type("PARTICLE");
						Texture("thicksmoke3");
					}
				}
			}
		}
	}
	ParticleEmitter("SlowerChunks")
	{
		MaxParticles(6.0000,6.0000);
		StartDelay(0.0000,0.0000);
		BurstDelay(0.1000, 0.1000);
		BurstCount(6.0000,6.0000);
		MaxLodDist(10000.0000);
		MinLodDist(9000.0000);
		BoundingRadius(30.0);
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
			Size(0, 16.0000, 28.0000);
			Red(0, 255.0000, 255.0000);
			Green(0, 255.0000, 255.0000);
			Blue(0, 255.0000, 255.0000);
			Alpha(0, 0.0000, 0.0000);
			StartRotation(0, 0.0000, 360.0000);
			RotationVelocity(0, -1.0000, 1.0000);
			FadeInTime(0.0000);
		}
		Transformer()
		{
			LifeTime(1.1250);
			Position()
			{
				LifeTime(1.1250)
			}
			Size(0)
			{
				LifeTime(1.8750)
				Scale(3.0000);
			}
			Color(0)
			{
				LifeTime(0.1000)
				Move(0.0000,0.0000,0.0000,255.0000);
				Next()
				{
					LifeTime(1.0000)
					Move(0.0000,0.0000,0.0000,-255.0000);
				}
			}
		}
		Geometry()
		{
			BlendMode("NORMAL");
			Type("PARTICLE");
			Texture("spa1_sfx_asteroidshatterdust2");
		}
		ParticleEmitter("SlowChunks")
		{
			MaxParticles(6.0000,6.0000);
			StartDelay(0.0000,0.0000);
			BurstDelay(0.1000, 0.1000);
			BurstCount(6.0000,6.0000);
			MaxLodDist(10000.0000);
			MinLodDist(9000.0000);
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
					PositionX(-4.0000,4.0000);
					PositionY(-4.0000,4.0000);
					PositionZ(-4.0000,4.0000);
				}
				Offset()
				{
					PositionX(0.0000,0.0000);
					PositionY(0.0000,0.0000);
					PositionZ(0.0000,0.0000);
				}
				PositionScale(0.0000,0.0000);
				VelocityScale(0.0000,8.0000);
				InheritVelocityFactor(0.0000,0.0000);
				Size(0, 20.0000, 24.0000);
				Hue(0, 0.0000, 0.0000);
				Saturation(0, 0.0000, 0.0000);
				Value(0, 255.0000, 255.0000);
				Alpha(0, 255.0000, 255.0000);
				StartRotation(0, 0.0000, 360.0000);
				RotationVelocity(0, -1.0000, 1.0000);
				FadeInTime(0.0000);
			}
			Transformer()
			{
				LifeTime(0.7500);
				Position()
				{
					LifeTime(1.8750)
				}
				Size(0)
				{
					LifeTime(1.8750)
					Scale(6.0000);
				}
				Color(0)
				{
					LifeTime(0.8000)
					Move(0.0000,0.0000,0.0000,-255.0000);
				}
			}
			Geometry()
			{
				BlendMode("NORMAL");
				Type("PARTICLE");
				Texture("spa1_sfx_asteroidshatterdust1");
			}
			ParticleEmitter("FastChunks")
			{
				MaxParticles(16.0000,16.0000);
				StartDelay(0.0000,0.0000);
				BurstDelay(0.1000, 0.1000);
				BurstCount(16.0000,16.0000);
				MaxLodDist(10000.0000);
				MinLodDist(9000.0000);
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
						PositionX(-4.0000,4.0000);
						PositionY(-4.0000,4.0000);
						PositionZ(-4.0000,4.0000);
					}
					Offset()
					{
						PositionX(0.0000,0.0000);
						PositionY(0.0000,0.0000);
						PositionZ(0.0000,0.0000);
					}
					PositionScale(0.0000,0.0000);
					VelocityScale(4.0000,44.0000);
					InheritVelocityFactor(0.0000,0.0000);
					Size(0, 8.0000, 20.0000);
					Hue(0, 0.0000, 0.0000);
					Saturation(0, 0.0000, 0.0000);
					Value(0, 255.0000, 255.0000);
					Alpha(0, 255.0000, 255.0000);
					StartRotation(0, 0.0000, 360.0000);
					RotationVelocity(0, -5.0000, 5.0000);
					FadeInTime(0.0000);
				}
				Transformer()
				{
					LifeTime(0.3750);
					Position()
					{
						LifeTime(1.8750)
					}
					Size(0)
					{
						LifeTime(1.8750)
						Scale(8.0000);
					}
					Color(0)
					{
						LifeTime(0.4000)
						Move(0.0000,0.0000,0.0000,-255.0000);
					}
				}
				Geometry()
				{
					BlendMode("NORMAL");
					Type("PARTICLE");
					Texture("spa1_sfx_asteroidshatterdust1");
				}
				ParticleEmitter("FasterChunks")
				{
					MaxParticles(20.0000,20.0000);
					StartDelay(0.0000,0.0000);
					BurstDelay(0.1000, 0.1000);
					BurstCount(20.0000,20.0000);
					MaxLodDist(10000.0000);
					MinLodDist(9000.0000);
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
							PositionX(-4.0000,4.0000);
							PositionY(-4.0000,4.0000);
							PositionZ(-4.0000,4.0000);
						}
						Offset()
						{
							PositionX(0.0000,0.0000);
							PositionY(0.0000,0.0000);
							PositionZ(0.0000,0.0000);
						}
						PositionScale(0.0000,0.0000);
						VelocityScale(4.0000,84.0000);
						InheritVelocityFactor(0.0000,0.0000);
						Size(0, 8.0000, 20.0000);
						Hue(0, 0.0000, 0.0000);
						Saturation(0, 0.0000, 0.0000);
						Value(0, 255.0000, 255.0000);
						Alpha(0, 255.0000, 255.0000);
						StartRotation(0, 0.0000, 360.0000);
						RotationVelocity(0, -5.0000, 5.0000);
						FadeInTime(0.0000);
					}
					Transformer()
					{
						LifeTime(0.1875);
						Position()
						{
							LifeTime(0.1875)
						}
						Size(0)
						{
							LifeTime(1.8750)
							Scale(8.0000);
						}
						Color(0)
						{
							LifeTime(0.2000)
							Move(0.0000,0.0000,0.0000,-255.0000);
						}
					}
					Geometry()
					{
						BlendMode("NORMAL");
						Type("PARTICLE");
						Texture("spa1_sfx_asteroidshatterdust1");
					}
				}
			}
		}
	}
}
