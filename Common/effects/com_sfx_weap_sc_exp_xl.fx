ParticleEmitter("Smoke")
{
	MaxParticles(15.0000,15.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.0010, 0.0010);
	BurstCount(15.0000,15.0000);
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
			PositionX(-2.0000,2.0000);
			PositionY(-2.0000,2.0000);
			PositionZ(-2.0000,2.0000);
		}
		Offset()
		{
			PositionX(0.0000,0.0000);
			PositionY(0.0000,0.0000);
			PositionZ(0.0000,0.0000);
		}
		PositionScale(2.0000,2.0000);
		VelocityScale(2.0000,4.0000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 2.0000, 4.0000);
		Hue(0, 0.0000, 0.0000);
		Saturation(0, 0.0000, 0.0000);
		Value(0, 20.0000, 80.0000);
		Alpha(0, 128.0000, 255.0000);
		StartRotation(0, 0.0000, 360.0000);
		RotationVelocity(0, -90.0000, 90.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(2.8125);
		Position()
		{
			LifeTime(2.8125)
			Scale(0.0000);
		}
		Size(0)
		{
			LifeTime(2.8125)
			Scale(3.0000);
		}
		Color(0)
		{
			LifeTime(2.8125)
			Move(0.0000,0.0000,100.0000,-255.0000);
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
					PositionX(-5.6000,5.6000);
					PositionY(-5.6000,5.6000);
					PositionZ(-5.6000,5.6000);
				}
				Offset()
				{
					PositionX(-0.2800,0.2800);
					PositionY(-0.2800,0.2800);
					PositionZ(-0.2800,0.2800);
				}
				PositionScale(0.0000,0.0000);
				VelocityScale(2.8000,2.8000);
				InheritVelocityFactor(0.2000,0.2000);
				Size(0, 2.8000, 3.9200);
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
				LifeTime(2.8125);
				Position()
				{
					LifeTime(2.8125)
					Scale(0.0000);
				}
				Size(0)
				{
					LifeTime(3.7500)
					Scale(6.0000);
				}
				Color(0)
				{
					LifeTime(0.1875)
					Move(0.0000,0.0000,0.0000,255.0000);
					Next()
					{
						LifeTime(2.6250)
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
				PositionX(-2.0000,2.0000);
				PositionY(-2.0000,2.0000);
				PositionZ(-2.0000,2.0000);
			}
			Offset()
			{
				PositionX(0.0000,0.0000);
				PositionY(0.0000,0.0000);
				PositionZ(0.0000,0.0000);
			}
			PositionScale(0.0000,0.0000);
			VelocityScale(2.0000,6.0000);
			InheritVelocityFactor(0.0000,0.0000);
			Size(0, 2.0000, 3.0000);
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
			LifeTime(0.9375);
			Position()
			{
				LifeTime(0.4688)
			}
			Size(0)
			{
				LifeTime(1.8750)
				Scale(3.0000);
			}
			Color(0)
			{
				LifeTime(0.4688)
				Move(0.0000,-40.0000,-50.0000,-128.0000);
				Next()
				{
					LifeTime(0.4688)
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
						PositionX(-5.6000,5.6000);
						PositionY(-5.6000,5.6000);
						PositionZ(-5.6000,5.6000);
					}
					Offset()
					{
						PositionX(-0.2800,0.2800);
						PositionY(-0.2800,0.2800);
						PositionZ(-0.2800,0.2800);
					}
					PositionScale(0.0000,0.0000);
					VelocityScale(4.0000,4.0000);
					InheritVelocityFactor(0.1000,0.1000);
					Size(0, 1.1200, 2.2400);
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
					LifeTime(2.3438);
					Position()
					{
						LifeTime(2.8125)
						Scale(0.0000);
					}
					Size(0)
					{
						LifeTime(2.3438)
						Scale(5.0000);
					}
					Color(0)
					{
						LifeTime(0.0188)
						Move(0.0000,0.0000,0.0000,48.0000);
						Next()
						{
							LifeTime(2.3250)
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
			MaxParticles(12.0000,12.0000);
			StartDelay(0.0000,0.0000);
			BurstDelay(0.0010, 0.0010);
			BurstCount(12.0000,12.0000);
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
					PositionX(-2.0000,2.0000);
					PositionY(-2.0000,2.0000);
					PositionZ(-2.0000,2.0000);
				}
				Offset()
				{
					PositionX(-0.4000,0.4000);
					PositionY(-0.4000,0.4000);
					PositionZ(-0.4000,0.4000);
				}
				PositionScale(2.0000,2.0000);
				VelocityScale(2.0000,4.0000);
				InheritVelocityFactor(0.0000,0.0000);
				Size(0, 2.0000, 4.0000);
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
				LifeTime(1.8750);
				Position()
				{
					LifeTime(0.4688)
				}
				Size(0)
				{
					LifeTime(1.8750)
					Scale(2.0000);
				}
				Color(0)
				{
					LifeTime(0.9375)
					Move(0.0000,-40.0000,-50.0000,-128.0000);
					Next()
					{
						LifeTime(0.9375)
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
							PositionX(-5.6000,5.6000);
							PositionY(-5.6000,5.6000);
							PositionZ(-5.6000,5.6000);
						}
						Offset()
						{
							PositionX(-0.2800,0.2800);
							PositionY(-0.2800,0.2800);
							PositionZ(-0.2800,0.2800);
						}
						PositionScale(0.0000,0.0000);
						VelocityScale(4.0000,4.0000);
						InheritVelocityFactor(0.1000,0.1000);
						Size(0, 1.1200, 2.2400);
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
						LifeTime(2.3438);
						Position()
						{
							LifeTime(2.8125)
							Scale(0.0000);
						}
						Size(0)
						{
							LifeTime(2.3438)
							Scale(5.0000);
						}
						Color(0)
						{
							LifeTime(0.0188)
							Move(0.0000,0.0000,0.0000,48.0000);
							Next()
							{
								LifeTime(2.3250)
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
					Size(0, 20.0000, 20.0000);
					Hue(0, 20.0000, 20.0000);
					Saturation(0, 80.0000, 80.0000);
					Value(0, 255.0000, 255.0000);
					Alpha(0, 255.0000, 255.0000);
					StartRotation(0, 0.0000, 255.0000);
					RotationVelocity(0, 0.0000, 0.0000);
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
						LifeTime(0.3750)
					}
					Color(0)
					{
						LifeTime(0.3750)
						Move(0.0000,0.0000,0.0000,-255.0000);
					}
				}
				Geometry()
				{
					BlendMode("ADDITIVE");
					Type("PARTICLE");
					Texture("com_sfx_flashball2");
				}
				ParticleEmitter("Embers")
				{
					MaxParticles(5.0000,5.0000);
					StartDelay(0.0000,0.0000);
					BurstDelay(0.0010, 0.0010);
					BurstCount(5.0000,5.0000);
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
							PositionX(-2.0000,2.0000);
							PositionY(-2.0000,2.0000);
							PositionZ(-2.0000,2.0000);
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
						Size(0, 1.6000, 3.2000);
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
						LifeTime(1.5000);
						Position()
						{
							LifeTime(1.5000)
							Accelerate(0.0000, 0.0000, 0.0000);
						}
						Size(0)
						{
							LifeTime(1.4063)
							Scale(3.0000);
						}
						Color(0)
						{
							LifeTime(1.4063)
							Reach(100.0000,0.0000,0.0000,0.0000);
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
								PositionX(-2.0000,2.0000);
								PositionY(-2.0000,2.0000);
								PositionZ(-2.0000,2.0000);
							}
							Offset()
							{
								PositionX(0.0000,0.0000);
								PositionY(0.0000,0.0000);
								PositionZ(0.2000,0.2000);
							}
							PositionScale(0.0000,0.0000);
							VelocityScale(5.0000,10.0000);
							InheritVelocityFactor(0.0000,0.0000);
							Size(0, 0.0400, 0.1200);
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
							LifeTime(1.5000);
							Position()
							{
								LifeTime(1.5000)
							}
							Size(0)
							{
								LifeTime(0.3750)
								Scale(1.0000);
							}
							Color(0)
							{
								LifeTime(0.0188)
								Reach(255.0000,244.0000,147.0000,128.0000);
								Next()
								{
									LifeTime(1.2938)
									Reach(242.0000,121.0000,0.0000,128.0000);
									Next()
									{
										LifeTime(0.1875)
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
							Texture("com_sfx_laser_orange");
						}
					}
				}
			}
		}
	}
}
