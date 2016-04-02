ParticleEmitter("Explosion")
{
	MaxParticles(6.0000,6.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.0010, 0.0010);
	BurstCount(6.0000,6.0000);
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
			PositionX(-36.0000,36.0000);
			PositionY(-36.0000,36.0000);
			PositionZ(-36.0000,36.0000);
		}
		Offset()
		{
			PositionX(0.0000,0.0000);
			PositionY(0.0000,0.0000);
			PositionZ(0.0000,0.0000);
		}
		PositionScale(0.0000,0.0000);
		VelocityScale(600.0000,860.0000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 64.8000, 129.6000);
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
		LifeTime(4.0000);
		Position()
		{
			LifeTime(2.0000)
		}
		Size(0)
		{
			LifeTime(3.0000)
		}
		Color(0)
		{
			LifeTime(3.0000)
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
			MaxParticles(3.0000,3.0000);
			StartDelay(0.0000,0.0000);
			BurstDelay(0.0250, 0.0250);
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
					PositionX(-64.8000,64.8000);
					PositionY(-64.8000,64.8000);
					PositionZ(-64.8000,64.8000);
				}
				Offset()
				{
					PositionX(0.0000,0.0000);
					PositionY(0.0000,0.0000);
					PositionZ(0.0000,0.0000);
				}
				PositionScale(0.0000,0.0000);
				VelocityScale(8.1000,8.1000);
				InheritVelocityFactor(0.1000,0.1000);
				Size(0, 18.0000, 54.0000);
				Red(0, 255.0000, 255.0000);
				Green(0, 215.0000, 215.0000);
				Blue(0, 159.0000, 159.0000);
				Alpha(0, 0.0000, 128.0000);
				StartRotation(0, 0.0000, 360.0000);
				RotationVelocity(0, -40.0000, 40.0000);
				FadeInTime(0.0000);
			}
			Transformer()
			{
				LifeTime(3.0000);
				Position()
				{
					LifeTime(3.0000)
					Scale(0.0000);
				}
				Size(0)
				{
					LifeTime(0.5000)
					Scale(2.5000);
					Next()
					{
						LifeTime(2.5000)
						Scale(2.5000);
					}
				}
				Color(0)
				{
					LifeTime(0.2000)
					Move(0.0000,0.0000,0.0000,64.0000);
					Next()
					{
						LifeTime(2.8000)
						Move(0.0000,-150.0000,-150.0000,-192.0000);
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
							PositionX(-170.1000,170.1000);
							PositionY(-170.1000,170.1000);
							PositionZ(-170.1000,170.1000);
						}
						Offset()
						{
							PositionX(-8.5104,8.5104);
							PositionY(-8.5104,8.5104);
							PositionZ(-8.5104,8.5104);
						}
						PositionScale(0.0000,0.0000);
						VelocityScale(42.5250,42.5250);
						InheritVelocityFactor(0.2000,0.2000);
						Size(0, 85.0536, 119.0736);
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
						LifeTime(3.0000);
						Position()
						{
							LifeTime(3.0000)
							Scale(0.0000);
						}
						Size(0)
						{
							LifeTime(4.0000)
							Scale(6.0000);
						}
						Color(0)
						{
							LifeTime(0.2000)
							Move(0.0000,0.0000,0.0000,255.0000);
							Next()
							{
								LifeTime(2.8000)
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
			ParticleEmitter("Flames")
			{
				MaxParticles(3.0000,3.0000);
				StartDelay(0.0000,0.0000);
				BurstDelay(0.0250, 0.0250);
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
						PositionX(-64.8000,64.8000);
						PositionY(-64.8000,64.8000);
						PositionZ(-64.8000,64.8000);
					}
					Offset()
					{
						PositionX(-6.4800,6.4800);
						PositionY(-6.4800,6.4800);
						PositionZ(-6.4800,6.4800);
					}
					PositionScale(0.0000,0.0000);
					VelocityScale(16.2000,16.2000);
					InheritVelocityFactor(0.1000,0.1000);
					Size(0, 7.2000, 14.4000);
					Red(0, 255.0000, 255.0000);
					Green(0, 255.0000, 255.0000);
					Blue(0, 255.0000, 255.0000);
					Alpha(0, 0.0000, 32.0000);
					StartRotation(0, 0.0000, 255.0000);
					RotationVelocity(0, -50.0000, 50.0000);
					FadeInTime(0.0000);
				}
				Transformer()
				{
					LifeTime(2.0000);
					Position()
					{
						LifeTime(2.0000)
						Scale(0.0000);
					}
					Size(0)
					{
						LifeTime(0.2000)
						Scale(4.0000);
						Next()
						{
							LifeTime(1.8000)
							Scale(3.0000);
						}
					}
					Color(0)
					{
						LifeTime(0.2000)
						Move(0.0000,0.0000,0.0000,64.0000);
						Next()
						{
							LifeTime(1.8000)
							Move(0.0000,0.0000,0.0000,-96.0000);
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
								PositionX(-170.1000,170.1000);
								PositionY(-170.1000,170.1000);
								PositionZ(-170.1000,170.1000);
							}
							Offset()
							{
								PositionX(-8.5104,8.5104);
								PositionY(-8.5104,8.5104);
								PositionZ(-8.5104,8.5104);
							}
							PositionScale(0.0000,0.0000);
							VelocityScale(60.7500,60.7500);
							InheritVelocityFactor(0.1000,0.1000);
							Size(0, 34.0200, 68.0400);
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
							LifeTime(2.5000);
							Position()
							{
								LifeTime(3.0000)
								Scale(0.0000);
							}
							Size(0)
							{
								LifeTime(2.5000)
								Scale(5.0000);
							}
							Color(0)
							{
								LifeTime(0.0200)
								Move(0.0000,0.0000,0.0000,48.0000);
								Next()
								{
									LifeTime(2.4800)
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
			}
		}
	}
	ParticleEmitter("Flare")
	{
		MaxParticles(10.0000,10.0000);
		StartDelay(0.0000,0.0000);
		BurstDelay(0.0000, 0.0000);
		BurstCount(10.0000,10.0000);
		MaxLodDist(10000.0000);
		MinLodDist(9000.0000);
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
			Size(0, 216.0000, 216.0000);
			Red(0, 255.0000, 255.0000);
			Green(0, 240.0000, 240.0000);
			Blue(0, 200.0000, 200.0000);
			Alpha(0, 32.0000, 64.0000);
			StartRotation(0, 1.0000, 3.0000);
			RotationVelocity(0, 0.0000, 0.0000);
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
				LifeTime(0.2000)
			}
			Color(0)
			{
				LifeTime(2.0000)
				Move(0.0000,0.0000,0.0000,-64.0000);
			}
		}
		Geometry()
		{
			BlendMode("ADDITIVE");
			Type("BILLBOARD");
			Texture("com_sfx_flashball2");
		}
		ParticleEmitter("Embers")
		{
			MaxParticles(30.0000,30.0000);
			StartDelay(0.0000,0.0000);
			BurstDelay(0.0010, 0.0010);
			BurstCount(30.0000,30.0000);
			MaxLodDist(10000.0000);
			MinLodDist(9000.0000);
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
					PositionX(-36.0000,36.0000);
					PositionY(-36.0000,36.0000);
					PositionZ(-36.0000,36.0000);
				}
				Offset()
				{
					PositionX(0.0000,0.0000);
					PositionY(0.0000,0.0000);
					PositionZ(0.0000,0.0000);
				}
				PositionScale(0.0000,0.0000);
				VelocityScale(22.0000,67.0000);
				InheritVelocityFactor(0.0000,0.0000);
				Size(0, 72.0000, 72.0000);
				Red(0, 255.0000, 255.0000);
				Green(0, 80.0000, 80.0000);
				Blue(0, 0.0000, 0.0000);
				Alpha(0, 255.0000, 255.0000);
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
					Scale(0.0000);
				}
				Size(0)
				{
					LifeTime(2.0000)
					Scale(2.0000);
				}
				Color(0)
				{
					LifeTime(2.0000)
					Reach(255.0000,80.0000,0.0000,0.0000);
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
