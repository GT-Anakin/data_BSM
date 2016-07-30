ParticleEmitter("Smoke")
{
	MaxParticles(10.0000,10.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.0010, 0.0010);
	BurstCount(10.0000,10.0000);
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
			PositionX(-1.0000,1.0000);
			PositionY(0.5000,1.0000);
			PositionZ(-1.0000,1.0000);
		}
		Offset()
		{
			PositionX(0.0000,0.0000);
			PositionY(0.0000,0.0000);
			PositionZ(0.0000,0.0000);
		}
		PositionScale(1.0000,1.0000);
		VelocityScale(1.0000,3.0000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 1.4063, 1.8750);
		Hue(0, 0.0000, 128.0000);
		Saturation(0, 0.0000, 0.0000);
		Value(0, 150.0000, 255.0000);
		Alpha(0, 128.0000, 255.0000);
		StartRotation(0, 0.0000, 360.0000);
		RotationVelocity(0, -90.0000, 90.0000);
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
			Scale(3.0000);
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
				VelocityScale(2.6250,2.6250);
				InheritVelocityFactor(0.2000,0.2000);
				Size(0, 1.3125, 1.8375);
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
	ParticleEmitter("Heat")
	{
		MaxParticles(0.0000,0.0000);
		StartDelay(0.0000,0.0000);
		BurstDelay(0.0010, 0.0010);
		BurstCount(0.0000,0.0000);
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
				PositionX(-0.7500,0.7500);
				PositionY(0.3750,1.8750);
				PositionZ(-0.7500,0.7500);
			}
			Offset()
			{
				PositionX(0.0000,0.0000);
				PositionY(0.0000,0.0000);
				PositionZ(0.0000,0.0000);
			}
			PositionScale(0.0000,0.0000);
			VelocityScale(1.8750,1.8750);
			InheritVelocityFactor(0.0000,0.0000);
			Size(0, 0.9375, 1.3125);
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
			LifeTime(0.5000);
			Position()
			{
				LifeTime(0.2500)
			}
			Size(0)
			{
				LifeTime(1.0000)
				Scale(3.0000);
			}
			Color(0)
			{
				LifeTime(0.2500)
				Move(0.0000,-40.0000,-50.0000,-128.0000);
				Next()
				{
					LifeTime(0.2500)
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
					PositionX(-0.9375,0.9375);
					PositionY(-0.9375,0.9375);
					PositionZ(-0.9375,0.9375);
				}
				Offset()
				{
					PositionX(-0.1875,0.1875);
					PositionY(-0.1875,0.1875);
					PositionZ(-0.1875,0.1875);
				}
				PositionScale(0.0000,0.0000);
				VelocityScale(1.8750,1.8750);
				InheritVelocityFactor(0.0000,0.0000);
				Size(0, 0.9375, 1.8750);
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
				LifeTime(0.5000);
				Position()
				{
					LifeTime(0.2500)
				}
				Size(0)
				{
					LifeTime(1.0000)
					Scale(2.0000);
				}
				Color(0)
				{
					LifeTime(0.2500)
					Move(0.0000,-40.0000,-50.0000,-128.0000);
					Next()
					{
						LifeTime(0.2500)
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
						PositionX(-0.3750,0.3750);
						PositionY(0.2500,1.5000);
						PositionZ(-0.3750,0.3750);
					}
					Offset()
					{
						PositionX(0.0000,0.0000);
						PositionY(0.0000,0.0000);
						PositionZ(0.0000,0.0000);
					}
					PositionScale(0.0000,0.0000);
					VelocityScale(3.0000,6.0000);
					InheritVelocityFactor(0.0000,0.0000);
					Size(0, 1.5000, 3.0000);
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
					LifeTime(0.7500);
					Position()
					{
						LifeTime(0.7500)
						Accelerate(0.0000, -7.5000, 0.0000);
					}
					Size(0)
					{
						LifeTime(0.7500)
						Scale(3.0000);
					}
					Color(0)
					{
						LifeTime(0.7500)
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
					MaxParticles(15.0000,15.0000);
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
							PositionX(-0.5000,0.5000);
							PositionY(0.2000,0.5000);
							PositionZ(-0.5000,0.5000);
						}
						Offset()
						{
							PositionX(0.0000,0.0000);
							PositionY(0.0000,0.0000);
							PositionZ(0.0938,0.0938);
						}
						PositionScale(2.0000,2.0000);
						VelocityScale(10.0000,47.5000);
						InheritVelocityFactor(0.0000,0.0000);
						Size(0, 0.0375, 0.1125);
						Red(0, 255.0000, 255.0000);
						Green(0, 184.0000, 184.0000);
						Blue(0, 32.0000, 32.0000);
						Alpha(0, 0.0000, 0.0000);
						StartRotation(0, 0.0000, 0.0000);
						RotationVelocity(0, 0.0000, 0.0000);
						FadeInTime(0.0000);
					}
					Transformer()
					{
						LifeTime(0.7500);
						Position()
						{
							LifeTime(0.7500)
							Accelerate(0.0000, -9.3750, 0.0000);
						}
						Size(0)
						{
							LifeTime(0.2000)
							Scale(1.0000);
						}
						Color(0)
						{
							LifeTime(0.0100)
							Reach(255.0000,244.0000,147.0000,128.0000);
							Next()
							{
								LifeTime(0.6900)
								Reach(242.0000,121.0000,0.0000,128.0000);
								Next()
								{
									LifeTime(0.1000)
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
					ParticleEmitter("Shockwave")
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
							Size(0, 5.0000, 5.0000);
							Red(0, 255.0000, 255.0000);
							Green(0, 255.0000, 255.0000);
							Blue(0, 0.0000, 255.0000);
							Alpha(0, 128.0000, 128.0000);
							StartRotation(0, 0.0000, 0.0000);
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
								Scale(4.0000);
							}
							Color(0)
							{
								LifeTime(0.2500)
								Reach(255.0000,150.0000,0.0000,0.0000);
							}
						}
						Geometry()
						{
							BlendMode("ADDITIVE");
							Type("PARTICLE");
							Texture("com_sfx_flashball1");
						}
						ParticleEmitter("Flash")
						{
							MaxParticles(10.0000,10.0000);
							StartDelay(0.0000,0.0000);
							BurstDelay(0.0010, 0.0010);
							BurstCount(10.0000,10.0000);
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
								Green(0, 231.0000, 231.0000);
								Blue(0, 206.0000, 206.0000);
								Alpha(0, 64.0000, 64.0000);
								StartRotation(0, 1.0000, 1.9000);
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
									LifeTime(1.0000)
									Scale(1.0000);
								}
								Color(0)
								{
									LifeTime(0.5000)
									Move(255.0000,128.0000,0.0000,-64.0000);
								}
							}
							Geometry()
							{
								BlendMode("ADDITIVE");
								Type("BILLBOARD");
								Texture("com_sfx_flashball2");
							}
						}
					}
				}
			}
		}
	}
}
