ParticleEmitter("Smoke")
{
	MaxParticles(-1.0000,-1.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.5000, 0.5000);
	BurstCount(1.0000,1.0000);
	MaxLodDist(1000.0000);
	MinLodDist(800.0000);
	BoundingRadius(25.0);
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
			PositionX(-0.1000,0.1000);
			PositionY(-0.1000,0.1000);
			PositionZ(-0.1000,0.1000);
		}
		Offset()
		{
			PositionX(0.0000,0.0000);
			PositionY(2.0000,2.0000);
			PositionZ(0.0000,0.0000);
		}
		PositionScale(1.0000,1.0000);
		VelocityScale(0.0000,0.0000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 0.8000, 1.4000);
		Hue(0, 0.0000, 0.0000);
		Saturation(0, 0.0000, 0.0000);
		Value(0, 255.0000, 255.0000);
		Alpha(0, 0.0000, 0.0000);
		StartRotation(0, -360.0000, 0.0000);
		RotationVelocity(0, -20.0000, 20.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(3.0000);
		Position()
		{
			LifeTime(0.5000)
		}
		Size(0)
		{
			LifeTime(3.0000)
			Scale(4.0000);
		}
		Color(0)
		{
			LifeTime(0.5000)
			Move(0.0000,0.0000,0.0000,64.0000);
			Next()
			{
				LifeTime(2.5000)
				Move(0.0000,0.0000,0.0000,-64.0000);
			}
		}
	}
	Geometry()
	{
		BlendMode("BLUR");
		BlurValue(0.1000);
		BlurRes(1.0000);
		Type("PARTICLE");
		Texture("com_sfx_waterfoam1");
	}
	ParticleEmitter("Swirl")
	{
		MaxParticles(-1.0000,-1.0000);
		StartDelay(0.0000,0.0000);
		BurstDelay(0.0100, 0.0100);
		BurstCount(1.0000,1.0000);
		MaxLodDist(1000.0000);
		MinLodDist(800.0000);
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
			Vortex()
			{
				StartX(-0.0300,-0.0300);
				StartMoveX(0.0330,0.0330);
				MoveX(0.0000,0.0000);
				StartY(0.0000,0.0000);
				StartMoveY(0.0730,0.0730);
				MoveY(0.0000,0.0000);
				StartZ(0.0300,0.0300);
				StartMoveZ(0.0930,0.0930);
				MoveZ(0.0000,0.0000);
			}
			Offset()
			{
				PositionX(0.0000,0.0000);
				PositionY(2.0000,2.0000);
				PositionZ(0.0000,0.0000);
			}
			PositionScale(1.0000,1.0000);
			VelocityScale(1.0000,1.0000);
			InheritVelocityFactor(0.0000,0.0000);
			Size(0, 0.1500, 0.1500);
			Hue(0, 10.0000, 50.0000);
			Saturation(0, 50.0000, 120.0000);
			Value(0, 151.0000, 255.0000);
			Alpha(0, 0.0000, 0.0000);
			StartRotation(0, 90.0000, 90.0000);
			RotationVelocity(0, 0.0000, 1.0000);
			FadeInTime(0.0000);
		}
		Transformer()
		{
			LifeTime(0.5000);
			Position()
			{
				LifeTime(1.5000)
			}
			Size(0)
			{
				LifeTime(1.0000)
				Scale(0.1000);
			}
			Color(0)
			{
				LifeTime(0.0010)
				Move(0.0000,0.0000,0.0000,255.0000);
				Next()
				{
					LifeTime(0.4500)
					Move(0.0000,0.0000,0.0000,-255.0000);
				}
			}
		}
		Geometry()
		{
			BlendMode("ADDITIVE");
			Type("PARTICLE");
			Texture("com_sfx_flashball3");
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
		ParticleEmitter("Swirl")
		{
			MaxParticles(-1.0000,-1.0000);
			StartDelay(0.0000,0.0000);
			BurstDelay(0.0100, 0.0100);
			BurstCount(1.0000,1.0000);
			MaxLodDist(1000.0000);
			MinLodDist(800.0000);
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
				Vortex()
				{
					StartX(1.0000,1.0000);
					StartMoveX(0.0330,0.0330);
					MoveX(0.0000,0.0000);
					StartY(0.0000,0.0000);
					StartMoveY(0.0730,0.0730);
					MoveY(0.0000,0.0000);
					StartZ(-1.0000,-1.0000);
					StartMoveZ(0.0930,0.0930);
					MoveZ(0.0000,0.0000);
				}
				Offset()
				{
					PositionX(0.0000,0.0000);
					PositionY(2.0000,2.0000);
					PositionZ(0.0000,0.0000);
				}
				PositionScale(1.0000,1.0000);
				VelocityScale(1.0000,1.0000);
				InheritVelocityFactor(0.0000,0.0000);
				Size(0, 0.1500, 0.1500);
				Hue(0, 80.0000, 130.0000);
				Saturation(0, 20.0000, 120.0000);
				Value(0, 255.0000, 255.0000);
				Alpha(0, 0.0000, 0.0000);
				StartRotation(0, 90.0000, 90.0000);
				RotationVelocity(0, 0.0000, 1.0000);
				FadeInTime(0.0000);
			}
			Transformer()
			{
				LifeTime(0.5000);
				Position()
				{
					LifeTime(1.5000)
				}
				Size(0)
				{
					LifeTime(1.0000)
					Scale(0.1000);
				}
				Color(0)
				{
					LifeTime(0.0010)
					Move(0.0000,0.0000,0.0000,255.0000);
					Next()
					{
						LifeTime(0.4500)
						Move(0.0000,0.0000,0.0000,-255.0000);
					}
				}
			}
			Geometry()
			{
				BlendMode("ADDITIVE");
				Type("PARTICLE");
				Texture("com_sfx_flashball3");
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
			ParticleEmitter("Smoke")
			{
				MaxParticles(-1.0000,-1.0000);
				StartDelay(0.0000,0.0000);
				BurstDelay(0.2500, 0.2500);
				BurstCount(1.0000,1.0000);
				MaxLodDist(50.0000);
				MinLodDist(10.0000);
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
						PositionX(-0.1000,0.1000);
						PositionY(-0.1000,0.1000);
						PositionZ(-0.1000,0.1000);
					}
					Offset()
					{
						PositionX(0.0000,0.0000);
						PositionY(2.0000,2.0000);
						PositionZ(0.0000,0.0000);
					}
					PositionScale(1.0000,1.0000);
					VelocityScale(0.0000,0.0000);
					InheritVelocityFactor(0.0000,0.0000);
					Size(0, 0.4000, 0.7000);
					Hue(0, 100.0000, 100.0000);
					Saturation(0, 10.0000, 120.0000);
					Value(0, 80.0000, 200.0000);
					Alpha(0, 0.0000, 0.0000);
					StartRotation(0, -360.0000, 0.0000);
					RotationVelocity(0, -20.0000, 20.0000);
					FadeInTime(0.0000);
				}
				Transformer()
				{
					LifeTime(3.0000);
					Position()
					{
						LifeTime(0.5000)
					}
					Size(0)
					{
						LifeTime(3.0000)
						Scale(4.0000);
					}
					Color(0)
					{
						LifeTime(0.5000)
						Move(0.0000,0.0000,0.0000,92.0000);
						Next()
						{
							LifeTime(2.5000)
							Move(0.0000,0.0000,0.0000,-92.0000);
						}
					}
				}
				Geometry()
				{
					BlendMode("ADDITIVE");
					Type("PARTICLE");
					Texture("com_sfx_smoke4");
				}
				ParticleEmitter("Flare")
				{
					MaxParticles(-1.0000,-1.0000);
					StartDelay(1.0000,1.0000);
					BurstDelay(0.7500, 0.7500);
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
							PositionY(2.0000,2.0000);
							PositionZ(0.0000,0.0000);
						}
						PositionScale(0.0000,0.0000);
						VelocityScale(0.0000,0.0000);
						InheritVelocityFactor(0.0000,0.0000);
						Size(0, 3.0000, 3.0000);
						Red(0, 128.0000, 128.0000);
						Green(0, 255.0000, 255.0000);
						Blue(0, 128.0000, 128.0000);
						Alpha(0, 0.0000, 0.0000);
						StartRotation(0, 128.0000, 128.0000);
						RotationVelocity(0, 0.0000, 0.0000);
						FadeInTime(0.0000);
					}
					Transformer()
					{
						LifeTime(7.0000);
						Position()
						{
							LifeTime(7.0000)
							Accelerate(0.0000, -0.0500, 0.0000);
						}
						Size(0)
						{
							LifeTime(6.0000)
							Scale(4.0000);
						}
						Color(0)
						{
							LifeTime(3.0000)
							Move(0.0000,0.0000,0.0000,32.0000);
							Next()
							{
								LifeTime(4.0000)
								Move(0.0000,0.0000,0.0000,-170.0000);
							}
						}
					}
					Geometry()
					{
						BlendMode("ADDITIVE");
						Type("PARTICLE");
						Texture("com_sfx_flare1");
					}
					ParticleEmitter("Ping")
					{
						MaxParticles(-1.0000,-1.0000);
						StartDelay(1.0000,1.0000);
						BurstDelay(0.3500, 0.3500);
						BurstCount(1.0000,1.0000);
						MaxLodDist(50.0000);
						MinLodDist(10.0000);
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
								PositionY(0.1000,0.1000);
								PositionZ(0.0000,0.0000);
							}
							PositionScale(0.0000,0.0000);
							VelocityScale(0.0000,0.0000);
							InheritVelocityFactor(0.0000,0.0000);
							Size(0, 0.3000, 0.5000);
							Red(0, 150.0000, 150.0000);
							Green(0, 255.0000, 255.0000);
							Blue(0, 150.0000, 150.0000);
							Alpha(0, 0.0000, 0.0000);
							StartRotation(0, 0.0000, 0.0000);
							RotationVelocity(0, 0.0000, 0.0000);
							FadeInTime(0.0000);
						}
						Transformer()
						{
							LifeTime(0.5000);
							Position()
							{
								LifeTime(0.5000)
							}
							Size(0)
							{
								LifeTime(0.5000)
								Scale(10.0000);
							}
							Color(0)
							{
								LifeTime(0.0100)
								Move(0.0000,0.0000,0.0000,255.0000);
								Next()
								{
									LifeTime(0.4500)
									Move(0.0000,0.0000,0.0000,-255.0000);
								}
							}
						}
						Geometry()
						{
							BlendMode("ADDITIVE");
							Type("BILLBOARD");
							Texture("com_sfx_flashring1");
						}
					}
				}
			}
		}
	}
}
