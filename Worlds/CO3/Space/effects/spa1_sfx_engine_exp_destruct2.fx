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
			PositionX(-9.0000,9.0000);
			PositionY(0.0000,18.0000);
			PositionZ(-9.0000,9.0000);
		}
		Offset()
		{
			PositionX(0.0000,0.0000);
			PositionY(0.0000,0.0000);
			PositionZ(0.0000,0.0000);
		}
		PositionScale(0.0000,0.0000);
		VelocityScale(315.0000,450.0000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 16.2000, 32.4000);
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
					PositionX(-16.2000,16.2000);
					PositionY(-16.2000,16.2000);
					PositionZ(-16.2000,16.2000);
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
				Size(0, 4.5000, 13.5000);
				Red(0, 255.0000, 255.0000);
				Green(0, 215.0000, 215.0000);
				Blue(0, 159.0000, 159.0000);
				Alpha(0, 0.0000, 32.0000);
				StartRotation(0, 0.0000, 360.0000);
				RotationVelocity(0, -40.0000, 40.0000);
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
					LifeTime(0.2500)
					Scale(2.5000);
					Next()
					{
						LifeTime(1.2500)
						Scale(2.5000);
					}
				}
				Color(0)
				{
					LifeTime(0.1000)
					Move(0.0000,0.0000,0.0000,64.0000);
					Next()
					{
						LifeTime(1.4000)
						Move(0.0000,-150.0000,-150.0000,-96.0000);
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
							PositionX(-42.5250,42.5250);
							PositionY(-42.5250,42.5250);
							PositionZ(-42.5250,42.5250);
						}
						Offset()
						{
							PositionX(-2.1276,2.1276);
							PositionY(-2.1276,2.1276);
							PositionZ(-2.1276,2.1276);
						}
						PositionScale(0.0000,0.0000);
						VelocityScale(42.5250,42.5250);
						InheritVelocityFactor(0.2000,0.2000);
						Size(0, 21.2634, 29.7684);
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
						PositionX(-16.2000,16.2000);
						PositionY(-16.2000,16.2000);
						PositionZ(-16.2000,16.2000);
					}
					Offset()
					{
						PositionX(-1.6200,1.6200);
						PositionY(-1.6200,1.6200);
						PositionZ(-1.6200,1.6200);
					}
					PositionScale(0.0000,0.0000);
					VelocityScale(16.2000,16.2000);
					InheritVelocityFactor(0.1000,0.1000);
					Size(0, 1.8000, 3.6000);
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
					LifeTime(1.0000);
					Position()
					{
						LifeTime(1.0000)
						Scale(0.0000);
					}
					Size(0)
					{
						LifeTime(0.1000)
						Scale(4.0000);
						Next()
						{
							LifeTime(0.9000)
							Scale(3.0000);
						}
					}
					Color(0)
					{
						LifeTime(0.1000)
						Move(0.0000,0.0000,0.0000,64.0000);
						Next()
						{
							LifeTime(0.9000)
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
								PositionX(-42.5250,42.5250);
								PositionY(-42.5250,42.5250);
								PositionZ(-42.5250,42.5250);
							}
							Offset()
							{
								PositionX(-2.1276,2.1276);
								PositionY(-2.1276,2.1276);
								PositionZ(-2.1276,2.1276);
							}
							PositionScale(0.0000,0.0000);
							VelocityScale(60.7500,60.7500);
							InheritVelocityFactor(0.1000,0.1000);
							Size(0, 8.5050, 17.0100);
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
							LifeTime(1.2500);
							Position()
							{
								LifeTime(1.5000)
								Scale(0.0000);
							}
							Size(0)
							{
								LifeTime(1.2500)
								Scale(5.0000);
							}
							Color(0)
							{
								LifeTime(0.0100)
								Move(0.0000,0.0000,0.0000,48.0000);
								Next()
								{
									LifeTime(1.2400)
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
			Size(0, 54.0000, 54.0000);
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
			LifeTime(1.0000);
			Position()
			{
				LifeTime(1.0000)
			}
			Size(0)
			{
				LifeTime(0.1000)
			}
			Color(0)
			{
				LifeTime(1.0000)
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
					PositionX(-9.0000,9.0000);
					PositionY(0.0000,18.0000);
					PositionZ(-9.0000,9.0000);
				}
				Offset()
				{
					PositionX(0.0000,0.0000);
					PositionY(0.0000,0.0000);
					PositionZ(0.0000,0.0000);
				}
				PositionScale(0.0000,0.0000);
				VelocityScale(45.0000,135.0000);
				InheritVelocityFactor(0.0000,0.0000);
				Size(0, 18.0000, 18.0000);
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
				LifeTime(1.0000);
				Position()
				{
					LifeTime(1.0000)
					Scale(0.0000);
				}
				Size(0)
				{
					LifeTime(1.0000)
					Scale(2.0000);
				}
				Color(0)
				{
					LifeTime(1.0000)
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
