ParticleEmitter("Schrap")
{
	MaxParticles(0.0000,0.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.0100, 0.0100);
	BurstCount(1.0000,1.0000);
	MaxLodDist(50.0000);
	MinLodDist(10.0000);
	BoundingRadius(30.0);
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
			PositionX(-0.0500,0.0500);
			PositionY(0.0500,0.0500);
			PositionZ(-0.0500,0.0500);
		}
		Offset()
		{
			PositionX(0.0000,0.0000);
			PositionY(0.0000,0.0000);
			PositionZ(0.0000,0.0000);
		}
		PositionScale(0.0000,0.0000);
		VelocityScale(2.2500,2.2500);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 0.2500, 0.4000);
		Red(0, 0.0000, 0.0000);
		Green(0, 0.0000, 0.0000);
		Blue(0, 10.0000, 200.0000);
		Alpha(0, 16.0000, 64.0000);
		StartRotation(0, 0.0000, 360.0000);
		RotationVelocity(0, -20.0000, 20.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(1.0000);
		Position()
		{
			LifeTime(1.5000)
			Accelerate(0.0000, -1.8750, 0.0000);
		}
		Size(0)
		{
			LifeTime(0.1000)
			Scale(3.0000);
			Next()
			{
				LifeTime(1.4000)
				Scale(2.0000);
			}
		}
		Color(0)
		{
			LifeTime(0.5000)
			Move(255.0000,0.0000,10.0000,200.0000);
			Next()
			{
				LifeTime(0.5000)
				Move(255.0000,0.0000,255.0000,-255.0000);
			}
		}
	}
	Geometry()
	{
		BlendMode("ADDITIVE");
		Type("PARTICLE");
		Texture("com_sfx_dirt1");
	}
	ParticleEmitter("Lightning1")
	{
		MaxParticles(120.0000,120.0000);
		StartDelay(0.0000,0.0000);
		BurstDelay(0.0100, 0.0100);
		BurstCount(1.0000,2.0000);
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
				PositionX(0.0000,0.0000);
				PositionY(0.0000,0.0000);
				PositionZ(0.0000,0.0000);
			}
			Offset()
			{
				PositionX(-1.0000,1.0000);
				PositionY(-1.0000,1.0000);
				PositionZ(-1.0000,1.0000);
			}
			PositionScale(0.0000,0.0000);
			VelocityScale(0.0000,0.0000);
			InheritVelocityFactor(0.0000,0.0000);
			Size(0, 0.1250, 0.3750);
			Hue(0, 170.0000, 170.0000);
			Saturation(0, 200.0000, 200.0000);
			Value(0, 255.0000, 255.0000);
			Alpha(0, 128.0000, 255.0000);
			StartRotation(0, 0.0000, 360.0000);
			RotationVelocity(0, -5.0000, 5.0000);
			FadeInTime(0.0000);
		}
		Transformer()
		{
			LifeTime(0.1000);
			Position()
			{
				LifeTime(1.0000)
			}
			Size(0)
			{
				LifeTime(0.1000)
				Scale(1.2500);
			}
			Color(0)
			{
				LifeTime(0.0100)
				Move(0.0000,0.0000,0.0000,0.0000);
				Next()
				{
					LifeTime(0.0500)
					Reach(0.0000,0.0000,0.0000,-255.0000);
				}
			}
		}
		Geometry()
		{
			BlendMode("ADDITIVE");
			Type("GEOMETRY");
			Model("com_sfx_lightningball1");
		}
		ParticleEmitter("Lightning2")
		{
			MaxParticles(20.0000,20.0000);
			StartDelay(0.0000,0.0000);
			BurstDelay(0.1000, 0.1000);
			BurstCount(1.0000,2.0000);
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
					PositionX(0.0000,0.0000);
					PositionY(0.0000,0.0000);
					PositionZ(0.0000,0.0000);
				}
				Offset()
				{
					PositionX(-0.5000,0.5000);
					PositionY(-0.5000,0.5000);
					PositionZ(-0.5000,0.5000);
				}
				PositionScale(0.0000,0.0000);
				VelocityScale(0.0000,0.0000);
				InheritVelocityFactor(0.0000,0.0000);
				Size(0, 0.1500, 0.3000);
				Hue(0, 170.0000, 170.0000);
				Saturation(0, 200.0000, 200.0000);
				Value(0, 255.0000, 255.0000);
				Alpha(0, 0.0000, 0.0000);
				StartRotation(0, 0.0000, 10.0000);
				RotationVelocity(0, 0.1000, 0.6000);
				FadeInTime(0.0000);
			}
			Transformer()
			{
				LifeTime(0.1000);
				Position()
				{
					LifeTime(1.0000)
				}
				Size(0)
				{
					LifeTime(0.1000)
					Scale(1.0000);
				}
				Color(0)
				{
					LifeTime(0.0100)
					Move(0.0000,0.0000,0.0000,255.0000);
					Next()
					{
						LifeTime(0.0500)
						Move(0.0000,0.0000,0.0000,-255.0000);
					}
				}
			}
			Geometry()
			{
				BlendMode("ADDITIVE");
				Type("GEOMETRY");
				Model("com_sfx_lightningball2");
			}
			ParticleEmitter("Lightning3")
			{
				MaxParticles(28.0000,28.0000);
				StartDelay(0.2500,0.2500);
				BurstDelay(0.2000, 0.2000);
				BurstCount(2.0000,3.0000);
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
						PositionX(0.0000,0.0000);
						PositionY(0.0000,0.0000);
						PositionZ(0.0000,0.0000);
					}
					Offset()
					{
						PositionX(-0.3750,0.3750);
						PositionY(-0.3750,0.3750);
						PositionZ(-0.3750,0.3750);
					}
					PositionScale(0.0000,0.0000);
					VelocityScale(0.0000,0.0000);
					InheritVelocityFactor(0.0000,0.0000);
					Size(0, 0.1500, 0.3000);
					Hue(0, 170.0000, 170.0000);
					Saturation(0, 100.0000, 150.0000);
					Value(0, 200.0000, 255.0000);
					Alpha(0, 0.0000, 0.0000);
					StartRotation(0, 0.0000, 360.0000);
					RotationVelocity(0, -5.0000, 5.0000);
					FadeInTime(0.0000);
				}
				Transformer()
				{
					LifeTime(0.1000);
					Position()
					{
						LifeTime(1.0000)
					}
					Size(0)
					{
						LifeTime(0.1000)
						Scale(1.0000);
					}
					Color(0)
					{
						LifeTime(0.0100)
						Move(0.0000,0.0000,0.0000,128.0000);
						Next()
						{
							LifeTime(0.0700)
							Move(0.0000,0.0000,0.0000,-128.0000);
						}
					}
				}
				Geometry()
				{
					BlendMode("ADDITIVE");
					Type("GEOMETRY");
					Model("com_sfx_lightningball3");
				}
				ParticleEmitter("Flare")
				{
					MaxParticles(0.0000,0.0000);
					StartDelay(0.0000,0.0000);
					BurstDelay(0.1000, 0.2000);
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
						Size(0, 1.0000, 1.0000);
						Hue(0, 170.0000, 170.0000);
						Saturation(0, 255.0000, 255.0000);
						Value(0, 20.0000, 255.0000);
						Alpha(0, 64.0000, 64.0000);
						StartRotation(0, 0.0000, 0.0000);
						RotationVelocity(0, 0.0000, 0.0000);
						FadeInTime(0.0000);
					}
					Transformer()
					{
						LifeTime(0.7500);
						Position()
						{
							LifeTime(1.0000)
						}
						Size(0)
						{
							LifeTime(0.7500)
							Scale(3.0000);
						}
						Color(0)
						{
							LifeTime(0.7500)
							Move(0.0000,0.0000,0.0000,-64.0000);
						}
					}
					Geometry()
					{
						BlendMode("ADDITIVE");
						Type("PARTICLE");
						Texture("com_sfx_flashring2");
					}
					ParticleEmitter("Energy")
					{
						MaxParticles(0.0000,0.0000);
						StartDelay(0.0000,0.0000);
						BurstDelay(0.0200, 0.0200);
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
								PositionX(-0.5000,0.5000);
								PositionY(-0.5000,0.5000);
								PositionZ(-0.5000,0.5000);
							}
							PositionScale(0.0000,0.0000);
							VelocityScale(3.0000,3.0000);
							InheritVelocityFactor(0.0000,0.0000);
							Size(0, 0.2500, 0.3500);
							Red(0, 0.0000, 0.0000);
							Green(0, 0.0000, 0.0000);
							Blue(0, 100.0000, 200.0000);
							Alpha(0, 128.0000, 128.0000);
							StartRotation(0, 0.0000, 360.0000);
							RotationVelocity(0, -100.0000, 100.0000);
							FadeInTime(0.0000);
						}
						Transformer()
						{
							LifeTime(0.2500);
							Position()
							{
								LifeTime(1.5000)
							}
							Size(0)
							{
								LifeTime(0.2500)
								Scale(5.0000);
							}
							Color(0)
							{
								LifeTime(0.2500)
								Reach(255.0000,0.0000,50.0000,0.0000);
							}
						}
						Geometry()
						{
							BlendMode("ADDITIVE");
							Type("PARTICLE");
							Texture("com_sfx_flashring2");
						}
						ParticleEmitter("Sparks")
						{
							MaxParticles(0.0000,0.0000);
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
									PositionX(-0.0500,0.0500);
									PositionY(-0.0500,0.0500);
									PositionZ(-0.0500,0.0500);
								}
								Offset()
								{
									PositionX(0.0000,0.0000);
									PositionY(0.0000,0.0000);
									PositionZ(0.0000,0.0000);
								}
								PositionScale(0.5000,1.5000);
								VelocityScale(10.0000,30.0000);
								InheritVelocityFactor(0.0000,0.0000);
								Size(0, 0.0250, 0.0650);
								Hue(0, 170.0000, 170.0000);
								Saturation(0, 255.0000, 255.0000);
								Value(0, 17.0000, 32.0000);
								Alpha(0, 0.0000, 0.0000);
								StartRotation(0, 0.0000, 0.0000);
								RotationVelocity(0, 0.0000, 0.0000);
								FadeInTime(0.0000);
							}
							Transformer()
							{
								LifeTime(0.2500);
								Position()
								{
									LifeTime(0.7500)
									Accelerate(0.0000, -1.0000, 0.0000);
								}
								Size(0)
								{
									LifeTime(0.2000)
									Scale(1.0000);
								}
								Color(0)
								{
									LifeTime(0.0100)
									Move(0.0000,0.0000,0.0000,128.0000);
									Next()
									{
										LifeTime(0.6900)
										Reach(0.0000,0.0000,0.0000,0.0000);
										Next()
										{
											LifeTime(0.1000)
											Reach(0.0000,0.0000,0.0000,-128.0000);
										}
									}
								}
							}
							Geometry()
							{
								BlendMode("ADDITIVE");
								Type("SPARK");
								SparkLength(0.0500);
								Texture("com_sfx_laser_red");
							}
						}
					}
				}
			}
		}
	}
}

