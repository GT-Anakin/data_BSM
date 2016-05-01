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
			PositionX(-0.0500,0.0500);
			PositionY(0.5000,0.6000);
			PositionZ(-0.0500,0.0500);
		}
		Offset()
		{
			PositionX(0.0000,0.0000);
			PositionY(0.0000,0.0000);
			PositionZ(0.0000,0.0000);
		}
		PositionScale(0.0000,0.0000);
		VelocityScale(2.0000,3.0000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 0.3600, 0.7200);
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
		LifeTime(1.6000);
		Position()
		{
			LifeTime(0.8000)
		}
		Size(0)
		{
			LifeTime(1.2000)
		}
		Color(0)
		{
			LifeTime(1.2000)
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
					PositionX(-0.3600,0.3600);
					PositionY(-0.3600,0.3600);
					PositionZ(-0.3600,0.3600);
				}
				Offset()
				{
					PositionX(0.0000,0.0000);
					PositionY(0.0000,0.0000);
					PositionZ(0.0000,0.0000);
				}
				PositionScale(0.0000,0.0000);
				VelocityScale(0.1800,0.1800);
				InheritVelocityFactor(0.2500,0.2500);
				Size(0, 0.1000, 0.2000);
				Hue(0, 0.0000, 0.0000);
				Saturation(0, 0.0000, 0.0000);
				Value(0, 20.0000, 100.0000);
				Alpha(0, 0.0000, 64.0000);
				StartRotation(0, 0.0000, 360.0000);
				RotationVelocity(0, -90.0000, 90.0000);
				FadeInTime(0.0000);
			}
			Transformer()
			{
				LifeTime(1.2000);
				Position()
				{
					LifeTime(1.2000)
					Scale(0.0000);
				}
				Size(0)
				{
					LifeTime(0.2000)
					Scale(2.5000);
					Next()
					{
						LifeTime(1.0000)
						Scale(2.5000);
					}
				}
				Color(0)
				{
					LifeTime(0.0800)
					Move(0.0000,0.0000,0.0000,128.0000);
					Next()
					{
						LifeTime(0.7200)
						Move(0.0000,0.0000,0.0000,-64.0000);
						Next()
						{
							LifeTime(0.4000)
							Move(0.0000,0.0000,0.0000,-192.0000);
						}
					}
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
							PositionX(-0.9450,0.9450);
							PositionY(-0.9450,0.9450);
							PositionZ(-0.9450,0.9450);
						}
						Offset()
						{
							PositionX(-0.0473,0.0473);
							PositionY(-0.0473,0.0473);
							PositionZ(-0.0473,0.0473);
						}
						PositionScale(0.0000,0.0000);
						VelocityScale(0.9450,0.9450);
						InheritVelocityFactor(0.2000,0.2000);
						Size(0, 0.4725, 0.6615);
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
						LifeTime(1.2000);
						Position()
						{
							LifeTime(1.2000)
							Scale(0.0000);
						}
						Size(0)
						{
							LifeTime(1.6000)
							Scale(6.0000);
						}
						Color(0)
						{
							LifeTime(0.0800)
							Move(0.0000,0.0000,0.0000,255.0000);
							Next()
							{
								LifeTime(1.1200)
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
						PositionX(-0.3600,0.3600);
						PositionY(-0.3600,0.3600);
						PositionZ(-0.3600,0.3600);
					}
					Offset()
					{
						PositionX(-0.0360,0.0360);
						PositionY(-0.0360,0.0360);
						PositionZ(-0.0360,0.0360);
					}
					PositionScale(0.0000,0.0000);
					VelocityScale(0.3600,0.3600);
					InheritVelocityFactor(0.2500,0.2500);
					Size(0, 0.0300, 0.0600);
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
					LifeTime(0.8000);
					Position()
					{
						LifeTime(0.8000)
						Scale(0.0000);
					}
					Size(0)
					{
						LifeTime(0.0800)
						Scale(4.0000);
						Next()
						{
							LifeTime(0.7200)
							Scale(3.0000);
						}
					}
					Color(0)
					{
						LifeTime(0.0800)
						Move(0.0000,-40.0000,-50.0000,128.0000);
						Next()
						{
							LifeTime(0.4000)
							Move(128.0000,-40.0000,-50.0000,-128.0000);
							Next()
							{
								LifeTime(0.3200)
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
								PositionX(-0.9450,0.9450);
								PositionY(-0.9450,0.9450);
								PositionZ(-0.9450,0.9450);
							}
							Offset()
							{
								PositionX(-0.0473,0.0473);
								PositionY(-0.0473,0.0473);
								PositionZ(-0.0473,0.0473);
							}
							PositionScale(0.0000,0.0000);
							VelocityScale(1.3500,1.3500);
							InheritVelocityFactor(0.1000,0.1000);
							Size(0, 0.1890, 0.3780);
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
							LifeTime(1.0000);
							Position()
							{
								LifeTime(1.2000)
								Scale(0.0000);
							}
							Size(0)
							{
								LifeTime(1.0000)
								Scale(5.0000);
							}
							Color(0)
							{
								LifeTime(0.0080)
								Move(0.0000,0.0000,0.0000,48.0000);
								Next()
								{
									LifeTime(0.9920)
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
		MaxParticles(2.0000,2.0000);
		StartDelay(0.0000,0.0000);
		BurstDelay(0.1000, 0.1000);
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
				PositionY(1.0000,1.0000);
				PositionZ(0.0000,0.0000);
			}
			Offset()
			{
				PositionX(0.0000,0.0000);
				PositionY(0.0000,0.0000);
				PositionZ(0.0000,0.0000);
			}
			PositionScale(0.0000,0.0000);
			VelocityScale(1.0000,1.0000);
			InheritVelocityFactor(0.0000,0.0000);
			Size(0, 0.1000, 0.2000);
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
			LifeTime(0.8000);
			Position()
			{
				LifeTime(0.8000)
			}
			Size(0)
			{
				LifeTime(0.1000)
				Scale(2.0000);
			}
			Color(0)
			{
				LifeTime(0.2000)
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
					PositionX(-0.2000,0.2000);
					PositionY(0.0000,0.2000);
					PositionZ(-0.2000,0.2000);
				}
				Offset()
				{
					PositionX(0.0000,0.0000);
					PositionY(0.0000,0.0000);
					PositionZ(0.0000,0.0000);
				}
				PositionScale(0.2000,0.6000);
				VelocityScale(0.4000,2.4000);
				InheritVelocityFactor(0.0000,0.0000);
				Size(0, 0.0050, 0.0100);
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
				LifeTime(1.6000);
				Position()
				{
					LifeTime(1.6000)
					Accelerate(0.0000, -3.0000, 0.0000);
				}
				Size(0)
				{
					LifeTime(1.6000)
					Scale(0.0000);
				}
				Color(0)
				{
					LifeTime(1.6000)
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
