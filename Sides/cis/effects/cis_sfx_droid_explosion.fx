ParticleEmitter("Junkspray")
{
	MaxParticles(30.0000,30.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.0010, 0.0010);
	BurstCount(30.0000,30.0000);
	MaxLodDist(1000.0000);
	MinLodDist(800.0000);
	BoundingRadius(20.0);
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
			PositionY(1.0000,1.5000);
			PositionZ(-1.0000,1.0000);
		}
		Offset()
		{
			PositionX(0.0000,0.0000);
			PositionY(1.0000,1.0000);
			PositionZ(0.0000,0.0000);
		}
		PositionScale(0.4000,0.4000);
		VelocityScale(1.0000,4.0000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 0.1000, 0.3500);
		Red(0, 200.0000, 255.0000);
		Green(0, 200.0000, 255.0000);
		Blue(0, 200.0000, 255.0000);
		Alpha(0, 255.0000, 255.0000);
		StartRotation(0, 0.0000, 360.0000);
		RotationVelocity(0, -180.0000, 180.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(1.0000);
		Position()
		{
			LifeTime(2.0000)
			Accelerate(0.0000, -20.0000, 0.0000);
		}
		Size(0)
		{
			LifeTime(2.0000)
			Scale(2.0000);
		}
		Color(0)
		{
			LifeTime(0.7500)
			Move(0.0000,0.0000,0.0000,0.0000);
			Next()
			{
				LifeTime(0.2500)
				Move(0.0000,0.0000,0.0000,-255.0000);
			}
		}
	}
	Geometry()
	{
		BlendMode("NORMAL");
		Type("PARTICLE");
		Texture("cis_sfx_metaljunk");
		ParticleEmitter("BlackSmoke")
		{
			MaxParticles(3.0000,3.0000);
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
					PositionX(-0.3750,0.3750);
					PositionY(-0.3750,0.3750);
					PositionZ(-0.3750,0.3750);
				}
				Offset()
				{
					PositionX(-0.1875,0.1875);
					PositionY(-0.1875,0.1875);
					PositionZ(-0.1875,0.1875);
				}
				PositionScale(0.0000,0.0000);
				VelocityScale(0.0000,0.0000);
				InheritVelocityFactor(0.5000,0.5000);
				Size(0, 0.1500, 0.2250);
				Red(0, 255.0000, 255.0000);
				Green(0, 255.0000, 255.0000);
				Blue(0, 255.0000, 255.0000);
				Alpha(0, 255.0000, 255.0000);
				StartRotation(0, 0.0000, 360.0000);
				RotationVelocity(0, -160.0000, 160.0000);
				FadeInTime(0.0000);
			}
			Transformer()
			{
				LifeTime(0.7032);
				Position()
				{
					LifeTime(0.7032)
					Scale(0.0000);
				}
				Size(0)
				{
					LifeTime(0.8790)
					Scale(4.0000);
				}
				Color(0)
				{
					LifeTime(0.3516)
					Reach(64.0000,64.0000,64.0000,255.0000);
					Next()
					{
						LifeTime(0.3516)
						Reach(0.0000,0.0000,0.0000,0.0000);
					}
				}
			}
			Geometry()
			{
				BlendMode("NORMAL");
				Type("PARTICLE");
				Texture("boom4");
			}
		}
	}
	ParticleEmitter("Embers")
	{
		MaxParticles(10.0000,10.0000);
		StartDelay(0.0000,0.0000);
		BurstDelay(0.0010, 0.0010);
		BurstCount(10.0000,10.0000);
		MaxLodDist(1000.0000);
		MinLodDist(800.0000);
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
				PositionY(0.5000,1.5000);
				PositionZ(-0.5000,0.5000);
			}
			Offset()
			{
				PositionX(0.0000,0.0000);
				PositionY(1.0000,1.0000);
				PositionZ(0.0000,0.0000);
			}
			PositionScale(0.0000,0.0000);
			VelocityScale(0.5000,1.5000);
			InheritVelocityFactor(0.0000,0.0000);
			Size(0, 0.5000, 1.0000);
			Red(0, 255.0000, 255.0000);
			Green(0, 128.0000, 255.0000);
			Blue(0, 64.0000, 64.0000);
			Alpha(0, 255.0000, 255.0000);
			StartRotation(0, 0.0000, 360.0000);
			RotationVelocity(0, -100.0000, 100.0000);
			FadeInTime(0.0000);
		}
		Transformer()
		{
			LifeTime(1.0000);
			Position()
			{
				LifeTime(2.0000)
				Accelerate(0.0000, -2.0000, 0.0000);
			}
			Size(0)
			{
				LifeTime(2.0000)
				Scale(2.0000);
			}
			Color(0)
			{
				LifeTime(0.7500)
				Reach(255.0000,128.0000,0.0000,128.0000);
				Next()
				{
					LifeTime(0.2500)
					Reach(255.0000,128.0000,0.0000,0.0000);
				}
			}
		}
		Geometry()
		{
			BlendMode("ADDITIVE");
			Type("PARTICLE");
			Texture("com_sfx_dirt1");
			ParticleEmitter("BlackSmoke")
			{
				MaxParticles(3.0000,3.0000);
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
						PositionX(-0.3750,0.3750);
						PositionY(-0.3750,0.3750);
						PositionZ(-0.3750,0.3750);
					}
					Offset()
					{
						PositionX(-0.1875,0.1875);
						PositionY(-0.1875,0.1875);
						PositionZ(-0.1875,0.1875);
					}
					PositionScale(0.0000,0.0000);
					VelocityScale(0.3750,0.3750);
					InheritVelocityFactor(0.0000,0.0000);
					Size(0, 0.1500, 0.2250);
					Red(0, 255.0000, 255.0000);
					Green(0, 255.0000, 255.0000);
					Blue(0, 255.0000, 255.0000);
					Alpha(0, 255.0000, 255.0000);
					StartRotation(0, 0.0000, 360.0000);
					RotationVelocity(0, -160.0000, 160.0000);
					FadeInTime(0.0000);
				}
				Transformer()
				{
					LifeTime(0.7032);
					Position()
					{
						LifeTime(0.7032)
						Scale(0.0000);
					}
					Size(0)
					{
						LifeTime(0.8790)
						Scale(4.0000);
					}
					Color(0)
					{
						LifeTime(0.3516)
						Reach(64.0000,64.0000,64.0000,255.0000);
						Next()
						{
							LifeTime(0.3516)
							Reach(0.0000,0.0000,0.0000,0.0000);
						}
					}
				}
				Geometry()
				{
					BlendMode("NORMAL");
					Type("PARTICLE");
					Texture("boom4");
				}
			}
		}
		ParticleEmitter("Flash")
		{
			MaxParticles(8.0000,8.0000);
			StartDelay(0.0000,0.0000);
			BurstDelay(0.0010, 0.0010);
			BurstCount(8.0000,8.0000);
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
					PositionY(1.0000,1.0000);
					PositionZ(0.0000,0.0000);
				}
				PositionScale(0.0000,0.0000);
				VelocityScale(0.0000,0.0000);
				InheritVelocityFactor(0.0000,0.0000);
				Size(0, 1.5000, 1.5000);
				Red(0, 255.0000, 255.0000);
				Green(0, 255.0000, 255.0000);
				Blue(0, 220.0000, 220.0000);
				Alpha(0, 32.0000, 32.0000);
				StartRotation(0, 1.0000, 1.9000);
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
					LifeTime(1.0000)
				}
				Color(0)
				{
					LifeTime(1.0000)
					Reach(255.0000,255.0000,220.0000,0.0000);
				}
			}
			Geometry()
			{
				BlendMode("ADDITIVE");
				Type("BILLBOARD");
				Texture("com_sfx_flashball2");
			}
			ParticleEmitter("Flames")
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
						PositionX(-3.3000,3.3000);
						PositionY(-3.3000,3.3000);
						PositionZ(-3.3000,3.3000);
					}
					Offset()
					{
						PositionX(-0.3300,0.3300);
						PositionY(1.0000,1.0000);
						PositionZ(-0.3300,0.3300);
					}
					PositionScale(0.0000,0.0000);
					VelocityScale(2.0000,3.0000);
					InheritVelocityFactor(0.0000,0.0000);
					Size(0, 0.0500, 0.1500);
					Red(0, 255.0000, 255.0000);
					Green(0, 204.0000, 233.0000);
					Blue(0, 98.0000, 185.0000);
					Alpha(0, 0.0000, 0.0000);
					StartRotation(0, 0.0000, 255.0000);
					RotationVelocity(0, -160.0000, 160.0000);
					FadeInTime(0.0000);
				}
				Transformer()
				{
					LifeTime(0.7500);
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
							LifeTime(0.6500)
							Scale(3.0000);
						}
					}
					Color(0)
					{
						LifeTime(0.1000)
						Move(0.0000,-40.0000,-50.0000,255.0000);
						Next()
						{
							LifeTime(0.3000)
							Move(128.0000,-40.0000,-50.0000,-128.0000);
							Next()
							{
								LifeTime(0.3500)
								Move(128.0000,-50.0000,-50.0000,-128.0000);
							}
						}
					}
				}
				Geometry()
				{
					BlendMode("ADDITIVE");
					Type("PARTICLE");
					Texture("com_sfx_explosion2");
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
								PositionX(-8.6625,8.6625);
								PositionY(-8.6625,8.6625);
								PositionZ(-8.6625,8.6625);
							}
							Offset()
							{
								PositionX(-0.4334,0.4334);
								PositionY(-0.4334,0.4334);
								PositionZ(-0.4334,0.4334);
							}
							PositionScale(0.0000,0.0000);
							VelocityScale(12.3750,12.3750);
							InheritVelocityFactor(0.1000,0.1000);
							Size(0, 1.7325, 3.4650);
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
}
