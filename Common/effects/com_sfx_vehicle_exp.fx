ParticleEmitter("Shockwave")
{
	MaxParticles(1.0000,1.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.0010, 0.0010);
	BurstCount(1.0000,1.0000);
	MaxLodDist(2200.0000);
	MinLodDist(2000.0000);
	BoundingRadius(30.0);
	SoundName("")
	NoRegisterStep();
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
		Size(0, 17.5000, 17.5000);
		Red(0, 255.0000, 255.0000);
		Green(0, 209.0000, 209.0000);
		Blue(0, 140.0000, 140.0000);
		Alpha(0, 128.0000, 128.0000);
		StartRotation(0, 0.0000, 5.0000);
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
			Scale(6.0000);
		}
		Color(0)
		{
			LifeTime(0.4000)
			Move(0.0000,0.0000,0.0000,-128.0000);
		}
	}
	Geometry()
	{
		BlendMode("ADDITIVE");
		Type("BILLBOARD");
		Texture("com_sfx_flashring1");
	}
	ParticleEmitter("Shockwave")
	{
		MaxParticles(1.0000,1.0000);
		StartDelay(0.0000,0.0000);
		BurstDelay(0.5000, 0.5000);
		BurstCount(1.0000,1.0000);
		MaxLodDist(2200.0000);
		MinLodDist(2000.0000);
		BoundingRadius(30.0);
		SoundName("")
		NoRegisterStep();
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
			Size(0, 15.0000, 15.0000);
			Red(0, 255.0000, 255.0000);
			Green(0, 255.0000, 255.0000);
			Blue(0, 255.0000, 255.0000);
			Alpha(0, 0.0000, 0.0000);
			StartRotation(0, 0.0000, 360.0000);
			RotationVelocity(0, 0.0000, 0.0000);
			FadeInTime(0.0000);
		}
		Transformer()
		{
			LifeTime(1.0000);
			Position()
			{
				LifeTime(0.2500)
			}
			Size(0)
			{
				LifeTime(1.0000)
				Scale(2.5000);
			}
			Color(0)
			{
				LifeTime(0.1000)
				Move(0.0000,-100.0000,-100.0000,255.0000);
				Next()
				{
					LifeTime(0.9000)
					Move(0.0000,0.0000,0.0000,-255.0000);
				}
			}
		}
		Geometry()
		{
			BlendMode("ADDITIVE");
			Type("PARTICLE");
			Texture("com_sfx_explosion4");
		}
		ParticleEmitter("Explosion")
		{
			MaxParticles(8.0000,8.0000);
			StartDelay(0.0000,0.0000);
			BurstDelay(0.0010, 0.0010);
			BurstCount(1.0000,1.0000);
			MaxLodDist(2100.0000);
			MinLodDist(2000.0000);
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
					PositionX(-3.5000,3.5000);
					PositionY(-3.5000,3.5000);
					PositionZ(-3.5000,3.5000);
				}
				Offset()
				{
					PositionX(0.0000,0.0000);
					PositionY(0.0000,0.0000);
					PositionZ(0.0000,0.0000);
				}
				PositionScale(5.2500,5.2500);
				VelocityScale(35.0000,70.0000);
				InheritVelocityFactor(50.0000,50.0000);
				Size(0, 5.7750, 11.5500);
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
					LifeTime(1.5000)
					Scale(0.0000);
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
							PositionX(-5.7750,5.7750);
							PositionY(-5.7750,5.7750);
							PositionZ(-5.7750,5.7750);
						}
						Offset()
						{
							PositionX(0.0000,0.0000);
							PositionY(0.0000,0.0000);
							PositionZ(0.0000,0.0000);
						}
						PositionScale(0.0000,0.0000);
						VelocityScale(2.8875,2.8875);
						InheritVelocityFactor(0.2500,0.2500);
						Size(0, 2.6250, 3.5000);
						Hue(0, 0.0000, 0.0000);
						Saturation(0, 0.0000, 0.0000);
						Value(0, 150.0000, 255.0000);
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
							Move(0.0000,0.0000,0.0000,55.0000);
							Next()
							{
								LifeTime(1.4000)
								Move(0.0000,0.0000,-20.0000,-255.0000);
							}
						}
					}
					Geometry()
					{
						BlendMode("NORMAL");
						Type("PARTICLE");
						Texture("com_sfx_smoke1");
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
									PositionX(-15.1594,15.1594);
									PositionY(-15.1594,15.1594);
									PositionZ(-15.1594,15.1594);
								}
								Offset()
								{
									PositionX(-0.7585,0.7585);
									PositionY(-0.7585,0.7585);
									PositionZ(-0.7585,0.7585);
								}
								PositionScale(0.0000,0.0000);
								VelocityScale(15.1594,15.1594);
								InheritVelocityFactor(0.2000,0.2000);
								Size(0, 7.5800, 10.6118);
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
								PositionX(-5.7750,5.7750);
								PositionY(-5.7750,5.7750);
								PositionZ(-5.7750,5.7750);
							}
							Offset()
							{
								PositionX(-0.5775,0.5775);
								PositionY(-0.5775,0.5775);
								PositionZ(-0.5775,0.5775);
							}
							PositionScale(0.0000,0.0000);
							VelocityScale(5.7750,5.7750);
							InheritVelocityFactor(0.2500,0.2500);
							Size(0, 0.5775, 1.1550);
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
										PositionX(-15.1594,15.1594);
										PositionY(-15.1594,15.1594);
										PositionZ(-15.1594,15.1594);
									}
									Offset()
									{
										PositionX(-0.7585,0.7585);
										PositionY(-0.7585,0.7585);
										PositionZ(-0.7585,0.7585);
									}
									PositionScale(0.0000,0.0000);
									VelocityScale(21.6563,21.6563);
									InheritVelocityFactor(0.1000,0.1000);
									Size(0, 3.0319, 6.0638);
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
				MaxParticles(6.0000,6.0000);
				StartDelay(0.0000,0.0000);
				BurstDelay(0.0000, 0.0000);
				BurstCount(6.0000,6.0000);
				MaxLodDist(2100.0000);
				MinLodDist(2000.0000);
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
					InheritVelocityFactor(50.0000,50.0000);
					Size(0, 25.0000, 25.0000);
					Red(0, 255.0000, 255.0000);
					Green(0, 240.0000, 240.0000);
					Blue(0, 200.0000, 200.0000);
					Alpha(0, 128.0000, 128.0000);
					StartRotation(0, 1.0000, 3.0000);
					RotationVelocity(0, 0.0000, 0.0000);
					FadeInTime(0.0000);
				}
				Transformer()
				{
					LifeTime(1.7500);
					Position()
					{
						LifeTime(1.0000)
					}
					Size(0)
					{
						LifeTime(1.2500)
					}
					Color(0)
					{
						LifeTime(0.7500)
						Move(0.0000,0.0000,0.0000,-96.0000);
						Next()
						{
							LifeTime(1.0000)
							Move(0.0000,0.0000,0.0000,-48.0000);
						}
					}
				}
				Geometry()
				{
					BlendMode("ADDITIVE");
					Type("BILLBOARD");
					Texture("com_sfx_flashball2");
				}
				ParticleEmitter("Flare")
				{
					MaxParticles(2.0000,2.0000);
					StartDelay(0.0000,0.0000);
					BurstDelay(0.0000, 0.0000);
					BurstCount(2.0000,2.0000);
					MaxLodDist(2100.0000);
					MinLodDist(2000.0000);
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
						InheritVelocityFactor(50.0000,50.0000);
						Size(0, 26.2500, 26.2500);
						Red(0, 255.0000, 255.0000);
						Green(0, 240.0000, 240.0000);
						Blue(0, 200.0000, 200.0000);
						Alpha(0, 255.0000, 255.0000);
						StartRotation(0, 1.0000, 3.0000);
						RotationVelocity(0, 0.0000, 0.0000);
						FadeInTime(0.0000);
					}
					Transformer()
					{
						LifeTime(1.2500);
						Position()
						{
							LifeTime(1.0000)
						}
						Size(0)
						{
							LifeTime(1.2500)
						}
						Color(0)
						{
							LifeTime(0.7500)
							Move(0.0000,0.0000,0.0000,-192.0000);
							Next()
							{
								LifeTime(0.5000)
								Move(0.0000,0.0000,0.0000,-64.0000);
							}
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
						MaxParticles(6.0000,6.0000);
						StartDelay(0.0000,0.0000);
						BurstDelay(0.0010, 0.0010);
						BurstCount(1.0000,1.0000);
						MaxLodDist(2100.0000);
						MinLodDist(2000.0000);
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
								PositionX(-0.8750,0.8750);
								PositionY(-0.8750,0.8750);
								PositionZ(-0.8750,0.8750);
							}
							Offset()
							{
								PositionX(0.0000,0.0000);
								PositionY(0.0000,0.0000);
								PositionZ(0.0000,0.0000);
							}
							PositionScale(4.3750,4.3750);
							VelocityScale(3.5000,7.0000);
							InheritVelocityFactor(50.0000,50.0000);
							Size(0, 5.2500, 10.5000);
							Red(0, 255.0000, 255.0000);
							Green(0, 200.0000, 255.0000);
							Blue(0, 150.0000, 200.0000);
							Alpha(0, 255.0000, 255.0000);
							StartRotation(0, 0.0000, 360.0000);
							RotationVelocity(0, -10.0000, 10.0000);
							FadeInTime(0.0000);
						}
						Transformer()
						{
							LifeTime(1.5000);
							Position()
							{
								LifeTime(2.0000)
								Scale(0.0000);
							}
							Size(0)
							{
								LifeTime(2.5000)
								Scale(2.0000);
							}
							Color(0)
							{
								LifeTime(0.5000)
								Move(0.0000,0.0000,0.0000,-20.0000);
								Next()
								{
									LifeTime(0.5000)
									Move(0.0000,-150.0000,-200.0000,-15.0000);
									Next()
									{
										LifeTime(0.5000)
										Move(0.0000,-100.0000,-100.0000,-220.0000);
									}
								}
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
							MaxParticles(20.0000,20.0000);
							StartDelay(0.0000,0.0000);
							BurstDelay(0.0010, 0.0010);
							BurstCount(5.0000,5.0000);
							MaxLodDist(2100.0000);
							MinLodDist(2000.0000);
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
									PositionX(-1.7500,1.7500);
									PositionY(-1.7500,1.7500);
									PositionZ(-1.7500,1.7500);
								}
								Offset()
								{
									PositionX(0.0000,0.0000);
									PositionY(0.0000,0.0000);
									PositionZ(0.0000,0.0000);
								}
								PositionScale(5.2500,10.5000);
								VelocityScale(8.7500,61.2500);
								InheritVelocityFactor(50.0000,50.0000);
								Size(0, 0.0875, 0.2625);
								Red(0, 255.0000, 255.0000);
								Green(0, 255.0000, 255.0000);
								Blue(0, 255.0000, 255.0000);
								Alpha(0, 128.0000, 255.0000);
								StartRotation(0, 0.0000, 0.0000);
								RotationVelocity(0, 0.0000, 0.0000);
								FadeInTime(0.0000);
							}
							Transformer()
							{
								LifeTime(3.0000);
								Position()
								{
									LifeTime(2.0000)
									Scale(0.0000);
								}
								Size(0)
								{
									LifeTime(3.0000)
									Scale(0.0000);
								}
								Color(0)
								{
									LifeTime(2.0000)
									Move(0.0000,0.0000,0.0000,0.0000);
									Next()
									{
										LifeTime(1.0000)
										Move(0.0000,0.0000,0.0000,-255.0000);
									}
								}
							}
							Geometry()
							{
								BlendMode("ADDITIVE");
								Type("SPARK");
								SparkLength(0.1000);
								Texture("com_sfx_laser_orange");
							}
						}
					}
				}
			}
		}
	}
}
