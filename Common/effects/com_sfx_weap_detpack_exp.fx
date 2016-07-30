ParticleEmitter("Smoke0")
{
	MaxParticles(10.0000,10.0000);
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
		Circle()
		{
			PositionX(-2.0000,2.0000);
			PositionY(0.0000,2.0000);
			PositionZ(-2.0000,2.0000);
		}
		Offset()
		{
			PositionX(0.0000,0.0000);
			PositionY(0.0000,0.0000);
			PositionZ(0.0000,0.0000);
		}
		PositionScale(0.5000,0.5000);
		VelocityScale(3.0000,5.0000);
		InheritVelocityFactor(1.0000,1.0000);
		Size(0, 1.0000, 2.0000);
		Hue(0, 0.0000, 0.0000);
		Saturation(0, 0.0000, 0.0000);
		Value(0, 20.0000, 100.0000);
		Alpha(0, 255.0000, 255.0000);
		StartRotation(0, 0.0000, 360.0000);
		RotationVelocity(0, -40.0000, 0.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(0.5000);
		Position()
		{
			LifeTime(0.5000)
			Scale(0.0000);
		}
		Size(0)
		{
			LifeTime(1.0000)
			Scale(2.0000);
		}
		Color(0)
		{
			LifeTime(0.5000)
			Move(0.0000,0.0000,0.0000,-255.0000);
		}
	}
	Geometry()
	{
		BlendMode("NORMAL");
		Type("PARTICLE");
		Texture("com_sfx_smoke3");
	}
	ParticleEmitter("Smoke1")
	{
		MaxParticles(10.0000,10.0000);
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
			Circle()
			{
				PositionX(-2.0000,2.0000);
				PositionY(0.0000,2.0000);
				PositionZ(-2.0000,2.0000);
			}
			Offset()
			{
				PositionX(0.0000,0.0000);
				PositionY(0.0000,0.0000);
				PositionZ(0.0000,0.0000);
			}
			PositionScale(0.5000,0.5000);
			VelocityScale(1.5000,3.5000);
			InheritVelocityFactor(1.0000,1.0000);
			Size(0, 1.0000, 2.0000);
			Hue(0, 0.0000, 0.0000);
			Saturation(0, 0.0000, 0.0000);
			Value(0, 50.0000, 150.0000);
			Alpha(0, 255.0000, 255.0000);
			StartRotation(0, 0.0000, 360.0000);
			RotationVelocity(0, -40.0000, 0.0000);
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
				LifeTime(1.0000)
				Scale(2.0000);
			}
			Color(0)
			{
				LifeTime(1.0000)
				Move(0.0000,0.0000,0.0000,-255.0000);
			}
		}
		Geometry()
		{
			BlendMode("NORMAL");
			Type("PARTICLE");
			Texture("com_sfx_smoke3");
		}
		ParticleEmitter("Smoke2")
		{
			MaxParticles(10.0000,10.0000);
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
				Circle()
				{
					PositionX(-2.0000,2.0000);
					PositionY(0.0000,2.0000);
					PositionZ(-2.0000,2.0000);
				}
				Offset()
				{
					PositionX(0.0000,0.0000);
					PositionY(0.0000,0.0000);
					PositionZ(0.0000,0.0000);
				}
				PositionScale(0.5000,0.5000);
				VelocityScale(1.0000,1.0000);
				InheritVelocityFactor(1.0000,1.0000);
				Size(0, 1.0000, 2.0000);
				Hue(0, 0.0000, 0.0000);
				Saturation(0, 0.0000, 0.0000);
				Value(0, 100.0000, 150.0000);
				Alpha(0, 255.0000, 255.0000);
				StartRotation(0, 0.0000, 360.0000);
				RotationVelocity(0, -40.0000, 0.0000);
				FadeInTime(0.0000);
			}
			Transformer()
			{
				LifeTime(2.0000);
				Position()
				{
					LifeTime(2.0000)
					Scale(0.0000);
				}
				Size(0)
				{
					LifeTime(2.0000)
					Scale(2.0000);
				}
				Color(0)
				{
					LifeTime(2.0000)
					Move(0.0000,0.0000,0.0000,-255.0000);
				}
			}
			Geometry()
			{
				BlendMode("NORMAL");
				Type("PARTICLE");
				Texture("com_sfx_smoke3");
			}
			ParticleEmitter("Explosion0")
			{
				MaxParticles(20.0000,20.0000);
				StartDelay(0.0000,0.0000);
				BurstDelay(0.0010, 0.0010);
				BurstCount(20.0000,20.0000);
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
						PositionX(-2.0000,2.0000);
						PositionY(0.0000,2.0000);
						PositionZ(-2.0000,2.0000);
					}
					Offset()
					{
						PositionX(0.0000,0.0000);
						PositionY(0.0000,0.0000);
						PositionZ(0.0000,0.0000);
					}
					PositionScale(0.5000,0.5000);
					VelocityScale(8.0000,8.0000);
					InheritVelocityFactor(1.0000,1.0000);
					Size(0, 0.5000, 2.0000);
					Hue(0, 0.0000, 0.0000);
					Saturation(0, 0.0000, 0.0000);
					Value(0, 255.0000, 255.0000);
					Alpha(0, 255.0000, 255.0000);
					StartRotation(0, 0.0000, 360.0000);
					RotationVelocity(0, -40.0000, 0.0000);
					FadeInTime(0.0000);
				}
				Transformer()
				{
					LifeTime(0.2500);
					Position()
					{
						LifeTime(0.2500)
						Scale(0.0000);
					}
					Size(0)
					{
						LifeTime(0.2500)
						Scale(0.7500);
					}
					Color(0)
					{
						LifeTime(0.2500)
						Move(0.0000,0.0000,0.0000,-255.0000);
					}
				}
				Geometry()
				{
					BlendMode("ADDITIVE");
					Type("PARTICLE");
					Texture("com_sfx_explosion2");
				}
				ParticleEmitter("Flare")
				{
					MaxParticles(2.0000,2.0000);
					StartDelay(0.0000,0.0000);
					BurstDelay(0.0010, 0.0010);
					BurstCount(2.0000,2.0000);
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
							PositionY(0.0000,0.0000);
							PositionZ(0.0000,0.0000);
						}
						PositionScale(0.0000,0.0000);
						VelocityScale(0.0000,0.0000);
						InheritVelocityFactor(0.0000,0.0000);
						Size(0, 10.0000, 10.0000);
						Red(0, 255.0000, 255.0000);
						Green(0, 240.0000, 240.0000);
						Blue(0, 200.0000, 200.0000);
						Alpha(0, 128.0000, 128.0000);
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
							LifeTime(0.1000)
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
						Type("PARTICLE");
						Texture("com_sfx_flashball3");
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
								PositionX(-0.0200,0.0200);
								PositionY(0.0000,0.2000);
								PositionZ(-0.0200,0.0200);
							}
							Offset()
							{
								PositionX(-1.0000,1.0000);
								PositionY(0.0000,1.0000);
								PositionZ(-1.0000,1.0000);
							}
							PositionScale(0.0000,0.0000);
							VelocityScale(1.0000,1.5000);
							InheritVelocityFactor(0.0000,0.0000);
							Size(0, 0.8000, 1.4000);
							Hue(0, 15.0000, 25.0000);
							Saturation(0, 200.0000, 255.0000);
							Value(0, 255.0000, 255.0000);
							Alpha(0, 255.0000, 255.0000);
							StartRotation(0, 0.0000, 360.0000);
							RotationVelocity(0, -200.0000, 200.0000);
							FadeInTime(0.0000);
						}
						Transformer()
						{
							LifeTime(1.0000);
							Position()
							{
								LifeTime(1.0000)
								Accelerate(0.0000, 0.0000, 0.0000);
							}
							Size(0)
							{
								LifeTime(1.0000)
								Scale(0.1000);
							}
							Color(0)
							{
								LifeTime(1.0000)
								Move(-10.0000,0.0000,0.0000,-255.0000);
							}
						}
						Geometry()
						{
							BlendMode("ADDITIVE");
							Type("PARTICLE");
							Texture("com_sfx_waterfoam3");
						}
						ParticleEmitter("Sparks")
						{
							MaxParticles(10.0000,10.0000);
							StartDelay(0.0000,0.0000);
							BurstDelay(0.0010, 0.0010);
							BurstCount(5.0000,5.0000);
							MaxLodDist(50.0000);
							MinLodDist(10.0000);
							BoundingRadius(5.0);
							SoundName("")
							NoRegisterStep();
							Size(1.0000, 1.0000);
							Red(255.0000, 255.0000);
							Green(255.0000, 255.0000);
							Blue(255.0000, 255.0000);
							Alpha(255.0000, 255.0000);
							Spawner()
							{
								Circle()
								{
									PositionX(-1.0000,1.0000);
									PositionY(0.0000,2.0000);
									PositionZ(-1.0000,1.0000);
								}
								Offset()
								{
									PositionX(0.0000,0.0000);
									PositionY(0.0000,0.0000);
									PositionZ(0.0000,0.0000);
								}
								PositionScale(1.0000,1.0000);
								VelocityScale(5.0000,15.0000);
								InheritVelocityFactor(0.0000,0.0000);
								Size(0, 0.0500, 0.1000);
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
									LifeTime(2.0000)
									Accelerate(0.0000, -20.0000, 0.0000);
								}
								Size(0)
								{
									LifeTime(2.0000)
									Scale(0.0000);
								}
								Color(0)
								{
									LifeTime(2.0000)
									Move(0.0000,0.0000,0.0000,-255.0000);
								}
							}
							Geometry()
							{
								BlendMode("ADDITIVE");
								Type("SPARK");
								SparkLength(0.0500);
								Texture("com_sfx_laser_orange");
							}
						}
					}
				}
			}
		}
	}
}
