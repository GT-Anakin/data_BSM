ParticleEmitter("Smoke")
{
	MaxParticles(-1.0000,-1.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.2500, 0.2500);
	BurstCount(1.0000,1.0000);
	MaxLodDist(50.0000);
	MinLodDist(10.0000);
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
			Hue(0, 0.0000, 20.0000);
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
				Red(0, 255.0000, 255.0000);
				Green(0, 128.0000, 128.0000);
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
				BurstDelay(1.2500, 1.2500);
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
					Red(0, 255.0000, 255.0000);
					Green(0, 200.0000, 200.0000);
					Blue(0, 128.0000, 128.0000);
					Alpha(0, 0.0000, 0.0000);
					StartRotation(0, 0.0000, 0.0000);
					RotationVelocity(0, 0.0000, 0.0000);
					FadeInTime(0.0000);
				}
				Transformer()
				{
					LifeTime(4.0000);
					Position()
					{
						LifeTime(0.5000)
					}
					Size(0)
					{
						LifeTime(4.0000)
						Scale(10.0000);
					}
					Color(0)
					{
						LifeTime(0.0100)
						Move(0.0000,0.0000,0.0000,96.0000);
						Next()
						{
							LifeTime(3.9000)
							Move(0.0000,0.0000,0.0000,-96.0000);
						}
					}
				}
				Geometry()
				{
					BlendMode("ADDITIVE");
					Type("BILLBOARD");
					Texture("com_sfx_flashring1");
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
							Red(0, 255.0000, 255.0000);
							Green(0, 150.0000, 150.0000);
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
