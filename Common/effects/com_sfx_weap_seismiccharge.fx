ParticleEmitter("FlareBallDark")
{
	MaxParticles(5.0000,5.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.1000, 0.1000);
	BurstCount(5.0000,5.0000);
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
		Size(0, 0.0100, 0.0100);
		Red(0, 0.0000, 0.0000);
		Green(0, 50.0000, 50.0000);
		Blue(0, 255.0000, 255.0000);
		Alpha(0, 86.0000, 86.0000);
		StartRotation(0, 0.0000, 360.0000);
		RotationVelocity(0, -180.0000, 180.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(0.8000);
		Position()
		{
			LifeTime(3.0000)
		}
		Size(0)
		{
			LifeTime(0.3000)
			Reach(1.0000);
			Next()
			{
				LifeTime(0.3000)
				Scale(1.1000);
				Next()
				{
					LifeTime(0.2000)
					Scale(0.0000);
				}
			}
		}
		Color(0)
		{
			LifeTime(3.0000)
			Move(0.0000,0.0000,0.0000,0.0000);
		}
	}
	Geometry()
	{
		BlendMode("NORMAL");
		Type("PARTICLE");
		Texture("com_sfx_explosion1");
	}
	ParticleEmitter("FlareBallLight")
	{
		MaxParticles(1.0000,1.0000);
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
			Size(0, 0.0100, 0.0100);
			Red(0, 0.0000, 0.0000);
			Green(0, 50.0000, 50.0000);
			Blue(0, 255.0000, 255.0000);
			Alpha(0, 100.0000, 100.0000);
			StartRotation(0, 0.0000, 360.0000);
			RotationVelocity(0, -180.0000, 180.0000);
			FadeInTime(0.0000);
		}
		Transformer()
		{
			LifeTime(0.8000);
			Position()
			{
				LifeTime(3.0000)
			}
			Size(0)
			{
				LifeTime(0.3000)
				Move(1.0000);
				Next()
				{
					LifeTime(0.3000)
					Scale(1.1000);
					Next()
					{
						LifeTime(0.2000)
						Scale(0.0000);
					}
				}
			}
			Color(0)
			{
				LifeTime(3.0000)
				Move(0.0000,0.0000,0.0000,0.0000);
			}
		}
		Geometry()
		{
			BlendMode("ADDITIVE");
			Type("PARTICLE");
			Texture("com_sfx_explosion4");
		}
		ParticleEmitter("Hilights")
		{
			MaxParticles(10.0000,10.0000);
			StartDelay(0.0000,0.0000);
			BurstDelay(0.0100, 0.0100);
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
				Offset()
				{
					PositionX(-0.2500,0.2500);
					PositionY(-0.2500,0.2500);
					PositionZ(-0.2500,0.2500);
				}
				PositionScale(0.0000,0.0000);
				VelocityScale(0.0000,0.0000);
				InheritVelocityFactor(0.0000,0.0000);
				Size(0, 0.1000, 0.2000);
				Red(0, 255.0000, 255.0000);
				Green(0, 255.0000, 255.0000);
				Blue(0, 255.0000, 255.0000);
				Alpha(0, 0.0000, 0.0000);
				StartRotation(0, 0.0000, 360.0000);
				RotationVelocity(0, -90.0000, 90.0000);
				FadeInTime(0.0000);
			}
			Transformer()
			{
				LifeTime(0.8000);
				Position()
				{
					LifeTime(2.0000)
					Accelerate(0.0000, 0.0000, 0.0000);
				}
				Size(0)
				{
					LifeTime(0.8000)
					Scale(5.0000);
				}
				Color(0)
				{
					LifeTime(0.4000)
					Reach(255.0000,255.0000,255.0000,255.0000);
					Next()
					{
						LifeTime(0.4000)
						Reach(0.0000,0.0000,20.0000,0.0000);
					}
				}
			}
			Geometry()
			{
				BlendMode("ADDITIVE");
				Type("PARTICLE");
				Texture("com_sfx_smoke2");
			}
			ParticleEmitter("cs_ring")
			{
				MaxParticles(1.0000,1.0000);
				StartDelay(0.9000,0.9000);
				BurstDelay(0.0000, 0.0000);
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
					Size(0, 0.1000, 0.2000);
					Red(0, 255.0000, 255.0000);
					Green(0, 255.0000, 255.0000);
					Blue(0, 255.0000, 255.0000);
					Alpha(0, 0.0000, 0.0000);
					StartRotation(0, 0.0000, 6.0000);
					RotationVelocity(0, 0.0000, 0.0000);
					FadeInTime(0.0000);
				}
				Transformer()
				{
					LifeTime(2.0000);
					Position()
					{
						LifeTime(2.0000)
					}
					Size(0)
					{
						LifeTime(2.0000)
						Reach(100.0000);
					}
					Color(0)
					{
						LifeTime(0.5000)
						Reach(255.0000,255.0000,255.0000,255.0000);
						Next()
						{
							LifeTime(1.5000)
							Reach(255.0000,255.0000,255.0000,0.0000);
						}
					}
				}
				Geometry()
				{
					BlendMode("NORMAL");
					Type("BILLBOARD");
					Texture("com_sfx_flashring1");
				}
				ParticleEmitter("InitialFlare")
				{
					MaxParticles(3.0000,3.0000);
					StartDelay(0.0000,0.0000);
					BurstDelay(0.1000, 0.2000);
					BurstCount(3.0000,3.0000);
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
						Red(0, 85.0000, 85.0000);
						Green(0, 123.0000, 123.0000);
						Blue(0, 255.0000, 255.0000);
						Alpha(0, 255.0000, 255.0000);
						StartRotation(0, 0.0000, 360.0000);
						RotationVelocity(0, 0.0000, 0.0000);
						FadeInTime(0.0000);
					}
					Transformer()
					{
						LifeTime(0.3000);
						Position()
						{
							LifeTime(1.0000)
						}
						Size(0)
						{
							LifeTime(0.3000)
							Scale(0.0000);
						}
						Color(0)
						{
							LifeTime(0.3000)
							Move(85.0000,123.0000,255.0000,0.0000);
						}
					}
					Geometry()
					{
						BlendMode("ADDITIVE");
						Type("PARTICLE");
						Texture("com_sfx_flashball2");
					}
					ParticleEmitter("BigFlare")
					{
						MaxParticles(5.0000,5.0000);
						StartDelay(0.8000,0.8000);
						BurstDelay(0.0000, 0.0000);
						BurstCount(5.0000,5.0000);
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
							Size(0, 2.0000, 6.0000);
							Red(0, 85.0000, 85.0000);
							Green(0, 149.0000, 149.0000);
							Blue(0, 255.0000, 255.0000);
							Alpha(0, 255.0000, 255.0000);
							StartRotation(0, 0.0000, 360.0000);
							RotationVelocity(0, 0.0000, 0.0000);
							FadeInTime(0.0000);
						}
						Transformer()
						{
							LifeTime(0.2000);
							Position()
							{
								LifeTime(1.0000)
							}
							Size(0)
							{
								LifeTime(1.0000)
								Scale(250.0000);
							}
							Color(0)
							{
								LifeTime(0.2000)
								Reach(85.0000,149.0000,255.0000,0.0000);
							}
						}
						Geometry()
						{
							BlendMode("ADDITIVE");
							Type("PARTICLE");
							Texture("com_sfx_flashball3");
						}
						ParticleEmitter("Glow")
						{
							MaxParticles(1.0000,1.0000);
							StartDelay(0.8000,0.8000);
							BurstDelay(0.0000, 0.0000);
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
									PositionZ(0.0000,1.0000);
								}
								PositionScale(0.0000,0.0000);
								VelocityScale(0.0000,0.0000);
								InheritVelocityFactor(0.0000,0.0000);
								Size(0, 20.0000, 20.0000);
								Red(0, 85.0000, 85.0000);
								Green(0, 149.0000, 149.0000);
								Blue(0, 255.0000, 255.0000);
								Alpha(0, 255.0000, 255.0000);
								StartRotation(0, 0.0000, 360.0000);
								RotationVelocity(0, 0.0000, 0.0000);
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
									LifeTime(2.0000)
									Scale(2.0000);
								}
								Color(0)
								{
									LifeTime(2.0000)
									Reach(85.0000,149.0000,255.0000,0.0000);
								}
							}
							Geometry()
							{
								BlendMode("ADDITIVE");
								Type("PARTICLE");
								Texture("com_sfx_flashball1");
							}
							ParticleEmitter("Flare")
							{
								MaxParticles(1.0000,1.0000);
								StartDelay(0.0000,0.0000);
								BurstDelay(0.0000, 0.0000);
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
									Size(0, 0.1000, 0.1000);
									Red(0, 85.0000, 85.0000);
									Green(0, 196.0000, 196.0000);
									Blue(0, 150.0000, 255.0000);
									Alpha(0, 32.0000, 32.0000);
									StartRotation(0, 0.0000, 360.0000);
									RotationVelocity(0, 0.0000, 0.0000);
									FadeInTime(0.0000);
								}
								Transformer()
								{
									LifeTime(0.8000);
									Position()
									{
										LifeTime(1.0000)
									}
									Size(0)
									{
										LifeTime(0.3000)
										Scale(200.0000);
										Next()
										{
											LifeTime(0.3500)
											Scale(0.0000);
										}
									}
									Color(0)
									{
										LifeTime(0.8000)
										Reach(85.0000,196.0000,255.0000,16.0000);
									}
								}
								Geometry()
								{
									BlendMode("ADDITIVE");
									Type("PARTICLE");
									Texture("com_sfx_flashring1");
								}
							}
						}
					}
				}
			}
		}
	}
}
