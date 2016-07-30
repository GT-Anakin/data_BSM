ParticleEmitter("Smoke")
{
	MaxParticles(5.0000,5.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.0010, 0.0010);
	BurstCount(5.0000,5.0000);
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
			PositionX(-0.2500,0.2500);
			PositionY(0.3500,0.7000);
			PositionZ(-0.2500,0.2500);
		}
		Offset()
		{
			PositionX(0.0000,0.0000);
			PositionY(0.0000,0.0000);
			PositionZ(0.0000,0.0000);
		}
		PositionScale(0.3500,0.3500);
		VelocityScale(0.5000,2.5000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 0.2500, 0.5000);
		Hue(0, 0.0000, 0.0000);
		Saturation(0, 0.0000, 0.0000);
		Value(0, 200.0000, 255.0000);
		Alpha(0, 128.0000, 255.0000);
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
			LifeTime(1.2000)
			Scale(3.0000);
		}
		Color(0)
		{
			LifeTime(1.2000)
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
					PositionX(-0.7000,0.7000);
					PositionY(-0.7000,0.7000);
					PositionZ(-0.7000,0.7000);
				}
				Offset()
				{
					PositionX(-0.0350,0.0350);
					PositionY(-0.0350,0.0350);
					PositionZ(-0.0350,0.0350);
				}
				PositionScale(0.0000,0.0000);
				VelocityScale(1.4000,1.4000);
				InheritVelocityFactor(0.2000,0.2000);
				Size(0, 0.3500, 0.4900);
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
	ParticleEmitter("Heat")
	{
		MaxParticles(4.0000,4.0000);
		StartDelay(0.0000,0.0000);
		BurstDelay(0.0010, 0.0010);
		BurstCount(4.0000,4.0000);
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
				PositionX(-0.2000,0.2000);
				PositionY(0.1000,0.5000);
				PositionZ(-0.2000,0.2000);
			}
			Offset()
			{
				PositionX(0.0000,0.0000);
				PositionY(0.0000,0.0000);
				PositionZ(0.0000,0.0000);
			}
			PositionScale(0.0000,0.0000);
			VelocityScale(1.0000,2.0000);
			InheritVelocityFactor(0.0000,0.0000);
			Size(0, 0.2500, 0.3500);
			Red(0, 255.0000, 255.0000);
			Green(0, 204.0000, 233.0000);
			Blue(0, 98.0000, 185.0000);
			Alpha(0, 128.0000, 255.0000);
			StartRotation(0, 0.0000, 255.0000);
			RotationVelocity(0, -160.0000, 160.0000);
			FadeInTime(0.0000);
		}
		Transformer()
		{
			LifeTime(0.4000);
			Position()
			{
				LifeTime(0.2000)
			}
			Size(0)
			{
				LifeTime(0.8000)
				Scale(3.0000);
			}
			Color(0)
			{
				LifeTime(0.2000)
				Move(0.0000,-40.0000,-50.0000,-128.0000);
				Next()
				{
					LifeTime(0.2000)
					Move(128.0000,-50.0000,-50.0000,-128.0000);
				}
			}
		}
		Geometry()
		{
			BlendMode("ADDITIVE");
			Type("PARTICLE");
			Texture("com_sfx_smoke3");
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
						PositionX(-0.7000,0.7000);
						PositionY(-0.7000,0.7000);
						PositionZ(-0.7000,0.7000);
					}
					Offset()
					{
						PositionX(-0.0350,0.0350);
						PositionY(-0.0350,0.0350);
						PositionZ(-0.0350,0.0350);
					}
					PositionScale(0.0000,0.0000);
					VelocityScale(2.0000,2.0000);
					InheritVelocityFactor(0.1000,0.1000);
					Size(0, 0.1400, 0.2800);
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
		ParticleEmitter("Flames")
		{
			MaxParticles(8.0000,8.0000);
			StartDelay(0.0000,0.0000);
			BurstDelay(0.0010, 0.0010);
			BurstCount(8.0000,8.0000);
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
					PositionX(-0.1500,0.1500);
					PositionY(0.1250,0.5000);
					PositionZ(-0.1500,0.1500);
				}
				Offset()
				{
					PositionX(-0.0500,0.0500);
					PositionY(-0.0500,0.0500);
					PositionZ(-0.0500,0.0500);
				}
				PositionScale(0.0000,0.0000);
				VelocityScale(1.0000,2.0000);
				InheritVelocityFactor(0.0000,0.0000);
				Size(0, 0.2500, 0.3750);
				Red(0, 255.0000, 255.0000);
				Green(0, 204.0000, 233.0000);
				Blue(0, 98.0000, 185.0000);
				Alpha(0, 128.0000, 255.0000);
				StartRotation(0, 0.0000, 255.0000);
				RotationVelocity(0, -160.0000, 160.0000);
				FadeInTime(0.0000);
			}
			Transformer()
			{
				LifeTime(0.4000);
				Position()
				{
					LifeTime(0.2000)
				}
				Size(0)
				{
					LifeTime(0.8000)
					Scale(2.0000);
				}
				Color(0)
				{
					LifeTime(0.2000)
					Move(0.0000,-40.0000,-50.0000,-128.0000);
					Next()
					{
						LifeTime(0.2000)
						Move(128.0000,-50.0000,-50.0000,-128.0000);
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
							PositionX(-0.7000,0.7000);
							PositionY(-0.7000,0.7000);
							PositionZ(-0.7000,0.7000);
						}
						Offset()
						{
							PositionX(-0.0350,0.0350);
							PositionY(-0.0350,0.0350);
							PositionZ(-0.0350,0.0350);
						}
						PositionScale(0.0000,0.0000);
						VelocityScale(2.0000,2.0000);
						InheritVelocityFactor(0.1000,0.1000);
						Size(0, 0.1400, 0.2800);
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
			ParticleEmitter("Flash")
			{
				MaxParticles(1.0000,1.0000);
				StartDelay(0.0000,0.0000);
				BurstDelay(0.0010, 0.0010);
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
					Size(0, 2.0000, 2.0000);
					Red(0, 255.0000, 255.0000);
					Green(0, 220.0000, 220.0000);
					Blue(0, 220.0000, 220.0000);
					Alpha(0, 255.0000, 255.0000);
					StartRotation(0, 0.0000, 255.0000);
					RotationVelocity(0, 0.0000, 0.0000);
					FadeInTime(0.0000);
				}
				Transformer()
				{
					LifeTime(0.1600);
					Position()
					{
						LifeTime(0.8000)
					}
					Size(0)
					{
						LifeTime(0.1600)
					}
					Color(0)
					{
						LifeTime(0.1600)
						Move(-20.0000,-200.0000,-200.0000,-255.0000);
					}
				}
				Geometry()
				{
					BlendMode("ADDITIVE");
					Type("PARTICLE");
					Texture("com_sfx_flashball3");
				}
				ParticleEmitter("Embers")
				{
					MaxParticles(2.0000,2.0000);
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
						Spread()
						{
							PositionX(-0.1000,0.1000);
							PositionY(1.5000,2.0000);
							PositionZ(-0.1000,0.1000);
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
						Size(0, 0.2000, 0.4000);
						Red(0, 255.0000, 255.0000);
						Green(0, 128.0000, 208.0000);
						Blue(0, 0.0000, 121.0000);
						Alpha(0, 255.0000, 255.0000);
						StartRotation(0, 0.0000, 360.0000);
						RotationVelocity(0, 0.0000, 0.0000);
						FadeInTime(0.0000);
					}
					Transformer()
					{
						LifeTime(0.6000);
						Position()
						{
							LifeTime(0.6000)
							Accelerate(0.0000, -2.0000, 0.0000);
						}
						Size(0)
						{
							LifeTime(0.6000)
							Scale(3.0000);
						}
						Color(0)
						{
							LifeTime(0.6000)
							Reach(100.0000,0.0000,0.0000,0.0000);
						}
					}
					Geometry()
					{
						BlendMode("ADDITIVE");
						Type("PARTICLE");
						Texture("com_sfx_dirt2");
					}
					ParticleEmitter("Sparks")
					{
						MaxParticles(8.0000,8.0000);
						StartDelay(0.0000,0.0000);
						BurstDelay(0.0010, 0.0010);
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
								PositionX(-0.0500,0.0500);
								PositionY(0.0500,0.1000);
								PositionZ(-0.0500,0.0500);
							}
							Offset()
							{
								PositionX(0.0000,0.0000);
								PositionY(0.0000,0.0000);
								PositionZ(0.0250,0.0250);
							}
							PositionScale(0.0000,0.0000);
							VelocityScale(8.0000,28.0000);
							InheritVelocityFactor(0.0000,0.0000);
							Size(0, 0.0050, 0.0150);
							Red(0, 255.0000, 255.0000);
							Green(0, 184.0000, 200.0000);
							Blue(0, 17.0000, 32.0000);
							Alpha(0, 0.0000, 0.0000);
							StartRotation(0, 0.0000, 0.0000);
							RotationVelocity(0, 0.0000, 0.0000);
							FadeInTime(0.0000);
						}
						Transformer()
						{
							LifeTime(0.6000);
							Position()
							{
								LifeTime(0.6000)
								Accelerate(0.0000, -2.5000, 0.0000);
							}
							Size(0)
							{
								LifeTime(0.1600)
								Scale(1.0000);
							}
							Color(0)
							{
								LifeTime(0.0080)
								Reach(255.0000,244.0000,147.0000,128.0000);
								Next()
								{
									LifeTime(0.5520)
									Reach(242.0000,121.0000,0.0000,128.0000);
									Next()
									{
										LifeTime(0.0800)
										Reach(242.0000,36.0000,0.0000,0.0000);
									}
								}
							}
						}
						Geometry()
						{
							BlendMode("ADDITIVE");
							Type("SPARK");
							SparkLength(0.0300);
							Texture("redlaser");
						}
					}
				}
			}
		}
	}
}

