ParticleEmitter("Charge1")
{
	MaxParticles(-1.0000,-1.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.0500, 0.0500);
	BurstCount(1.0000,1.0000);
	MaxLodDist(1100.0000);
	MinLodDist(1000.0000);
	BoundingRadius(5.0);
	SoundName("")
	NoRegisterStep();
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
			PositionY(-1.0000,1.0000);
			PositionZ(-1.0000,1.0000);
		}
		Offset()
		{
			PositionX(0.0000,0.0000);
			PositionY(0.0000,0.0000);
			PositionZ(0.0000,0.0000);
		}
		PositionScale(1.0000,1.0000);
		VelocityScale(-0.3000,-0.3000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 0.0020, 0.0120);
		Hue(0, 10.0000, 20.0000);
		Saturation(0, 255.0000, 255.0000);
		Value(0, 255.0000, 255.0000);
		Alpha(0, 0.0000, 0.0000);
		StartRotation(0, 0.0000, 0.0000);
		RotationVelocity(0, -2.0000, 0.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(0.5000);
		Position()
		{
			LifeTime(0.3000)
			Scale(0.0000);
		}
		Size(0)
		{
			LifeTime(1.0000)
			Scale(3.0000);
		}
		Color(0)
		{
			LifeTime(0.1000)
			Move(0.0000,0.0000,0.0000,255.0000);
			Next()
			{
				LifeTime(0.4000)
				Move(64.0000,0.0000,0.0000,-255.0000);
			}
		}
	}
	Geometry()
	{
		BlendMode("ADDITIVE");
		Type("SPARK");
		SparkLength(3.0000);
		Texture("com_sfx_flashball1");
		ParticleEmitter("Smoke")
		{
			MaxParticles(15.0000,15.0000);
			StartDelay(0.0000,0.0000);
			BurstDelay(0.1000, 0.2000);
			BurstCount(1.0000,1.0000);
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
					PositionX(-1.0000,1.0000);
					PositionY(-1.0000,1.0000);
					PositionZ(-1.0000,1.0000);
				}
				Offset()
				{
					PositionX(0.0000,0.0000);
					PositionY(0.0000,0.0000);
					PositionZ(0.0000,0.0000);
				}
				PositionScale(0.0000,0.0000);
				VelocityScale(0.1000,0.1000);
				InheritVelocityFactor(0.0000,0.0000);
				Size(0, 0.6000, 0.9000);
				Red(0, 240.0000, 255.0000);
				Green(0, 240.0000, 255.0000);
				Blue(0, 240.0000, 255.0000);
				Alpha(0, 0.0000, 0.0000);
				StartRotation(0, -50.0000, 0.0000);
				RotationVelocity(0, -50.0000, 50.0000);
				FadeInTime(0.0000);
			}
			Transformer()
			{
				LifeTime(10.0000);
				Position()
				{
					LifeTime(3.0000)
				}
				Size(0)
				{
					LifeTime(3.0000)
					Scale(3.0000);
				}
				Color(0)
				{
					LifeTime(0.5000)
					Move(255.0000,255.0000,255.0000,255.0000);
					Next()
					{
						LifeTime(10.0000)
						Reach(255.0000,255.0000,255.0000,255.0000);
						Next()
						{
							LifeTime(0.0000)
							Reach(255.0000,255.0000,255.0000,0.0000);
						}
					}
				}
			}
			Geometry()
			{
				BlendMode("NORMAL");
				Type("PARTICLE");
				Texture("underlitesmoke2");
			}
		}
	}
	ParticleEmitter("Charge2")
	{
		MaxParticles(-1.0000,-1.0000);
		StartDelay(0.7500,0.7500);
		BurstDelay(0.0500, 0.0500);
		BurstCount(1.0000,1.0000);
		MaxLodDist(1100.0000);
		MinLodDist(1000.0000);
		BoundingRadius(5.0);
		SoundName("")
		NoRegisterStep();
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
				PositionY(-1.0000,1.0000);
				PositionZ(-1.0000,1.0000);
			}
			Offset()
			{
				PositionX(0.0000,0.0000);
				PositionY(0.0000,0.0000);
				PositionZ(0.0000,0.0000);
			}
			PositionScale(0.7500,0.7500);
			VelocityScale(-0.5000,-0.5000);
			InheritVelocityFactor(0.0000,0.0000);
			Size(0, 0.0030, 0.0230);
			Hue(0, 10.0000, 20.0000);
			Saturation(0, 255.0000, 255.0000);
			Value(0, 255.0000, 255.0000);
			Alpha(0, 0.0000, 0.0000);
			StartRotation(0, 0.0000, 0.0000);
			RotationVelocity(0, -2.0000, 0.0000);
			FadeInTime(0.0000);
		}
		Transformer()
		{
			LifeTime(0.5000);
			Position()
			{
				LifeTime(0.3000)
				Scale(0.0000);
			}
			Size(0)
			{
				LifeTime(1.0000)
				Scale(3.0000);
			}
			Color(0)
			{
				LifeTime(0.1000)
				Move(0.0000,0.0000,0.0000,255.0000);
				Next()
				{
					LifeTime(0.4000)
					Move(64.0000,0.0000,0.0000,-255.0000);
				}
			}
		}
		Geometry()
		{
			BlendMode("ADDITIVE");
			Type("SPARK");
			SparkLength(3.0000);
			Texture("com_sfx_flashball1");
			ParticleEmitter("Smoke")
			{
				MaxParticles(15.0000,15.0000);
				StartDelay(0.0000,0.0000);
				BurstDelay(0.1000, 0.2000);
				BurstCount(1.0000,1.0000);
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
						PositionX(-1.0000,1.0000);
						PositionY(-1.0000,1.0000);
						PositionZ(-1.0000,1.0000);
					}
					Offset()
					{
						PositionX(0.0000,0.0000);
						PositionY(0.0000,0.0000);
						PositionZ(0.0000,0.0000);
					}
					PositionScale(0.0000,0.0000);
					VelocityScale(0.1000,0.1000);
					InheritVelocityFactor(0.0000,0.0000);
					Size(0, 0.6000, 0.9000);
					Red(0, 240.0000, 255.0000);
					Green(0, 240.0000, 255.0000);
					Blue(0, 240.0000, 255.0000);
					Alpha(0, 0.0000, 0.0000);
					StartRotation(0, -50.0000, 0.0000);
					RotationVelocity(0, -50.0000, 50.0000);
					FadeInTime(0.0000);
				}
				Transformer()
				{
					LifeTime(10.0000);
					Position()
					{
						LifeTime(3.0000)
					}
					Size(0)
					{
						LifeTime(3.0000)
						Scale(3.0000);
					}
					Color(0)
					{
						LifeTime(0.5000)
						Move(255.0000,255.0000,255.0000,255.0000);
						Next()
						{
							LifeTime(10.0000)
							Reach(255.0000,255.0000,255.0000,255.0000);
							Next()
							{
								LifeTime(0.0000)
								Reach(255.0000,255.0000,255.0000,0.0000);
							}
						}
					}
				}
				Geometry()
				{
					BlendMode("NORMAL");
					Type("PARTICLE");
					Texture("underlitesmoke2");
				}
			}
		}
		ParticleEmitter("Charge3")
		{
			MaxParticles(-1.0000,-1.0000);
			StartDelay(1.5000,1.5000);
			BurstDelay(0.0500, 0.0500);
			BurstCount(2.0000,2.0000);
			MaxLodDist(1100.0000);
			MinLodDist(1000.0000);
			BoundingRadius(5.0);
			SoundName("")
			NoRegisterStep();
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
					PositionY(-1.0000,1.0000);
					PositionZ(-1.0000,1.0000);
				}
				Offset()
				{
					PositionX(0.0000,0.0000);
					PositionY(0.0000,0.0000);
					PositionZ(0.0000,0.0000);
				}
				PositionScale(0.5000,0.5000);
				VelocityScale(-0.8000,-0.8000);
				InheritVelocityFactor(0.0000,0.0000);
				Size(0, 0.0040, 0.0340);
				Hue(0, 10.0000, 20.0000);
				Saturation(0, 255.0000, 255.0000);
				Value(0, 255.0000, 255.0000);
				Alpha(0, 0.0000, 0.0000);
				StartRotation(0, 0.0000, 0.0000);
				RotationVelocity(0, -2.0000, 0.0000);
				FadeInTime(0.0000);
			}
			Transformer()
			{
				LifeTime(0.5000);
				Position()
				{
					LifeTime(0.3000)
					Scale(0.0000);
				}
				Size(0)
				{
					LifeTime(1.0000)
					Scale(3.0000);
				}
				Color(0)
				{
					LifeTime(0.1000)
					Move(0.0000,0.0000,0.0000,255.0000);
					Next()
					{
						LifeTime(0.4000)
						Move(64.0000,0.0000,0.0000,-255.0000);
					}
				}
			}
			Geometry()
			{
				BlendMode("ADDITIVE");
				Type("SPARK");
				SparkLength(3.0000);
				Texture("com_sfx_flashball1");
				ParticleEmitter("Smoke")
				{
					MaxParticles(15.0000,15.0000);
					StartDelay(0.0000,0.0000);
					BurstDelay(0.1000, 0.2000);
					BurstCount(1.0000,1.0000);
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
							PositionX(-1.0000,1.0000);
							PositionY(-1.0000,1.0000);
							PositionZ(-1.0000,1.0000);
						}
						Offset()
						{
							PositionX(0.0000,0.0000);
							PositionY(0.0000,0.0000);
							PositionZ(0.0000,0.0000);
						}
						PositionScale(0.0000,0.0000);
						VelocityScale(0.1000,0.1000);
						InheritVelocityFactor(0.0000,0.0000);
						Size(0, 0.6000, 0.9000);
						Red(0, 240.0000, 255.0000);
						Green(0, 240.0000, 255.0000);
						Blue(0, 240.0000, 255.0000);
						Alpha(0, 0.0000, 0.0000);
						StartRotation(0, -50.0000, 0.0000);
						RotationVelocity(0, -50.0000, 50.0000);
						FadeInTime(0.0000);
					}
					Transformer()
					{
						LifeTime(10.0000);
						Position()
						{
							LifeTime(3.0000)
						}
						Size(0)
						{
							LifeTime(3.0000)
							Scale(3.0000);
						}
						Color(0)
						{
							LifeTime(0.5000)
							Move(255.0000,255.0000,255.0000,255.0000);
							Next()
							{
								LifeTime(10.0000)
								Reach(255.0000,255.0000,255.0000,255.0000);
								Next()
								{
									LifeTime(0.0000)
									Reach(255.0000,255.0000,255.0000,0.0000);
								}
							}
						}
					}
					Geometry()
					{
						BlendMode("NORMAL");
						Type("PARTICLE");
						Texture("underlitesmoke2");
					}
				}
			}
			ParticleEmitter("Charge4")
			{
				MaxParticles(-1.0000,-1.0000);
				StartDelay(2.2500,2.2500);
				BurstDelay(0.0500, 0.0500);
				BurstCount(2.0000,2.0000);
				MaxLodDist(1100.0000);
				MinLodDist(1000.0000);
				BoundingRadius(5.0);
				SoundName("")
				NoRegisterStep();
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
						PositionY(-1.0000,1.0000);
						PositionZ(-1.0000,1.0000);
					}
					Offset()
					{
						PositionX(0.0000,0.0000);
						PositionY(0.0000,0.0000);
						PositionZ(0.0000,0.0000);
					}
					PositionScale(0.2500,0.2500);
					VelocityScale(-1.2000,-1.2000);
					InheritVelocityFactor(0.0000,0.0000);
					Size(0, 0.0050, 0.0450);
					Hue(0, 10.0000, 20.0000);
					Saturation(0, 255.0000, 255.0000);
					Value(0, 255.0000, 255.0000);
					Alpha(0, 0.0000, 0.0000);
					StartRotation(0, 0.0000, 0.0000);
					RotationVelocity(0, -2.0000, 0.0000);
					FadeInTime(0.0000);
				}
				Transformer()
				{
					LifeTime(0.5000);
					Position()
					{
						LifeTime(0.3000)
						Scale(0.0000);
					}
					Size(0)
					{
						LifeTime(1.0000)
						Scale(3.0000);
					}
					Color(0)
					{
						LifeTime(0.1000)
						Move(0.0000,0.0000,0.0000,255.0000);
						Next()
						{
							LifeTime(0.4000)
							Move(64.0000,0.0000,0.0000,-255.0000);
						}
					}
				}
				Geometry()
				{
					BlendMode("ADDITIVE");
					Type("SPARK");
					SparkLength(3.0000);
					Texture("com_sfx_flashball1");
					ParticleEmitter("Smoke")
					{
						MaxParticles(15.0000,15.0000);
						StartDelay(0.0000,0.0000);
						BurstDelay(0.1000, 0.2000);
						BurstCount(1.0000,1.0000);
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
								PositionX(-1.0000,1.0000);
								PositionY(-1.0000,1.0000);
								PositionZ(-1.0000,1.0000);
							}
							Offset()
							{
								PositionX(0.0000,0.0000);
								PositionY(0.0000,0.0000);
								PositionZ(0.0000,0.0000);
							}
							PositionScale(0.0000,0.0000);
							VelocityScale(0.1000,0.1000);
							InheritVelocityFactor(0.0000,0.0000);
							Size(0, 0.6000, 0.9000);
							Red(0, 240.0000, 255.0000);
							Green(0, 240.0000, 255.0000);
							Blue(0, 240.0000, 255.0000);
							Alpha(0, 0.0000, 0.0000);
							StartRotation(0, -50.0000, 0.0000);
							RotationVelocity(0, -50.0000, 50.0000);
							FadeInTime(0.0000);
						}
						Transformer()
						{
							LifeTime(10.0000);
							Position()
							{
								LifeTime(3.0000)
							}
							Size(0)
							{
								LifeTime(3.0000)
								Scale(3.0000);
							}
							Color(0)
							{
								LifeTime(0.5000)
								Move(255.0000,255.0000,255.0000,255.0000);
								Next()
								{
									LifeTime(10.0000)
									Reach(255.0000,255.0000,255.0000,255.0000);
									Next()
									{
										LifeTime(0.0000)
										Reach(255.0000,255.0000,255.0000,0.0000);
									}
								}
							}
						}
						Geometry()
						{
							BlendMode("NORMAL");
							Type("PARTICLE");
							Texture("underlitesmoke2");
						}
					}
				}
				ParticleEmitter("Charge5")
				{
					MaxParticles(0.0000,0.0000);
					StartDelay(3.0000,3.0000);
					BurstDelay(0.0500, 0.0500);
					BurstCount(2.0000,2.0000);
					MaxLodDist(1100.0000);
					MinLodDist(1000.0000);
					BoundingRadius(5.0);
					SoundName("")
					NoRegisterStep();
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
							PositionY(-1.0000,1.0000);
							PositionZ(-1.0000,1.0000);
						}
						Offset()
						{
							PositionX(0.0000,0.0000);
							PositionY(0.0000,0.0000);
							PositionZ(0.0000,0.0000);
						}
						PositionScale(1.0000,1.0000);
						VelocityScale(-1.0000,-1.0000);
						InheritVelocityFactor(0.0000,0.0000);
						Size(0, 0.0100, 0.0200);
						Hue(0, 10.0000, 20.0000);
						Saturation(0, 255.0000, 255.0000);
						Value(0, 255.0000, 255.0000);
						Alpha(0, 0.0000, 0.0000);
						StartRotation(0, 0.0000, 0.0000);
						RotationVelocity(0, -2.0000, 0.0000);
						FadeInTime(0.0000);
					}
					Transformer()
					{
						LifeTime(0.5000);
						Position()
						{
							LifeTime(0.3000)
							Scale(0.0000);
						}
						Size(0)
						{
							LifeTime(1.0000)
							Scale(3.0000);
						}
						Color(0)
						{
							LifeTime(0.1000)
							Move(0.0000,0.0000,0.0000,128.0000);
							Next()
							{
								LifeTime(0.4000)
								Move(64.0000,0.0000,0.0000,-255.0000);
							}
						}
					}
					Geometry()
					{
						BlendMode("ADDITIVE");
						Type("SPARK");
						SparkLength(3.0000);
						Texture("com_sfx_flashball1");
						ParticleEmitter("Smoke")
						{
							MaxParticles(15.0000,15.0000);
							StartDelay(0.0000,0.0000);
							BurstDelay(0.1000, 0.2000);
							BurstCount(1.0000,1.0000);
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
									PositionX(-1.0000,1.0000);
									PositionY(-1.0000,1.0000);
									PositionZ(-1.0000,1.0000);
								}
								Offset()
								{
									PositionX(0.0000,0.0000);
									PositionY(0.0000,0.0000);
									PositionZ(0.0000,0.0000);
								}
								PositionScale(0.0000,0.0000);
								VelocityScale(0.1000,0.1000);
								InheritVelocityFactor(0.0000,0.0000);
								Size(0, 0.6000, 0.9000);
								Red(0, 240.0000, 255.0000);
								Green(0, 240.0000, 255.0000);
								Blue(0, 240.0000, 255.0000);
								Alpha(0, 0.0000, 0.0000);
								StartRotation(0, -50.0000, 0.0000);
								RotationVelocity(0, -50.0000, 50.0000);
								FadeInTime(0.0000);
							}
							Transformer()
							{
								LifeTime(10.0000);
								Position()
								{
									LifeTime(3.0000)
								}
								Size(0)
								{
									LifeTime(3.0000)
									Scale(3.0000);
								}
								Color(0)
								{
									LifeTime(0.5000)
									Move(255.0000,255.0000,255.0000,255.0000);
									Next()
									{
										LifeTime(10.0000)
										Reach(255.0000,255.0000,255.0000,255.0000);
										Next()
										{
											LifeTime(0.0000)
											Reach(255.0000,255.0000,255.0000,0.0000);
										}
									}
								}
							}
							Geometry()
							{
								BlendMode("NORMAL");
								Type("PARTICLE");
								Texture("underlitesmoke2");
							}
						}
					}
					ParticleEmitter("BlackRing1")
					{
						MaxParticles(-1.0000,-1.0000);
						StartDelay(0.5000,0.5000);
						BurstDelay(3.0000, 3.0000);
						BurstCount(1.0000,1.0000);
						MaxLodDist(1100.0000);
						MinLodDist(1000.0000);
						BoundingRadius(5.0);
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
							Size(0, 5.0000, 5.0500);
							Hue(0, 10.0000, 20.0000);
							Saturation(0, 255.0000, 255.0000);
							Value(0, 255.0000, 255.0000);
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
								LifeTime(0.5000)
							}
							Size(0)
							{
								LifeTime(1.0000)
								Scale(0.0100);
							}
							Color(0)
							{
								LifeTime(1.0000)
								Move(0.0000,0.0000,0.0000,64.0000);
							}
						}
						Geometry()
						{
							BlendMode("ADDITIVE");
							Type("PARTICLE");
							Texture("com_sfx_flashball1");
						}
						ParticleEmitter("BlackRing2")
						{
							MaxParticles(-1.0000,-1.0000);
							StartDelay(1.2500,1.2500);
							BurstDelay(2.0000, 2.0000);
							BurstCount(1.0000,1.0000);
							MaxLodDist(1100.0000);
							MinLodDist(1000.0000);
							BoundingRadius(5.0);
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
								Size(0, 5.0000, 5.0500);
								Hue(0, 10.0000, 20.0000);
								Saturation(0, 255.0000, 255.0000);
								Value(0, 255.0000, 255.0000);
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
									LifeTime(0.5000)
								}
								Size(0)
								{
									LifeTime(1.0000)
									Scale(0.0100);
								}
								Color(0)
								{
									LifeTime(1.0000)
									Move(0.0000,0.0000,0.0000,96.0000);
								}
							}
							Geometry()
							{
								BlendMode("ADDITIVE");
								Type("PARTICLE");
								Texture("com_sfx_flashball1");
							}
							ParticleEmitter("BlackRing3")
							{
								MaxParticles(-1.0000,-1.0000);
								StartDelay(1.6000,1.6000);
								BurstDelay(1.0000, 1.0000);
								BurstCount(1.0000,1.0000);
								MaxLodDist(1100.0000);
								MinLodDist(1000.0000);
								BoundingRadius(5.0);
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
									Size(0, 5.0000, 5.0500);
									Hue(0, 10.0000, 20.0000);
									Saturation(0, 255.0000, 255.0000);
									Value(0, 255.0000, 255.0000);
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
										LifeTime(0.5000)
									}
									Size(0)
									{
										LifeTime(1.0000)
										Scale(0.0100);
									}
									Color(0)
									{
										LifeTime(1.0000)
										Move(0.0000,0.0000,0.0000,128.0000);
									}
								}
								Geometry()
								{
									BlendMode("ADDITIVE");
									Type("PARTICLE");
									Texture("com_sfx_flashball1");
								}
								ParticleEmitter("BlackRing4")
								{
									MaxParticles(-1.0000,-1.0000);
									StartDelay(2.2000,2.2000);
									BurstDelay(0.5000, 0.5000);
									BurstCount(1.0000,1.0000);
									MaxLodDist(1100.0000);
									MinLodDist(1000.0000);
									BoundingRadius(5.0);
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
										Size(0, 5.0000, 5.0500);
										Hue(0, 10.0000, 20.0000);
										Saturation(0, 50.0000, 100.0000);
										Value(0, 255.0000, 255.0000);
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
											LifeTime(0.5000)
										}
										Size(0)
										{
											LifeTime(1.0000)
											Scale(0.0100);
										}
										Color(0)
										{
											LifeTime(1.0000)
											Move(0.0000,0.0000,0.0000,156.0000);
										}
									}
									Geometry()
									{
										BlendMode("ADDITIVE");
										Type("PARTICLE");
										Texture("com_sfx_flashball1");
									}
									ParticleEmitter("BlackRing5")
									{
										MaxParticles(-1.0000,-1.0000);
										StartDelay(2.0000,2.0000);
										BurstDelay(0.5000, 0.5000);
										BurstCount(1.0000,1.0000);
										MaxLodDist(1100.0000);
										MinLodDist(1000.0000);
										BoundingRadius(5.0);
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
											Size(0, 5.0000, 5.0500);
											Hue(0, 10.0000, 20.0000);
											Saturation(0, 255.0000, 255.0000);
											Value(0, 255.0000, 255.0000);
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
												LifeTime(0.5000)
											}
											Size(0)
											{
												LifeTime(1.0000)
												Scale(0.0100);
											}
											Color(0)
											{
												LifeTime(1.0000)
												Move(0.0000,0.0000,0.0000,192.0000);
											}
										}
										Geometry()
										{
											BlendMode("ADDITIVE");
											Type("PARTICLE");
											Texture("com_sfx_flashball1");
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}
}
