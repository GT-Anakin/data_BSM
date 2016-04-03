ParticleEmitter("Steam1")
{
	MaxParticles(-1.0000,-1.0000);
	StartDelay(0.0000,1.0000);
	BurstDelay(0.2500, 0.2500);
	BurstCount(1.0000,1.0000);
	MaxLodDist(2200.0000);
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
			PositionX(0.0000,1.0000);
			PositionY(-1.0000,1.0000);
			PositionZ(-1.7500,-1.7500);
		}
		Offset()
		{
			PositionX(10.0000,10.0000);
			PositionY(10.0000,10.0000);
			PositionZ(-17.0000,-17.0000);
		}
		PositionScale(0.0000,0.0000);
		VelocityScale(20.0000,30.0000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 8.0000, 8.0000);
		Red(0, 255.0000, 255.0000);
		Green(0, 255.0000, 255.0000);
		Blue(0, 255.0000, 255.0000);
		Alpha(0, 128.0000, 128.0000);
		StartRotation(0, 0.0000, 360.0000);
		RotationVelocity(0, -180.0000, 180.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(4.0000);
		Position()
		{
			LifeTime(2.0000)
			Scale(0.0000);
		}
		Size(0)
		{
			LifeTime(4.0000)
			Scale(10.0000);
		}
		Color(0)
		{
			LifeTime(4.0000)
			Move(0.0000,0.0000,0.0000,-255.0000);
		}
	}
	Geometry()
	{
		BlendMode("NORMAL");
		Type("PARTICLE");
		Texture("com_sfx_smoke3");
	}
	ParticleEmitter("Steam2")
	{
		MaxParticles(-1.0000,-1.0000);
		StartDelay(0.0000,1.0000);
		BurstDelay(0.2500, 0.2500);
		BurstCount(1.0000,1.0000);
		MaxLodDist(2200.0000);
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
				PositionX(-5.0000,-2.0000);
				PositionY(-1.0000,1.0000);
				PositionZ(-1.7500,-1.7500);
			}
			Offset()
			{
				PositionX(-20.0000,-20.0000);
				PositionY(10.0000,10.0000);
				PositionZ(-2.0000,-2.0000);
			}
			PositionScale(0.0000,0.0000);
			VelocityScale(20.0000,40.0000);
			InheritVelocityFactor(0.0000,0.0000);
			Size(0, 8.0000, 8.0000);
			Red(0, 255.0000, 255.0000);
			Green(0, 255.0000, 255.0000);
			Blue(0, 255.0000, 255.0000);
			Alpha(0, 128.0000, 128.0000);
			StartRotation(0, 0.0000, 360.0000);
			RotationVelocity(0, -180.0000, 180.0000);
			FadeInTime(0.0000);
		}
		Transformer()
		{
			LifeTime(4.0000);
			Position()
			{
				LifeTime(2.0000)
				Scale(0.0000);
			}
			Size(0)
			{
				LifeTime(4.0000)
				Scale(10.0000);
			}
			Color(0)
			{
				LifeTime(4.0000)
				Move(0.0000,0.0000,0.0000,-255.0000);
			}
		}
		Geometry()
		{
			BlendMode("NORMAL");
			Type("PARTICLE");
			Texture("com_sfx_smoke3");
		}
		ParticleEmitter("Fire1")
		{
			MaxParticles(-1.0000,-1.0000);
			StartDelay(0.0000,1.0000);
			BurstDelay(0.3000, 0.3000);
			BurstCount(1.0000,1.0000);
			MaxLodDist(2200.0000);
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
					PositionX(0.0000,1.0000);
					PositionY(-1.0000,1.0000);
					PositionZ(-1.7500,-1.7500);
				}
				Offset()
				{
					PositionX(10.0000,10.0000);
					PositionY(10.0000,10.0000);
					PositionZ(-17.0000,-17.0000);
				}
				PositionScale(0.0000,0.0000);
				VelocityScale(10.0000,15.0000);
				InheritVelocityFactor(0.0000,0.0000);
				Size(0, 3.0000, 5.0000);
				Red(0, 255.0000, 255.0000);
				Green(0, 255.0000, 255.0000);
				Blue(0, 255.0000, 255.0000);
				Alpha(0, 0.0000, 0.0000);
				StartRotation(0, 0.0000, 360.0000);
				RotationVelocity(0, -180.0000, 180.0000);
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
					Scale(5.0000);
				}
				Color(0)
				{
					LifeTime(0.1000)
					Move(0.0000,0.0000,0.0000,255.0000);
					Next()
					{
						LifeTime(1.9000)
						Move(0.0000,0.0000,0.0000,-255.0000);
					}
				}
			}
			Geometry()
			{
				BlendMode("ADDITIVE");
				Type("PARTICLE");
				Texture("com_sfx_explosion1");
			}
			ParticleEmitter("Explosion1")
			{
				MaxParticles(-1.0000,-1.0000);
				StartDelay(0.0000,1.0000);
				BurstDelay(2.0000, 4.0000);
				BurstCount(2.0000,2.0000);
				MaxLodDist(2200.0000);
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
						PositionX(0.0000,1.0000);
						PositionY(-1.0000,1.0000);
						PositionZ(-1.7500,-1.7500);
					}
					Offset()
					{
						PositionX(10.0000,10.0000);
						PositionY(10.0000,10.0000);
						PositionZ(-17.0000,-17.0000);
					}
					PositionScale(0.0000,0.0000);
					VelocityScale(0.0000,0.0000);
					InheritVelocityFactor(0.0000,0.0000);
					Size(0, 3.0000, 5.0000);
					Red(0, 255.0000, 255.0000);
					Green(0, 200.0000, 200.0000);
					Blue(0, 150.0000, 150.0000);
					Alpha(0, 0.0000, 0.0000);
					StartRotation(0, 0.0000, 360.0000);
					RotationVelocity(0, 0.0000, 0.0000);
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
						Scale(10.0000);
					}
					Color(0)
					{
						LifeTime(0.1000)
						Move(0.0000,0.0000,0.0000,255.0000);
						Next()
						{
							LifeTime(1.9000)
							Move(0.0000,0.0000,0.0000,-255.0000);
						}
					}
				}
				Geometry()
				{
					BlendMode("ADDITIVE");
					Type("PARTICLE");
					Texture("com_sfx_flashball2");
				}
				ParticleEmitter("Lightning1")
				{
					MaxParticles(-1.0000,-1.0000);
					StartDelay(0.0000,1.0000);
					BurstDelay(1.0000, 4.0000);
					BurstCount(1.0000,1.0000);
					MaxLodDist(2200.0000);
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
							PositionX(0.0000,0.0000);
							PositionY(0.0000,0.0000);
							PositionZ(0.0000,0.0000);
						}
						Offset()
						{
							PositionX(0.0000,0.0000);
							PositionY(25.0000,25.0000);
							PositionZ(0.0000,0.0000);
						}
						PositionScale(0.0000,0.0000);
						VelocityScale(0.0000,0.0000);
						InheritVelocityFactor(0.0000,0.0000);
						Size(0, 9.5000, 9.5000);
						Hue(0, 140.0000, 170.0000);
						Saturation(0, 0.0000, 100.0000);
						Value(0, 255.0000, 255.0000);
						Alpha(0, 128.0000, 128.0000);
						StartRotation(0, 0.0000, 360.0000);
						RotationVelocity(0, -180.0000, 180.0000);
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
						}
						Color(0)
						{
							LifeTime(0.0300)
							Move(0.0000,0.0000,0.0000,-255.0000);
							Next()
							{
								LifeTime(0.0500)
								Move(0.0000,0.0000,0.0000,128.0000);
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
						MaxParticles(-1.0000,-1.0000);
						StartDelay(0.0000,1.0000);
						BurstDelay(1.0000, 4.0000);
						BurstCount(1.0000,1.0000);
						MaxLodDist(2200.0000);
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
								PositionX(0.0000,0.0000);
								PositionY(0.0000,0.0000);
								PositionZ(0.0000,0.0000);
							}
							Offset()
							{
								PositionX(0.0000,0.0000);
								PositionY(25.0000,25.0000);
								PositionZ(0.0000,0.0000);
							}
							PositionScale(0.0000,0.0000);
							VelocityScale(0.0000,0.0000);
							InheritVelocityFactor(0.0000,0.0000);
							Size(0, 9.5000, 9.5000);
							Hue(0, 140.0000, 170.0000);
							Saturation(0, 0.0000, 150.0000);
							Value(0, 255.0000, 255.0000);
							Alpha(0, 128.0000, 128.0000);
							StartRotation(0, 0.0000, 360.0000);
							RotationVelocity(0, -180.0000, 180.0000);
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
							}
							Color(0)
							{
								LifeTime(0.0300)
								Move(0.0000,0.0000,0.0000,-255.0000);
								Next()
								{
									LifeTime(0.0500)
									Move(0.0000,0.0000,0.0000,128.0000);
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
							MaxParticles(-1.0000,-1.0000);
							StartDelay(0.0000,1.0000);
							BurstDelay(1.0000, 4.0000);
							BurstCount(1.0000,1.0000);
							MaxLodDist(2200.0000);
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
									PositionX(0.0000,0.0000);
									PositionY(0.0000,0.0000);
									PositionZ(0.0000,0.0000);
								}
								Offset()
								{
									PositionX(0.0000,0.0000);
									PositionY(25.0000,25.0000);
									PositionZ(0.0000,0.0000);
								}
								PositionScale(0.0000,0.0000);
								VelocityScale(0.0000,0.0000);
								InheritVelocityFactor(0.0000,0.0000);
								Size(0, 9.5000, 9.5000);
								Hue(0, 140.0000, 170.0000);
								Saturation(0, 0.0000, 150.0000);
								Value(0, 255.0000, 255.0000);
								Alpha(0, 128.0000, 128.0000);
								StartRotation(0, 0.0000, 360.0000);
								RotationVelocity(0, -180.0000, 180.0000);
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
								}
								Color(0)
								{
									LifeTime(0.0300)
									Move(0.0000,0.0000,0.0000,-255.0000);
									Next()
									{
										LifeTime(0.0500)
										Move(0.0000,0.0000,0.0000,128.0000);
									}
								}
							}
							Geometry()
							{
								BlendMode("ADDITIVE");
								Type("GEOMETRY");
								Model("com_sfx_lightningball3");
							}
						}
					}
				}
			}
		}
	}
}
