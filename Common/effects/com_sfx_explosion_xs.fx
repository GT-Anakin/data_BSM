ParticleEmitter("Explosion")
{
	MaxParticles(3.0000,3.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.0010, 0.0010);
	BurstCount(3.0000,3.0000);
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
			PositionX(-0.0350,0.0350);
			PositionY(0.3500,0.4200);
			PositionZ(-0.0350,0.0350);
		}
		Offset()
		{
			PositionX(0.0000,0.0000);
			PositionY(0.0000,0.0000);
			PositionZ(0.0000,0.0000);
		}
		PositionScale(0.0000,0.0000);
		VelocityScale(1.4000,2.1000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 0.2520, 0.5040);
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
		LifeTime(1.2800);
		Position()
		{
			LifeTime(0.6400)
		}
		Size(0)
		{
			LifeTime(0.9600)
		}
		Color(0)
		{
			LifeTime(0.9600)
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
			BurstDelay(0.0750, 0.0750);
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
					PositionX(-0.2520,0.2520);
					PositionY(-0.2520,0.2520);
					PositionZ(-0.2520,0.2520);
				}
				Offset()
				{
					PositionX(0.0000,0.0000);
					PositionY(0.0000,0.0000);
					PositionZ(0.0000,0.0000);
				}
				PositionScale(0.0000,0.0000);
				VelocityScale(0.1260,0.1260);
				InheritVelocityFactor(0.2500,0.2500);
				Size(0, 0.0700, 0.1400);
				Hue(0, 0.0000, 0.0000);
				Saturation(0, 0.0000, 0.0000);
				Value(0, 20.0000, 50.0000);
				Alpha(0, 128.0000, 192.0000);
				StartRotation(0, 0.0000, 360.0000);
				RotationVelocity(0, -90.0000, 90.0000);
				FadeInTime(0.0000);
			}
			Transformer()
			{
				LifeTime(0.9600);
				Position()
				{
					LifeTime(0.9600)
					Scale(0.0000);
				}
				Size(0)
				{
					LifeTime(0.1600)
					Scale(2.5000);
					Next()
					{
						LifeTime(0.8000)
						Scale(2.5000);
					}
				}
				Color(0)
				{
					LifeTime(1.0000)
					Move(0.0000,0.0000,100.0000,-192.0000);
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
							PositionX(-0.6615,0.6615);
							PositionY(-0.6615,0.6615);
							PositionZ(-0.6615,0.6615);
						}
						Offset()
						{
							PositionX(-0.0331,0.0331);
							PositionY(-0.0331,0.0331);
							PositionZ(-0.0331,0.0331);
						}
						PositionScale(0.0000,0.0000);
						VelocityScale(0.6615,0.6615);
						InheritVelocityFactor(0.2000,0.2000);
						Size(0, 0.3308, 0.4631);
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
						LifeTime(0.9600);
						Position()
						{
							LifeTime(0.9600)
							Scale(0.0000);
						}
						Size(0)
						{
							LifeTime(1.2800)
							Scale(6.0000);
						}
						Color(0)
						{
							LifeTime(0.0640)
							Move(0.0000,0.0000,0.0000,255.0000);
							Next()
							{
								LifeTime(0.8960)
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
				BurstDelay(0.0750, 0.0750);
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
						PositionX(-0.2520,0.2520);
						PositionY(-0.2520,0.2520);
						PositionZ(-0.2520,0.2520);
					}
					Offset()
					{
						PositionX(-0.0252,0.0252);
						PositionY(-0.0252,0.0252);
						PositionZ(-0.0252,0.0252);
					}
					PositionScale(0.0000,0.0000);
					VelocityScale(0.2520,0.2520);
					InheritVelocityFactor(0.2500,0.2500);
					Size(0, 0.0210, 0.0420);
					Red(0, 255.0000, 255.0000);
					Green(0, 204.0000, 233.0000);
					Blue(0, 98.0000, 185.0000);
					Alpha(0, 0.0000, 128.0000);
					StartRotation(0, 0.0000, 255.0000);
					RotationVelocity(0, -160.0000, 160.0000);
					FadeInTime(0.0000);
				}
				Transformer()
				{
					LifeTime(0.6400);
					Position()
					{
						LifeTime(0.6400)
						Scale(0.0000);
					}
					Size(0)
					{
						LifeTime(0.0640)
						Scale(4.0000);
						Next()
						{
							LifeTime(0.5760)
							Scale(3.0000);
						}
					}
					Color(0)
					{
						LifeTime(0.0640)
						Move(0.0000,-40.0000,-50.0000,128.0000);
						Next()
						{
							LifeTime(0.3200)
							Move(128.0000,-40.0000,-50.0000,-128.0000);
							Next()
							{
								LifeTime(0.2560)
								Move(128.0000,-50.0000,-50.0000,-128.0000);
							}
						}
					}
				}
				Geometry()
				{
					BlendMode("ADDITIVE");
					Type("PARTICLE");
					Texture("com_sfx_explosion1");
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
								PositionX(-0.6615,0.6615);
								PositionY(-0.6615,0.6615);
								PositionZ(-0.6615,0.6615);
							}
							Offset()
							{
								PositionX(-0.0331,0.0331);
								PositionY(-0.0331,0.0331);
								PositionZ(-0.0331,0.0331);
							}
							PositionScale(0.0000,0.0000);
							VelocityScale(0.9450,0.9450);
							InheritVelocityFactor(0.1000,0.1000);
							Size(0, 0.1323, 0.2646);
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
							LifeTime(0.8000);
							Position()
							{
								LifeTime(0.9600)
								Scale(0.0000);
							}
							Size(0)
							{
								LifeTime(0.8000)
								Scale(5.0000);
							}
							Color(0)
							{
								LifeTime(0.0064)
								Move(0.0000,0.0000,0.0000,48.0000);
								Next()
								{
									LifeTime(0.7936)
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
		MaxParticles(4.0000,4.0000);
		StartDelay(0.0000,0.0000);
		BurstDelay(0.0500, 0.0500);
		BurstCount(2.0000,2.0000);
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
				PositionY(0.7000,0.7000);
				PositionZ(0.0000,0.0000);
			}
			Offset()
			{
				PositionX(0.0000,0.0000);
				PositionY(0.0000,0.0000);
				PositionZ(0.0000,0.0000);
			}
			PositionScale(0.1000,0.1000);
			VelocityScale(2.0000,2.0000);
			InheritVelocityFactor(0.0000,0.0000);
			Size(0, 0.0900, 0.1600);
			Red(0, 255.0000, 255.0000);
			Green(0, 240.0000, 240.0000);
			Blue(0, 200.0000, 200.0000);
			Alpha(0, 128.0000, 128.0000);
			StartRotation(0, 0.1000, 0.3000);
			RotationVelocity(0, 0.0000, 0.0000);
			FadeInTime(0.0000);
		}
		Transformer()
		{
			LifeTime(0.6400);
			Position()
			{
				LifeTime(0.6400)
			}
			Size(0)
			{
				LifeTime(0.0800)
				Scale(2.0000);
			}
			Color(0)
			{
				LifeTime(0.1600)
				Move(0.0000,0.0000,0.0000,-128.0000);
			}
		}
		Geometry()
		{
			BlendMode("ADDITIVE");
			Type("PARTICLE");
			Texture("com_sfx_flames1");
		}
		ParticleEmitter("Sparks")
		{
			MaxParticles(6.0000,6.0000);
			StartDelay(0.0000,0.0000);
			BurstDelay(0.0010, 0.0010);
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
				Circle()
				{
					PositionX(-0.1400,0.1400);
					PositionY(0.0000,0.1400);
					PositionZ(-0.1400,0.1400);
				}
				Offset()
				{
					PositionX(0.0000,0.0000);
					PositionY(0.0000,0.0000);
					PositionZ(0.0000,0.0000);
				}
				PositionScale(0.1400,0.4200);
				VelocityScale(0.2800,1.6800);
				InheritVelocityFactor(0.0000,0.0000);
				Size(0, 0.0035, 0.0070);
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
				LifeTime(1.2800);
				Position()
				{
					LifeTime(1.2800)
					Accelerate(0.0000, -2.1000, 0.0000);
				}
				Size(0)
				{
					LifeTime(1.2800)
					Scale(0.0000);
				}
				Color(0)
				{
					LifeTime(1.2800)
					Move(0.0000,0.0000,0.0000,-255.0000);
				}
			}
			Geometry()
			{
				BlendMode("ADDITIVE");
				Type("SPARK");
				SparkLength(0.0500);
				Texture("com_sfx_laser_orange");
			}
		}
	}
}
