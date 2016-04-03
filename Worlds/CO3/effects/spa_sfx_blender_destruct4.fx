ParticleEmitter("Cylinder")
{
	MaxParticles(-1.0000,-1.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.9999, 0.9999);
	BurstCount(1.0000,1.0000);
	MaxLodDist(2200.0000);
	MinLodDist(2000.0000);
	BoundingRadius(5.0);
    SoundName("energy_loop")
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
		Alpha(0, 255.0000, 255.0000);
		StartRotation(0, 0.0000, 0.0000);
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
			Scale(1.0000);
		}
		Color(0)
		{
			LifeTime(0.0300)
			Move(0.0000,0.0000,0.0000,0.0000);
		}
	}
	Geometry()
	{
		BlendMode("NORMAL");
		Type("GEOMETRY");
		Model("cis_fedcruiser_commandroom_SG_tank");
	}
	ParticleEmitter("LaserFlareBottom")
	{
		MaxParticles(-1.0000,-1.0000);
		StartDelay(0.0000,0.0000);
		BurstDelay(0.0500, 0.1000);
		BurstCount(1.0000,1.0000);
		MaxLodDist(1000.0000);
		MinLodDist(800.0000);
		BoundingRadius(55.0);
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
				PositionY(-0.3000,-0.3000);
				PositionZ(0.0000,0.0000);
			}
			PositionScale(0.0000,0.0000);
			VelocityScale(0.0000,0.0000);
			InheritVelocityFactor(0.0000,0.0000);
			Size(0, 1.0000, 2.0000);
			Hue(0, 120.0000, 120.0000);
			Saturation(0, 148.0000, 148.7500);
			Value(0, 240.0000, 240.0000);
			Alpha(0, 255.0000, 255.0000);
			StartRotation(0, 0.0000, 360.0000);
			RotationVelocity(0, 0.0000, 0.0000);
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
				LifeTime(0.2000)
				Scale(1.0000);
			}
			Color(0)
			{
				LifeTime(0.1000)
				Move(127.5000,0.0000,0.0000,-255.0000);
			}
		}
		Geometry()
		{
			BlendMode("ADDITIVE");
			Type("PARTICLE");
			Texture("com_sfx_flashball3");
		}
		ParticleEmitter("LaserFlareTop")
		{
			MaxParticles(-1.0000,-1.0000);
			StartDelay(0.0000,0.0000);
			BurstDelay(0.0500, 0.1000);
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
					PositionX(0.0000,0.0000);
					PositionY(0.0000,0.0000);
					PositionZ(0.0000,0.0000);
				}
				Offset()
				{
					PositionX(0.0000,0.0000);
					PositionY(5.5000,5.5000);
					PositionZ(0.0000,0.0000);
				}
				PositionScale(0.0000,0.0000);
				VelocityScale(0.0000,0.0000);
				InheritVelocityFactor(0.0000,0.0000);
				Size(0, 1.0000, 2.0000);
				Hue(0, 120.0000, 120.0000);
				Saturation(0, 148.7500, 148.7500);
				Value(0, 240.0000, 240.0000);
				Alpha(0, 255.0000, 255.0000);
				StartRotation(0, 0.0000, 360.0000);
				RotationVelocity(0, 0.0000, 0.0000);
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
					LifeTime(0.2000)
					Scale(1.0000);
				}
				Color(0)
				{
					LifeTime(0.1000)
					Move(79.7746,255.0000,122.0000,-255.0000);
				}
			}
			Geometry()
			{
				BlendMode("ADDITIVE");
				Type("PARTICLE");
				Texture("com_sfx_flashball3");
			}
			ParticleEmitter("LaserBeam")
			{
				MaxParticles(-1.0000,-1.0000);
				StartDelay(0.0000,0.0000);
				BurstDelay(0.0100, 0.0100);
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
					Circle()
					{
						PositionX(0.0000,0.0000);
						PositionY(-1.0000,-1.0000);
						PositionZ(0.0000,0.0000);
					}
					Offset()
					{
						PositionX(-0.1000,0.1000);
						PositionY(4.0000,4.0000);
						PositionZ(-0.1000,0.1000);
					}
					PositionScale(0.0000,0.0000);
					VelocityScale(30.0000,30.0000);
					InheritVelocityFactor(0.0000,0.0000);
					Size(0, 0.2000, 0.2000);
					Hue(0, 160.0000, 170.0000);
					Saturation(0, 255.0000, 255.0000);
					Value(0, 255.0000, 255.0000);
					Alpha(0, 255.0000, 255.0000);
					StartRotation(0, 1.0000, 1.0000);
					RotationVelocity(0, 0.0000, 0.0000);
					FadeInTime(0.0000);
				}
				Transformer()
				{
					LifeTime(0.2500);
					Position()
					{
						LifeTime(1.0000)
					}
					Size(0)
					{
						LifeTime(0.2000)
						Scale(1.0000);
					}
					Color(0)
					{
						LifeTime(0.3000)
						Move(0.0000,0.0000,0.0000,0.0000);
					}
				}
				Geometry()
				{
					BlendMode("ADDITIVE");
					Type("SPARK");
					SparkLength(0.1000);
					Texture("com_sfx_flashball3");
				}
				ParticleEmitter("Streams")
				{
					MaxParticles(-1.0000,-1.0000);
					StartDelay(0.0000,0.0000);
					BurstDelay(0.0100, 0.0100);
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
						Spread()
						{
							PositionX(0.0000,0.0000);
							PositionY(1.0000,1.0000);
							PositionZ(0.0000,0.0000);
						}
						Offset()
						{
							PositionX(-1.0000,1.0000);
							PositionY(1.0000,1.0000);
							PositionZ(-1.0000,1.0000);
						}
						PositionScale(0.0000,0.0000);
						VelocityScale(50.0000,60.0000);
						InheritVelocityFactor(0.0000,0.0000);
						Size(0, 0.3000, 2.3000);
						Hue(0, 150.0000, 180.0000);
						Saturation(0, 200.0000, 255.0000);
						Value(0, 255.0000, 255.0000);
						Alpha(0, 0.0000, 64.0000);
						StartRotation(0, 128.0000, 128.0000);
						RotationVelocity(0, 0.0000, 1.0000);
						FadeInTime(0.0000);
					}
					Transformer()
					{
						LifeTime(0.1250);
						Position()
						{
							LifeTime(1.0000)
						}
						Size(0)
						{
							LifeTime(1.0000)
						}
						Color(0)
						{
							LifeTime(0.0010)
							Move(0.0000,0.0000,0.0000,32.0000);
						}
					}
					Geometry()
					{
						BlendMode("ADDITIVE");
						Type("SPARK");
						SparkLength(0.0500);
						Texture("com_sfx_laser_blue");
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
					ParticleEmitter("Sparks")
					{
						MaxParticles(-1.0000,-1.0000);
						StartDelay(0.0000,0.0000);
						BurstDelay(0.0200, 0.0200);
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
								PositionX(-2.0000,2.0000);
								PositionY(-7.0000,-6.0000);
								PositionZ(-2.0000,2.0000);
							}
							Offset()
							{
								PositionX(-4.0000,4.0000);
								PositionY(8.0000,8.0000);
								PositionZ(-4.0000,4.0000);
							}
							PositionScale(0.0000,0.0000);
							VelocityScale(2.0000,6.0000);
							InheritVelocityFactor(0.0000,0.0000);
							Size(0, 0.0100, 0.0300);
							Red(0, 255.0000, 255.0000);
							Green(0, 200.0000, 200.0000);
							Blue(0, 100.0000, 100.0000);
							Alpha(0, 0.0000, 0.0000);
							StartRotation(0, 0.0000, 0.0000);
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
								LifeTime(2.0000)
								Scale(2.0000);
							}
							Color(0)
							{
								LifeTime(0.0100)
								Move(0.0000,0.0000,0.0000,255.0000);
								Next()
								{
									LifeTime(1.9900)
									Move(0.0000,0.0000,0.0000,0.0000);
								}
							}
						}
						Geometry()
						{
							BlendMode("ADDITIVE");
							Type("SPARK");
							SparkLength(0.0300);
							Texture("com_sfx_laser_orange");
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
						ParticleEmitter("FloorBlackSmoke")
						{
							MaxParticles(-1.0000,-1.0000);
							StartDelay(1.0000,1.0000);
							BurstDelay(0.2000, 0.2000);
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
									PositionX(0.0000,0.0000);
									PositionY(0.2500,0.4000);
									PositionZ(0.0000,0.0000);
								}
								Offset()
								{
									PositionX(-3.0000,3.0000);
									PositionY(-8.0000,-6.0000);
									PositionZ(-3.0000,3.0000);
								}
								PositionScale(0.0000,0.0000);
								VelocityScale(2.0000,7.0000);
								InheritVelocityFactor(0.0000,0.0000);
								Size(0, 2.0000, 4.0000);
								Hue(0, 0.0000, 0.0000);
								Saturation(0, 0.0000, 0.0000);
								Value(0, 128.0000, 255.0000);
								Alpha(0, 0.0000, 0.0000);
								StartRotation(0, 0.0000, 360.0000);
								RotationVelocity(0, -40.0000, 0.0000);
								FadeInTime(0.0000);
							}
							Transformer()
							{
								LifeTime(2.0000);
								Position()
								{
									LifeTime(7.0000)
								}
								Size(0)
								{
									LifeTime(6.0000)
									Scale(4.0000);
								}
								Color(0)
								{
									LifeTime(0.5000)
									Move(127.5000,0.0000,0.0000,96.0000);
									Next()
									{
										LifeTime(1.5000)
										Move(0.0000,0.0000,0.0000,-96.0000);
									}
								}
							}
							Geometry()
							{
								BlendMode("NORMAL");
								Type("PARTICLE");
								Texture("com_sfx_smoke2");
							}
							ParticleEmitter("Flame1")
							{
								MaxParticles(-1.0000,-1.0000);
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
									Circle()
									{
										PositionX(-5.0000,5.0000);
										PositionY(0.0000,0.0000);
										PositionZ(-5.0000,5.0000);
									}
									Offset()
									{
										PositionX(0.0000,0.0000);
										PositionY(-4.0000,-4.0000);
										PositionZ(0.0000,0.0000);
									}
									PositionScale(5.0000,5.0000);
									VelocityScale(0.0000,0.0000);
									InheritVelocityFactor(0.0000,0.0000);
									Size(0, 2.0000, 4.0000);
									Red(0, 255.0000, 255.0000);
									Green(0, 255.0000, 255.0000);
									Blue(0, 255.0000, 255.0000);
									Alpha(0, 0.0000, 0.0000);
									StartRotation(0, 0.0000, 360.0000);
									RotationVelocity(0, -80.0000, 0.0000);
									FadeInTime(0.0000);
								}
								Transformer()
								{
									LifeTime(1.0000);
									Position()
									{
										LifeTime(1.0000)
										Accelerate(0.0000, 20.0000, 0.0000);
									}
									Size(0)
									{
										LifeTime(1.0000)
										Scale(0.2500);
									}
									Color(0)
									{
										LifeTime(0.1000)
										Reach(255.0000,255.0000,255.0000,180.0000);
										Next()
										{
											LifeTime(0.6000)
											Reach(100.0000,0.0000,0.0000,0.0000);
										}
									}
								}
								Geometry()
								{
									BlendMode("ADDITIVE");
									Type("PARTICLE");
									Texture("spa1_sfx_explosion01");
								}
								ParticleEmitter("Flare")
								{
									MaxParticles(-1.0000,-1.0000);
									StartDelay(0.0000,0.0000);
									BurstDelay(0.1000, 0.2000);
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
											PositionY(2.5000,2.5000);
											PositionZ(0.0000,0.0000);
										}
										PositionScale(0.0000,0.0000);
										VelocityScale(0.0000,0.0000);
										InheritVelocityFactor(0.0000,0.0000);
										Size(0, 16.0000, 16.0000);
										Red(0, 150.0000, 150.0000);
										Green(0, 255.0000, 255.0000);
										Blue(0, 50.0000, 50.0000);
										Alpha(0, 50.0000, 80.0000);
										StartRotation(0, 0.0000, 0.0000);
										RotationVelocity(0, 0.0000, 0.0000);
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
											LifeTime(0.2000)
											Scale(1.0000);
										}
										Color(0)
										{
											LifeTime(0.1000)
											Reach(150.0000,255.0000,50.0000,0.0000);
										}
									}
									Geometry()
									{
										BlendMode("ADDITIVE");
										Type("PARTICLE");
										Texture("com_sfx_flare1");
									}
									ParticleEmitter("Spark_Emitter")
									{
										MaxParticles(-1.0000,-1.0000);
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
											Circle()
											{
												PositionX(0.0000,0.0000);
												PositionY(0.0000,0.0000);
												PositionZ(0.0000,0.0000);
											}
											Offset()
											{
												PositionX(0.0000,0.0000);
												PositionY(2.5000,2.5000);
												PositionZ(0.0000,0.0000);
											}
											PositionScale(0.0000,0.0000);
											VelocityScale(0.0000,0.0000);
											InheritVelocityFactor(0.0000,0.0000);
											Size(0, 3.0000, 3.1000);
											Red(0, 200.0000, 200.0000);
											Green(0, 255.0000, 255.0000);
											Blue(0, 100.0000, 100.0000);
											Alpha(0, 255.0000, 255.0000);
											StartRotation(0, 0.0000, 30.0000);
											RotationVelocity(0, -90.0000, 90.0000);
											FadeInTime(0.0000);
										}
										Transformer()
										{
											LifeTime(0.1500);
											Position()
											{
												LifeTime(0.1500)
												Reach(0.0000, 0.0000, 0.0000);
											}
											Size(0)
											{
												LifeTime(0.1500)
												Scale(0.2500);
											}
											Color(0)
											{
												LifeTime(0.0500)
												Reach(100.0000,255.0000,0.0000,120.0000);
												Next()
												{
													LifeTime(0.1000)
													Reach(50.0000,200.0000,0.0000,20.0000);
												}
											}
										}
										Geometry()
										{
											BlendMode("ADDITIVE");
											Type("PARTICLE");
											Texture("com_sfx_flashball2");
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
