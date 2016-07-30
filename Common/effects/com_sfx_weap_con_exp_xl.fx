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
			PositionX(-2.0000,2.0000);
			PositionY(1.0000,2.0000);
			PositionZ(-2.0000,2.0000);
		}
		Offset()
		{
			PositionX(0.0000,0.0000);
			PositionY(0.0000,0.0000);
			PositionZ(0.0000,0.0000);
		}
		PositionScale(2.0000,2.0000);
		VelocityScale(1.0000,3.0000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 2.8126, 3.7500);
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
		LifeTime(2.2500);
		Position()
		{
			LifeTime(2.2500)
			Scale(0.0000);
		}
		Size(0)
		{
			LifeTime(2.2500)
			Scale(3.0000);
		}
		Color(0)
		{
			LifeTime(2.2500)
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
					PositionX(-5.2500,5.2500);
					PositionY(-5.2500,5.2500);
					PositionZ(-5.2500,5.2500);
				}
				Offset()
				{
					PositionX(-0.2626,0.2626);
					PositionY(-0.2626,0.2626);
					PositionZ(-0.2626,0.2626);
				}
				PositionScale(0.0000,0.0000);
				VelocityScale(2.6250,2.6250);
				InheritVelocityFactor(0.2000,0.2000);
				Size(0, 2.6250, 3.6750);
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
				LifeTime(2.2500);
				Position()
				{
					LifeTime(2.2500)
					Scale(0.0000);
				}
				Size(0)
				{
					LifeTime(3.0000)
					Scale(6.0000);
				}
				Color(0)
				{
					LifeTime(0.1500)
					Move(0.0000,0.0000,0.0000,255.0000);
					Next()
					{
						LifeTime(2.1000)
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
				PositionX(-1.5000,1.5000);
				PositionY(0.7500,3.7500);
				PositionZ(-1.5000,1.5000);
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
			Size(0, 1.8750, 2.6250);
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
			LifeTime(0.7500);
			Position()
			{
				LifeTime(0.3750)
			}
			Size(0)
			{
				LifeTime(1.5000)
				Scale(3.0000);
			}
			Color(0)
			{
				LifeTime(0.3750)
				Move(0.0000,-40.0000,-50.0000,-128.0000);
				Next()
				{
					LifeTime(0.3750)
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
						PositionX(-5.2500,5.2500);
						PositionY(-5.2500,5.2500);
						PositionZ(-5.2500,5.2500);
					}
					Offset()
					{
						PositionX(-0.2626,0.2626);
						PositionY(-0.2626,0.2626);
						PositionZ(-0.2626,0.2626);
					}
					PositionScale(0.0000,0.0000);
					VelocityScale(3.7500,3.7500);
					InheritVelocityFactor(0.1000,0.1000);
					Size(0, 1.0500, 2.1000);
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
					LifeTime(1.8750);
					Position()
					{
						LifeTime(2.2500)
						Scale(0.0000);
					}
					Size(0)
					{
						LifeTime(1.8750)
						Scale(5.0000);
					}
					Color(0)
					{
						LifeTime(0.0150)
						Move(0.0000,0.0000,0.0000,48.0000);
						Next()
						{
							LifeTime(1.8600)
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
					PositionX(-1.8750,1.8750);
					PositionY(-1.8750,1.8750);
					PositionZ(-1.8750,1.8750);
				}
				Offset()
				{
					PositionX(-0.3750,0.3750);
					PositionY(-0.3750,0.3750);
					PositionZ(-0.3750,0.3750);
				}
				PositionScale(0.0000,0.0000);
				VelocityScale(1.8750,1.8750);
				InheritVelocityFactor(0.0000,0.0000);
				Size(0, 1.8750, 3.7500);
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
				LifeTime(0.7500);
				Position()
				{
					LifeTime(0.3750)
				}
				Size(0)
				{
					LifeTime(1.5000)
					Scale(2.0000);
				}
				Color(0)
				{
					LifeTime(0.3750)
					Move(0.0000,-40.0000,-50.0000,-128.0000);
					Next()
					{
						LifeTime(0.3750)
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
							PositionX(-5.2500,5.2500);
							PositionY(-5.2500,5.2500);
							PositionZ(-5.2500,5.2500);
						}
						Offset()
						{
							PositionX(-0.2626,0.2626);
							PositionY(-0.2626,0.2626);
							PositionZ(-0.2626,0.2626);
						}
						PositionScale(0.0000,0.0000);
						VelocityScale(3.7500,3.7500);
						InheritVelocityFactor(0.1000,0.1000);
						Size(0, 1.0500, 2.1000);
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
						LifeTime(1.8750);
						Position()
						{
							LifeTime(2.2500)
							Scale(0.0000);
						}
						Size(0)
						{
							LifeTime(1.8750)
							Scale(5.0000);
						}
						Color(0)
						{
							LifeTime(0.0150)
							Move(0.0000,0.0000,0.0000,48.0000);
							Next()
							{
								LifeTime(1.8600)
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
						PositionX(-0.7500,0.7500);
						PositionY(0.5000,3.0000);
						PositionZ(-0.7500,0.7500);
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
					Size(0, 3.0000, 6.0000);
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
					LifeTime(1.1250);
					Position()
					{
						LifeTime(1.1250)
						Accelerate(0.0000, -15.0000, 0.0000);
					}
					Size(0)
					{
						LifeTime(1.1250)
						Scale(3.0000);
					}
					Color(0)
					{
						LifeTime(1.1250)
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
							PositionX(-1.0000,1.0000);
							PositionY(0.4000,1.0000);
							PositionZ(-1.0000,1.0000);
						}
						Offset()
						{
							PositionX(0.0000,0.0000);
							PositionY(0.0000,0.0000);
							PositionZ(0.1876,0.1876);
						}
						PositionScale(4.0000,4.0000);
						VelocityScale(10.0000,47.5000);
						InheritVelocityFactor(0.0000,0.0000);
						Size(0, 0.0750, 0.2250);
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
						LifeTime(1.1250);
						Position()
						{
							LifeTime(1.1250)
							Accelerate(0.0000, -18.7500, 0.0000);
						}
						Size(0)
						{
							LifeTime(0.3000)
							Scale(1.0000);
						}
						Color(0)
						{
							LifeTime(0.0150)
							Reach(255.0000,244.0000,147.0000,128.0000);
							Next()
							{
								LifeTime(1.0350)
								Reach(242.0000,121.0000,0.0000,128.0000);
								Next()
								{
									LifeTime(0.1500)
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
							Size(0, 10.0000, 10.0000);
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
							LifeTime(0.3750);
							Position()
							{
								LifeTime(1.5000)
							}
							Size(0)
							{
								LifeTime(0.3750)
								Scale(4.0000);
							}
							Color(0)
							{
								LifeTime(0.3750)
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
								Size(0, 4.0000, 4.0000);
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
								LifeTime(0.7500);
								Position()
								{
									LifeTime(1.5000)
								}
								Size(0)
								{
									LifeTime(1.5000)
									Scale(1.0000);
								}
								Color(0)
								{
									LifeTime(0.7500)
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
