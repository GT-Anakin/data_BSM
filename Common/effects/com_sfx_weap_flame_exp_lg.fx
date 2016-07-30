ParticleEmitter("Shockwave")
{
	MaxParticles(1.0000,1.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.0010, 0.0010);
	BurstCount(1.0000,1.0000);
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
		Size(0, 1.0000, 1.0000);
		Red(0, 255.0000, 255.0000);
		Green(0, 255.0000, 255.0000);
		Blue(0, 255.0000, 255.0000);
		Alpha(0, 128.0000, 128.0000);
		StartRotation(0, 0.0000, 0.0000);
		RotationVelocity(0, 0.0000, 0.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(0.4000);
		Position()
		{
			LifeTime(0.2500)
		}
		Size(0)
		{
			LifeTime(0.4000)
			Scale(10.0000);
		}
		Color(0)
		{
			LifeTime(0.4000)
			Reach(255.0000,255.0000,255.0000,0.0000);
		}
	}
	Geometry()
	{
		BlendMode("BLUR");
		BlurValue(0.1500);
		BlurRes(0.0000);
		Type("PARTICLE");
		Texture("com_sfx_flashring1");
	}
	ParticleEmitter("Explosion")
	{
		MaxParticles(5.0000,5.0000);
		StartDelay(0.0000,0.0000);
		BurstDelay(0.0010, 0.0010);
		BurstCount(5.0000,5.0000);
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
				PositionX(-0.7500,0.7500);
				PositionY(0.3750,1.5000);
				PositionZ(-0.7500,0.7500);
			}
			Offset()
			{
				PositionX(0.0000,0.0000);
				PositionY(0.0000,0.0000);
				PositionZ(0.0000,0.0000);
			}
			PositionScale(0.7500,0.7500);
			VelocityScale(4.5000,12.0000);
			InheritVelocityFactor(0.0000,0.0000);
			Size(0, 1.5000, 3.0000);
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
						PositionX(-1.5000,1.5000);
						PositionY(-1.5000,1.5000);
						PositionZ(-1.5000,1.5000);
					}
					Offset()
					{
						PositionX(0.0000,0.0000);
						PositionY(0.0000,0.0000);
						PositionZ(0.0000,0.0000);
					}
					PositionScale(0.0000,0.0000);
					VelocityScale(0.7500,0.7500);
					InheritVelocityFactor(0.2500,0.2500);
					Size(0, 0.7500, 1.1250);
					Hue(0, 0.0000, 0.0000);
					Saturation(0, 0.0000, 0.0000);
					Value(0, 20.0000, 50.0000);
					Alpha(0, 0.0000, 128.0000);
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
						Move(0.0000,0.0000,0.0000,128.0000);
						Next()
						{
							LifeTime(1.4000)
							Move(0.0000,0.0000,100.0000,-255.0000);
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
								PositionX(-3.9375,3.9375);
								PositionY(-3.9375,3.9375);
								PositionZ(-3.9375,3.9375);
							}
							Offset()
							{
								PositionX(-0.1970,0.1970);
								PositionY(-0.1970,0.1970);
								PositionZ(-0.1970,0.1970);
							}
							PositionScale(0.0000,0.0000);
							VelocityScale(3.9375,3.9375);
							InheritVelocityFactor(0.2000,0.2000);
							Size(0, 1.9688, 2.7563);
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
					MaxParticles(4.0000,4.0000);
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
							PositionX(-1.5000,1.5000);
							PositionY(-1.5000,1.5000);
							PositionZ(-1.5000,1.5000);
						}
						Offset()
						{
							PositionX(-0.1500,0.1500);
							PositionY(-0.1500,0.1500);
							PositionZ(-0.1500,0.1500);
						}
						PositionScale(0.0000,0.0000);
						VelocityScale(1.5000,1.5000);
						InheritVelocityFactor(0.2500,0.2500);
						Size(0, 0.1500, 0.3000);
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
							Move(0.0000,-40.0000,-50.0000,128.0000);
							Next()
							{
								LifeTime(0.5000)
								Move(128.0000,-40.0000,-50.0000,-128.0000);
								Next()
								{
									LifeTime(0.4000)
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
									PositionX(-3.9375,3.9375);
									PositionY(-3.9375,3.9375);
									PositionZ(-3.9375,3.9375);
								}
								Offset()
								{
									PositionX(-0.1970,0.1970);
									PositionY(-0.1970,0.1970);
									PositionZ(-0.1970,0.1970);
								}
								PositionScale(0.0000,0.0000);
								VelocityScale(5.6250,5.6250);
								InheritVelocityFactor(0.1000,0.1000);
								Size(0, 0.7875, 1.5750);
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
					PositionX(-1.5000,1.5000);
					PositionY(0.3750,1.5000);
					PositionZ(-1.5000,1.5000);
				}
				Offset()
				{
					PositionX(-0.1500,0.1500);
					PositionY(-0.1500,0.1500);
					PositionZ(-0.1500,0.1500);
				}
				PositionScale(0.0000,0.0000);
				VelocityScale(3.0000,3.0000);
				InheritVelocityFactor(0.0000,0.0000);
				Size(0, 0.1125, 0.2250);
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
					Move(0.0000,-40.0000,-50.0000,255.0000);
					Next()
					{
						LifeTime(0.5000)
						Move(128.0000,-40.0000,-50.0000,-128.0000);
						Next()
						{
							LifeTime(0.4000)
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
							PositionX(-3.9375,3.9375);
							PositionY(-3.9375,3.9375);
							PositionZ(-3.9375,3.9375);
						}
						Offset()
						{
							PositionX(-0.1970,0.1970);
							PositionY(-0.1970,0.1970);
							PositionZ(-0.1970,0.1970);
						}
						PositionScale(0.0000,0.0000);
						VelocityScale(5.6250,5.6250);
						InheritVelocityFactor(0.1000,0.1000);
						Size(0, 0.7875, 1.5750);
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
			ParticleEmitter("Flare")
			{
				MaxParticles(10.0000,10.0000);
				StartDelay(0.0000,0.0000);
				BurstDelay(0.0000, 0.0000);
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
					Size(0, 5.0000, 5.0000);
					Red(0, 255.0000, 255.0000);
					Green(0, 200.0000, 255.0000);
					Blue(0, 100.0000, 220.0000);
					Alpha(0, 32.0000, 32.0000);
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
						Move(0.0000,0.0000,0.0000,-32.0000);
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
						Circle()
						{
							PositionX(-0.2000,0.2000);
							PositionY(0.4000,1.2000);
							PositionZ(-0.2000,0.2000);
						}
						Offset()
						{
							PositionX(0.0000,0.0000);
							PositionY(0.0000,0.0000);
							PositionZ(0.0000,0.0000);
						}
						PositionScale(0.8000,0.8000);
						VelocityScale(3.0000,5.0000);
						InheritVelocityFactor(0.0000,0.0000);
						Size(0, 0.7500, 1.2500);
						Red(0, 255.0000, 255.0000);
						Green(0, 189.0000, 255.0000);
						Blue(0, 89.0000, 128.0000);
						Alpha(0, 255.0000, 255.0000);
						StartRotation(0, 0.0000, 360.0000);
						RotationVelocity(0, -90.0000, 90.0000);
						FadeInTime(0.0000);
					}
					Transformer()
					{
						LifeTime(1.0000);
						Position()
						{
							LifeTime(2.0000)
							Accelerate(0.0000, -10.0000, 0.0000);
						}
						Size(0)
						{
							LifeTime(1.0000)
							Scale(1.5000);
						}
						Color(0)
						{
							LifeTime(1.0000)
							Reach(193.0000,116.0000,0.0000,0.0000);
						}
					}
					Geometry()
					{
						BlendMode("ADDITIVE");
						Type("PARTICLE");
						Texture("com_sfx_dirt2");
					}
				}
			}
		}
	}
}
