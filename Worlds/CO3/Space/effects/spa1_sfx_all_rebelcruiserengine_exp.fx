ParticleEmitter("Shockwave")
{
	MaxParticles(1.0000,1.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.0010, 0.0010);
	BurstCount(1.0000,1.0000);
	MaxLodDist(2200.0000);
	MinLodDist(2000.0000);
	BoundingRadius(30.0);
	SoundName("com_weap_obj_large_exp defer")
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
		Size(0, 48.1250, 48.1250);
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
		LifeTime(1.0000);
		Position()
		{
			LifeTime(0.6250)
		}
		Size(0)
		{
			LifeTime(1.0000)
			Scale(6.0000);
		}
		Color(0)
		{
			LifeTime(1.0000)
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
			Size(0, 150.0000, 150.0000);
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
			LifeTime(2.5000);
			Position()
			{
				LifeTime(0.6250)
			}
			Size(0)
			{
				LifeTime(2.5000)
				Scale(2.5000);
			}
			Color(0)
			{
				LifeTime(0.2500)
				Move(0.0000,-100.0000,-100.0000,255.0000);
				Next()
				{
					LifeTime(2.2500)
					Move(0.0000,0.0000,0.0000,-255.0000);
				}
			}
		}
		Geometry()
		{
			BlendMode("ADDITIVE");
			Type("PARTICLE");
			Texture("spa_sfx_shockwave1");
		}
		ParticleEmitter("Explosion")
		{
			MaxParticles(6.0000,6.0000);
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
					PositionX(-9.6250,9.6250);
					PositionY(-9.6250,9.6250);
					PositionZ(0.0000,9.6250);
				}
				Offset()
				{
					PositionX(0.0000,0.0000);
					PositionY(0.0000,0.0000);
					PositionZ(0.0000,0.0000);
				}
				PositionScale(14.4375,14.4375);
				VelocityScale(120.0000,240.0000);
				InheritVelocityFactor(50.0000,50.0000);
				Size(0, 45.0000, 90.0000);
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
				LifeTime(5.0000);
				Position()
				{
					LifeTime(3.7500)
					Scale(0.0000);
				}
				Size(0)
				{
					LifeTime(3.7500)
				}
				Color(0)
				{
					LifeTime(3.7500)
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
							PositionX(-15.8813,15.8813);
							PositionY(-15.8813,15.8813);
							PositionZ(-15.8813,15.8813);
						}
						Offset()
						{
							PositionX(0.0000,0.0000);
							PositionY(0.0000,0.0000);
							PositionZ(0.0000,0.0000);
						}
						PositionScale(0.0000,0.0000);
						VelocityScale(24.0000,24.0000);
						InheritVelocityFactor(0.2500,0.2500);
						Size(0, 21.0000, 29.0000);
						Hue(0, 0.0000, 0.0000);
						Saturation(0, 0.0000, 0.0000);
						Value(0, 40.0000, 100.0000);
						Alpha(0, 0.0000, 128.0000);
						StartRotation(0, 0.0000, 360.0000);
						RotationVelocity(0, -40.0000, 40.0000);
						FadeInTime(0.0000);
					}
					Transformer()
					{
						LifeTime(3.7500);
						Position()
						{
							LifeTime(3.7500)
							Scale(0.0000);
						}
						Size(0)
						{
							LifeTime(0.6250)
							Scale(2.5000);
							Next()
							{
								LifeTime(3.1250)
								Scale(2.5000);
							}
						}
						Color(0)
						{
							LifeTime(0.2500)
							Move(0.0000,0.0000,0.0000,55.0000);
							Next()
							{
								LifeTime(3.5000)
								Move(0.0000,0.0000,50.0000,-255.0000);
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
									PositionX(-41.6884,41.6884);
									PositionY(-41.6884,41.6884);
									PositionZ(-41.6884,41.6884);
								}
								Offset()
								{
									PositionX(-2.0859,2.0859);
									PositionY(-2.0859,2.0859);
									PositionZ(-2.0859,2.0859);
								}
								PositionScale(0.0000,0.0000);
								VelocityScale(41.6884,41.6884);
								InheritVelocityFactor(0.2000,0.2000);
								Size(0, 20.8450, 29.1825);
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
								LifeTime(3.7500);
								Position()
								{
									LifeTime(3.7500)
									Scale(0.0000);
								}
								Size(0)
								{
									LifeTime(5.0000)
									Scale(6.0000);
								}
								Color(0)
								{
									LifeTime(0.2500)
									Move(0.0000,0.0000,0.0000,255.0000);
									Next()
									{
										LifeTime(3.5000)
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
								PositionX(-15.8813,15.8813);
								PositionY(-15.8813,15.8813);
								PositionZ(-15.8813,15.8813);
							}
							Offset()
							{
								PositionX(-1.5881,1.5881);
								PositionY(-1.5881,1.5881);
								PositionZ(-1.5881,1.5881);
							}
							PositionScale(0.0000,0.0000);
							VelocityScale(15.8813,15.8813);
							InheritVelocityFactor(0.2500,0.2500);
							Size(0, 5.0000, 10.0000);
							Red(0, 255.0000, 255.0000);
							Green(0, 204.0000, 233.0000);
							Blue(0, 98.0000, 185.0000);
							Alpha(0, 0.0000, 128.0000);
							StartRotation(0, 0.0000, 255.0000);
							RotationVelocity(0, -40.0000, 40.0000);
							FadeInTime(0.0000);
						}
						Transformer()
						{
							LifeTime(2.5000);
							Position()
							{
								LifeTime(2.5000)
								Scale(0.0000);
							}
							Size(0)
							{
								LifeTime(0.2500)
								Scale(4.0000);
								Next()
								{
									LifeTime(2.2500)
									Scale(3.0000);
								}
							}
							Color(0)
							{
								LifeTime(0.2500)
								Move(0.0000,-40.0000,-50.0000,128.0000);
								Next()
								{
									LifeTime(1.2500)
									Move(128.0000,-40.0000,-50.0000,-128.0000);
									Next()
									{
										LifeTime(1.0000)
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
										PositionX(-41.6884,41.6884);
										PositionY(-41.6884,41.6884);
										PositionZ(-41.6884,41.6884);
									}
									Offset()
									{
										PositionX(-2.0859,2.0859);
										PositionY(-2.0859,2.0859);
										PositionZ(-2.0859,2.0859);
									}
									PositionScale(0.0000,0.0000);
									VelocityScale(59.5548,59.5548);
									InheritVelocityFactor(0.1000,0.1000);
									Size(0, 8.3377, 16.6755);
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
									LifeTime(3.1250);
									Position()
									{
										LifeTime(3.7500)
										Scale(0.0000);
									}
									Size(0)
									{
										LifeTime(3.1250)
										Scale(5.0000);
									}
									Color(0)
									{
										LifeTime(0.0250)
										Move(0.0000,0.0000,0.0000,48.0000);
										Next()
										{
											LifeTime(3.1000)
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
			ParticleEmitter("Explosion")
			{
				MaxParticles(6.0000,6.0000);
				StartDelay(0.0000,0.0000);
				BurstDelay(0.0010, 0.0010);
				BurstCount(1.0000,1.0000);
				MaxLodDist(2200.0000);
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
						PositionX(-9.6250,9.6250);
						PositionY(-9.6250,9.6250);
						PositionZ(0.0000,9.6250);
					}
					Offset()
					{
						PositionX(0.0000,0.0000);
						PositionY(0.0000,0.0000);
						PositionZ(0.0000,0.0000);
					}
					PositionScale(14.4375,14.4375);
					VelocityScale(120.0000,240.0000);
					InheritVelocityFactor(50.0000,50.0000);
					Size(0, 45.0000, 90.0000);
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
					LifeTime(5.0000);
					Position()
					{
						LifeTime(3.7500)
						Scale(0.0000);
					}
					Size(0)
					{
						LifeTime(3.7500)
					}
					Color(0)
					{
						LifeTime(3.7500)
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
								PositionX(-15.8813,15.8813);
								PositionY(-15.8813,15.8813);
								PositionZ(-15.8813,15.8813);
							}
							Offset()
							{
								PositionX(0.0000,0.0000);
								PositionY(0.0000,0.0000);
								PositionZ(0.0000,0.0000);
							}
							PositionScale(0.0000,0.0000);
							VelocityScale(21.0000,21.0000);
							InheritVelocityFactor(0.2500,0.2500);
							Size(0, 21.0000, 29.0000);
							Hue(0, 0.0000, 0.0000);
							Saturation(0, 0.0000, 0.0000);
							Value(0, 128.0000, 255.0000);
							Alpha(0, 0.0000, 128.0000);
							StartRotation(0, 0.0000, 360.0000);
							RotationVelocity(0, -90.0000, 90.0000);
							FadeInTime(0.0000);
						}
						Transformer()
						{
							LifeTime(3.7500);
							Position()
							{
								LifeTime(3.7500)
								Scale(0.0000);
							}
							Size(0)
							{
								LifeTime(0.6250)
								Scale(2.5000);
								Next()
								{
									LifeTime(3.1250)
									Scale(2.5000);
								}
							}
							Color(0)
							{
								LifeTime(0.2500)
								Move(0.0000,0.0000,0.0000,55.0000);
								Next()
								{
									LifeTime(3.5000)
									Move(0.0000,0.0000,-20.0000,-255.0000);
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
										PositionX(-41.6884,41.6884);
										PositionY(-41.6884,41.6884);
										PositionZ(-41.6884,41.6884);
									}
									Offset()
									{
										PositionX(-2.0859,2.0859);
										PositionY(-2.0859,2.0859);
										PositionZ(-2.0859,2.0859);
									}
									PositionScale(0.0000,0.0000);
									VelocityScale(41.6884,41.6884);
									InheritVelocityFactor(0.2000,0.2000);
									Size(0, 20.8450, 29.1825);
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
									LifeTime(3.7500);
									Position()
									{
										LifeTime(3.7500)
										Scale(0.0000);
									}
									Size(0)
									{
										LifeTime(5.0000)
										Scale(6.0000);
									}
									Color(0)
									{
										LifeTime(0.2500)
										Move(0.0000,0.0000,0.0000,255.0000);
										Next()
										{
											LifeTime(3.5000)
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
									PositionX(-15.8813,15.8813);
									PositionY(-15.8813,15.8813);
									PositionZ(-15.8813,15.8813);
								}
								Offset()
								{
									PositionX(-1.5881,1.5881);
									PositionY(-1.5881,1.5881);
									PositionZ(-1.5881,1.5881);
								}
								PositionScale(0.0000,0.0000);
								VelocityScale(48.0000,48.0000);
								InheritVelocityFactor(0.2500,0.2500);
								Size(0, 5.0000, 10.0000);
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
								LifeTime(2.5000);
								Position()
								{
									LifeTime(2.5000)
									Scale(0.0000);
								}
								Size(0)
								{
									LifeTime(0.2500)
									Scale(4.0000);
									Next()
									{
										LifeTime(2.2500)
										Scale(3.0000);
									}
								}
								Color(0)
								{
									LifeTime(0.2500)
									Move(0.0000,-40.0000,-50.0000,128.0000);
									Next()
									{
										LifeTime(1.2500)
										Move(128.0000,-40.0000,-50.0000,-128.0000);
										Next()
										{
											LifeTime(1.0000)
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
											PositionX(-41.6884,41.6884);
											PositionY(-41.6884,41.6884);
											PositionZ(-41.6884,41.6884);
										}
										Offset()
										{
											PositionX(-2.0859,2.0859);
											PositionY(-2.0859,2.0859);
											PositionZ(-2.0859,2.0859);
										}
										PositionScale(0.0000,0.0000);
										VelocityScale(59.5548,59.5548);
										InheritVelocityFactor(0.1000,0.1000);
										Size(0, 8.3377, 16.6755);
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
										LifeTime(3.1250);
										Position()
										{
											LifeTime(3.7500)
											Scale(0.0000);
										}
										Size(0)
										{
											LifeTime(3.1250)
											Scale(5.0000);
										}
										Color(0)
										{
											LifeTime(0.0250)
											Move(0.0000,0.0000,0.0000,48.0000);
											Next()
											{
												LifeTime(3.1000)
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
						Size(0, 210.0000, 210.0000);
						Red(0, 255.0000, 255.0000);
						Green(0, 240.0000, 240.0000);
						Blue(0, 200.0000, 200.0000);
						Alpha(0, 128.0000, 128.0000);
						StartRotation(0, 0.0000, 6.0000);
						RotationVelocity(0, 0.0000, 0.0000);
						FadeInTime(0.0000);
					}
					Transformer()
					{
						LifeTime(4.3750);
						Position()
						{
							LifeTime(2.5000)
						}
						Size(0)
						{
							LifeTime(3.1250)
						}
						Color(0)
						{
							LifeTime(1.8750)
							Move(0.0000,0.0000,0.0000,-96.0000);
							Next()
							{
								LifeTime(2.5000)
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
					ParticleEmitter("Embers")
					{
						MaxParticles(6.0000,6.0000);
						StartDelay(0.0000,0.0000);
						BurstDelay(0.0010, 0.0010);
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
								PositionX(-2.4063,2.4063);
								PositionY(-2.4063,2.4063);
								PositionZ(0.0000,2.4063);
							}
							Offset()
							{
								PositionX(0.0000,0.0000);
								PositionY(0.0000,0.0000);
								PositionZ(0.0000,0.0000);
							}
							PositionScale(12.0313,12.0313);
							VelocityScale(30.0000,60.0000);
							InheritVelocityFactor(50.0000,50.0000);
							Size(0, 45.0000, 90.0000);
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
							LifeTime(3.7500);
							Position()
							{
								LifeTime(5.0000)
								Scale(0.0000);
							}
							Size(0)
							{
								LifeTime(6.2500)
								Scale(2.0000);
							}
							Color(0)
							{
								LifeTime(1.2500)
								Move(0.0000,0.0000,0.0000,-20.0000);
								Next()
								{
									LifeTime(1.2500)
									Move(0.0000,-150.0000,-200.0000,-15.0000);
									Next()
									{
										LifeTime(1.2500)
										Move(0.0000,-100.0000,-100.0000,-220.0000);
									}
								}
							}
						}
						Geometry()
						{
							BlendMode("ADDITIVE");
							Type("PARTICLE");
							Texture("com_sfx_dirt2");
						}
						ParticleEmitter("Sparks")
						{
							MaxParticles(20.0000,20.0000);
							StartDelay(0.0000,0.0000);
							BurstDelay(0.0010, 0.0010);
							BurstCount(5.0000,5.0000);
							MaxLodDist(2200.0000);
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
									PositionX(-4.8125,4.8125);
									PositionY(-4.8125,4.8125);
									PositionZ(0.0000,4.8125);
								}
								Offset()
								{
									PositionX(0.0000,0.0000);
									PositionY(0.0000,0.0000);
									PositionZ(0.0000,0.0000);
								}
								PositionScale(14.4375,28.8750);
								VelocityScale(75.0000,150.0000);
								InheritVelocityFactor(50.0000,50.0000);
								Size(0, 0.7500, 1.7500);
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
								LifeTime(7.5000);
								Position()
								{
									LifeTime(5.0000)
									Scale(0.0000);
								}
								Size(0)
								{
									LifeTime(7.5000)
									Scale(0.0000);
								}
								Color(0)
								{
									LifeTime(5.0000)
									Move(0.0000,0.0000,0.0000,0.0000);
									Next()
									{
										LifeTime(2.5000)
										Move(0.0000,0.0000,0.0000,-255.0000);
									}
								}
							}
							Geometry()
							{
								BlendMode("ADDITIVE");
								Type("SPARK");
								SparkLength(0.2000);
								Texture("com_sfx_laser_orange");
							}
						}
					}
				}
			}
		}
	}
}
