ParticleEmitter("Blip1")
{
	MaxParticles(-1.0000,-1.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.5000, 0.5000);
	BurstCount(2.0000,2.0000);
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
		Spread()
		{
			PositionX(0.0000,0.0000);
			PositionY(0.0000,0.0000);
			PositionZ(0.0000,0.0000);
		}
		Offset()
		{
			PositionX(1.6000,1.6000);
			PositionY(3.2000,3.2000);
			PositionZ(4.5000,4.5000);
		}
		PositionScale(0.0000,0.0000);
		VelocityScale(0.0000,0.0000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 5.0000, 5.0000);
		Hue(0, 160.0000, 170.0000);
		Saturation(0, 255.0000, 255.0000);
		Value(0, 255.0000, 255.0000);
		Alpha(0, 0.0000, 0.0000);
		StartRotation(0, 0.0000, 360.0000);
		RotationVelocity(0, -40.0000, 0.0000);
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
			LifeTime(1.0000)
			Scale(1.0000);
		}
		Color(0)
		{
			LifeTime(0.0010)
			Move(0.0000,0.0000,0.0000,255.0000);
			Next()
			{
				LifeTime(0.1990)
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
	ParticleEmitter("Blip1")
	{
		MaxParticles(-1.0000,-1.0000);
		StartDelay(0.0000,0.0000);
		BurstDelay(0.5000, 0.5000);
		BurstCount(1.0000,1.0000);
		MaxLodDist(1000.0000);
		MinLodDist(800.0000);
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
				PositionX(1.6000,1.6000);
				PositionY(3.2000,3.2000);
				PositionZ(4.5000,4.5000);
			}
			PositionScale(0.0000,0.0000);
			VelocityScale(0.0000,0.0000);
			InheritVelocityFactor(0.0000,0.0000);
			Size(0, 2.0000, 2.0000);
			Hue(0, 0.0000, 0.0000);
			Saturation(0, 0.0000, 0.0000);
			Value(0, 255.0000, 255.0000);
			Alpha(0, 0.0000, 0.0000);
			StartRotation(0, 0.0000, 360.0000);
			RotationVelocity(0, -40.0000, 0.0000);
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
				LifeTime(1.0000)
				Scale(1.0000);
			}
			Color(0)
			{
				LifeTime(0.0010)
				Move(0.0000,0.0000,0.0000,255.0000);
				Next()
				{
					LifeTime(0.1990)
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
		ParticleEmitter("Blip2")
		{
			MaxParticles(-1.0000,-1.0000);
			StartDelay(0.0000,0.0000);
			BurstDelay(0.5000, 0.5000);
			BurstCount(2.0000,2.0000);
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
				Spread()
				{
					PositionX(0.0000,0.0000);
					PositionY(0.0000,0.0000);
					PositionZ(0.0000,0.0000);
				}
				Offset()
				{
					PositionX(-0.6000,-0.6000);
					PositionY(5.6000,5.6000);
					PositionZ(1.0000,1.0000);
				}
				PositionScale(0.0000,0.0000);
				VelocityScale(0.0000,0.0000);
				InheritVelocityFactor(0.0000,0.0000);
				Size(0, 5.0000, 5.0000);
				Hue(0, 160.0000, 170.0000);
				Saturation(0, 255.0000, 255.0000);
				Value(0, 255.0000, 255.0000);
				Alpha(0, 0.0000, 0.0000);
				StartRotation(0, 0.0000, 360.0000);
				RotationVelocity(0, -40.0000, 0.0000);
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
					LifeTime(1.0000)
					Scale(1.0000);
				}
				Color(0)
				{
					LifeTime(0.0010)
					Move(0.0000,0.0000,0.0000,255.0000);
					Next()
					{
						LifeTime(0.1990)
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
			ParticleEmitter("Blip2")
			{
				MaxParticles(-1.0000,-1.0000);
				StartDelay(0.0000,0.0000);
				BurstDelay(0.5000, 0.5000);
				BurstCount(1.0000,1.0000);
				MaxLodDist(1000.0000);
				MinLodDist(800.0000);
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
						PositionX(-0.6000,-0.6000);
						PositionY(5.6000,5.6000);
						PositionZ(1.0000,1.0000);
					}
					PositionScale(0.0000,0.0000);
					VelocityScale(0.0000,0.0000);
					InheritVelocityFactor(0.0000,0.0000);
					Size(0, 2.0000, 2.0000);
					Hue(0, 0.0000, 0.0000);
					Saturation(0, 0.0000, 0.0000);
					Value(0, 255.0000, 255.0000);
					Alpha(0, 0.0000, 0.0000);
					StartRotation(0, 0.0000, 360.0000);
					RotationVelocity(0, -40.0000, 0.0000);
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
						LifeTime(1.0000)
						Scale(1.0000);
					}
					Color(0)
					{
						LifeTime(0.0010)
						Move(0.0000,0.0000,0.0000,255.0000);
						Next()
						{
							LifeTime(0.1990)
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
				ParticleEmitter("Blip3")
				{
					MaxParticles(-1.0000,-1.0000);
					StartDelay(0.0000,0.0000);
					BurstDelay(0.5000, 0.5000);
					BurstCount(2.0000,2.0000);
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
						Spread()
						{
							PositionX(0.0000,0.0000);
							PositionY(0.0000,0.0000);
							PositionZ(0.0000,0.0000);
						}
						Offset()
						{
							PositionX(-4.8000,-4.8000);
							PositionY(2.8000,2.8000);
							PositionZ(1.6000,1.6000);
						}
						PositionScale(0.0000,0.0000);
						VelocityScale(0.0000,0.0000);
						InheritVelocityFactor(0.0000,0.0000);
						Size(0, 5.0000, 5.0000);
						Hue(0, 160.0000, 170.0000);
						Saturation(0, 255.0000, 255.0000);
						Value(0, 255.0000, 255.0000);
						Alpha(0, 0.0000, 0.0000);
						StartRotation(0, 0.0000, 360.0000);
						RotationVelocity(0, -40.0000, 0.0000);
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
							LifeTime(1.0000)
							Scale(1.0000);
						}
						Color(0)
						{
							LifeTime(0.0010)
							Move(0.0000,0.0000,0.0000,255.0000);
							Next()
							{
								LifeTime(0.1990)
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
					ParticleEmitter("Blip3")
					{
						MaxParticles(-1.0000,-1.0000);
						StartDelay(0.0000,0.0000);
						BurstDelay(0.5000, 0.5000);
						BurstCount(1.0000,1.0000);
						MaxLodDist(1000.0000);
						MinLodDist(800.0000);
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
								PositionX(-4.8000,-4.8000);
								PositionY(2.8000,2.8000);
								PositionZ(1.6000,1.6000);
							}
							PositionScale(0.0000,0.0000);
							VelocityScale(0.0000,0.0000);
							InheritVelocityFactor(0.0000,0.0000);
							Size(0, 2.0000, 2.0000);
							Hue(0, 0.0000, 0.0000);
							Saturation(0, 0.0000, 0.0000);
							Value(0, 255.0000, 255.0000);
							Alpha(0, 0.0000, 0.0000);
							StartRotation(0, 0.0000, 360.0000);
							RotationVelocity(0, -40.0000, 0.0000);
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
								LifeTime(1.0000)
								Scale(1.0000);
							}
							Color(0)
							{
								LifeTime(0.0010)
								Move(0.0000,0.0000,0.0000,255.0000);
								Next()
								{
									LifeTime(0.1990)
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
						ParticleEmitter("Blip4")
						{
							MaxParticles(-1.0000,-1.0000);
							StartDelay(0.0000,0.0000);
							BurstDelay(0.5000, 0.5000);
							BurstCount(2.0000,2.0000);
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
								Spread()
								{
									PositionX(0.0000,0.0000);
									PositionY(0.0000,0.0000);
									PositionZ(0.0000,0.0000);
								}
								Offset()
								{
									PositionX(-2.5000,-2.4000);
									PositionY(0.4000,0.4000);
									PositionZ(5.0000,5.0000);
								}
								PositionScale(0.0000,0.0000);
								VelocityScale(0.0000,0.0000);
								InheritVelocityFactor(0.0000,0.0000);
								Size(0, 5.0000, 5.0000);
								Hue(0, 160.0000, 170.0000);
								Saturation(0, 255.0000, 255.0000);
								Value(0, 255.0000, 255.0000);
								Alpha(0, 0.0000, 0.0000);
								StartRotation(0, 0.0000, 360.0000);
								RotationVelocity(0, -40.0000, 0.0000);
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
									LifeTime(1.0000)
									Scale(1.0000);
								}
								Color(0)
								{
									LifeTime(0.0010)
									Move(0.0000,0.0000,0.0000,255.0000);
									Next()
									{
										LifeTime(0.1990)
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
							ParticleEmitter("Blip4")
							{
								MaxParticles(-1.0000,-1.0000);
								StartDelay(0.0000,0.0000);
								BurstDelay(0.5000, 0.5000);
								BurstCount(1.0000,1.0000);
								MaxLodDist(1000.0000);
								MinLodDist(800.0000);
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
										PositionX(-2.5000,-2.5000);
										PositionY(0.4000,0.4000);
										PositionZ(5.0000,5.0000);
									}
									PositionScale(0.0000,0.0000);
									VelocityScale(0.0000,0.0000);
									InheritVelocityFactor(0.0000,0.0000);
									Size(0, 2.0000, 2.0000);
									Hue(0, 0.0000, 0.0000);
									Saturation(0, 0.0000, 0.0000);
									Value(0, 255.0000, 255.0000);
									Alpha(0, 0.0000, 0.0000);
									StartRotation(0, 0.0000, 360.0000);
									RotationVelocity(0, -40.0000, 0.0000);
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
										LifeTime(1.0000)
										Scale(1.0000);
									}
									Color(0)
									{
										LifeTime(0.0010)
										Move(0.0000,0.0000,0.0000,255.0000);
										Next()
										{
											LifeTime(0.1990)
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
								ParticleEmitter("Blip5")
								{
									MaxParticles(-1.0000,-1.0000);
									StartDelay(0.0000,0.0000);
									BurstDelay(0.5000, 0.5000);
									BurstCount(2.0000,2.0000);
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
										Spread()
										{
											PositionX(0.0000,0.0000);
											PositionY(0.0000,0.0000);
											PositionZ(0.0000,0.0000);
										}
										Offset()
										{
											PositionX(2.4000,2.4000);
											PositionY(-0.5000,-0.5000);
											PositionZ(-5.1000,-5.1000);
										}
										PositionScale(0.0000,0.0000);
										VelocityScale(0.0000,0.0000);
										InheritVelocityFactor(0.0000,0.0000);
										Size(0, 5.0000, 5.0000);
										Hue(0, 160.0000, 170.0000);
										Saturation(0, 255.0000, 255.0000);
										Value(0, 255.0000, 255.0000);
										Alpha(0, 0.0000, 0.0000);
										StartRotation(0, 0.0000, 360.0000);
										RotationVelocity(0, -40.0000, 0.0000);
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
											LifeTime(1.0000)
											Scale(1.0000);
										}
										Color(0)
										{
											LifeTime(0.0010)
											Move(0.0000,0.0000,0.0000,255.0000);
											Next()
											{
												LifeTime(0.1990)
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
									ParticleEmitter("Blip5")
									{
										MaxParticles(-1.0000,-1.0000);
										StartDelay(0.0000,0.0000);
										BurstDelay(0.5000, 0.5000);
										BurstCount(1.0000,1.0000);
										MaxLodDist(1000.0000);
										MinLodDist(800.0000);
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
												PositionX(2.4000,2.4000);
												PositionY(-0.5000,-0.5000);
												PositionZ(-5.1000,-5.1000);
											}
											PositionScale(0.0000,0.0000);
											VelocityScale(0.0000,0.0000);
											InheritVelocityFactor(0.0000,0.0000);
											Size(0, 2.0000, 2.0000);
											Hue(0, 0.0000, 0.0000);
											Saturation(0, 0.0000, 0.0000);
											Value(0, 255.0000, 255.0000);
											Alpha(0, 0.0000, 0.0000);
											StartRotation(0, 0.0000, 360.0000);
											RotationVelocity(0, -40.0000, 0.0000);
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
												LifeTime(1.0000)
												Scale(1.0000);
											}
											Color(0)
											{
												LifeTime(0.0010)
												Move(0.0000,0.0000,0.0000,255.0000);
												Next()
												{
													LifeTime(0.1990)
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
										ParticleEmitter("Blip6")
										{
											MaxParticles(-1.0000,-1.0000);
											StartDelay(0.0000,0.0000);
											BurstDelay(0.5000, 0.5000);
											BurstCount(2.0000,2.0000);
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
												Spread()
												{
													PositionX(0.0000,0.0000);
													PositionY(0.0000,0.0000);
													PositionZ(0.0000,0.0000);
												}
												Offset()
												{
													PositionX(-1.6000,-1.6000);
													PositionY(-3.1000,-3.1000);
													PositionZ(-4.5000,-4.5000);
												}
												PositionScale(0.0000,0.0000);
												VelocityScale(0.0000,0.0000);
												InheritVelocityFactor(0.0000,0.0000);
												Size(0, 5.0000, 5.0000);
												Hue(0, 160.0000, 170.0000);
												Saturation(0, 255.0000, 255.0000);
												Value(0, 255.0000, 255.0000);
												Alpha(0, 0.0000, 0.0000);
												StartRotation(0, 0.0000, 360.0000);
												RotationVelocity(0, -40.0000, 0.0000);
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
													LifeTime(1.0000)
													Scale(1.0000);
												}
												Color(0)
												{
													LifeTime(0.0010)
													Move(0.0000,0.0000,0.0000,255.0000);
													Next()
													{
														LifeTime(0.1990)
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
											ParticleEmitter("Blip6")
											{
												MaxParticles(-1.0000,-1.0000);
												StartDelay(0.0000,0.0000);
												BurstDelay(0.5000, 0.5000);
												BurstCount(1.0000,1.0000);
												MaxLodDist(1000.0000);
												MinLodDist(800.0000);
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
														PositionX(-1.6000,-1.6000);
														PositionY(-3.1000,-3.1000);
														PositionZ(-4.5000,-4.5000);
													}
													PositionScale(0.0000,0.0000);
													VelocityScale(0.0000,0.0000);
													InheritVelocityFactor(0.0000,0.0000);
													Size(0, 2.0000, 2.0000);
													Hue(0, 0.0000, 0.0000);
													Saturation(0, 0.0000, 0.0000);
													Value(0, 255.0000, 255.0000);
													Alpha(0, 0.0000, 0.0000);
													StartRotation(0, 0.0000, 360.0000);
													RotationVelocity(0, -40.0000, 0.0000);
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
														LifeTime(1.0000)
														Scale(1.0000);
													}
													Color(0)
													{
														LifeTime(0.0010)
														Move(0.0000,0.0000,0.0000,255.0000);
														Next()
														{
															LifeTime(0.1990)
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
												ParticleEmitter("Blip7")
												{
													MaxParticles(-1.0000,-1.0000);
													StartDelay(0.0000,0.0000);
													BurstDelay(0.5000, 0.5000);
													BurstCount(2.0000,2.0000);
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
														Spread()
														{
															PositionX(0.0000,0.0000);
															PositionY(0.0000,0.0000);
															PositionZ(0.0000,0.0000);
														}
														Offset()
														{
															PositionX(4.7000,4.7000);
															PositionY(-2.7000,-2.7000);
															PositionZ(-1.5000,-1.5000);
														}
														PositionScale(0.0000,0.0000);
														VelocityScale(0.0000,0.0000);
														InheritVelocityFactor(0.0000,0.0000);
														Size(0, 5.0000, 5.0000);
														Hue(0, 160.0000, 170.0000);
														Saturation(0, 255.0000, 255.0000);
														Value(0, 255.0000, 255.0000);
														Alpha(0, 0.0000, 0.0000);
														StartRotation(0, 0.0000, 360.0000);
														RotationVelocity(0, -40.0000, 0.0000);
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
															LifeTime(1.0000)
															Scale(1.0000);
														}
														Color(0)
														{
															LifeTime(0.0010)
															Move(0.0000,0.0000,0.0000,255.0000);
															Next()
															{
																LifeTime(0.1990)
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
													ParticleEmitter("Blip7")
													{
														MaxParticles(-1.0000,-1.0000);
														StartDelay(0.0000,0.0000);
														BurstDelay(0.5000, 0.5000);
														BurstCount(1.0000,1.0000);
														MaxLodDist(1000.0000);
														MinLodDist(800.0000);
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
																PositionX(4.7000,4.7000);
																PositionY(-2.7000,-2.7000);
																PositionZ(-1.5000,-1.5000);
															}
															PositionScale(0.0000,0.0000);
															VelocityScale(0.0000,0.0000);
															InheritVelocityFactor(0.0000,0.0000);
															Size(0, 2.0000, 2.0000);
															Hue(0, 0.0000, 0.0000);
															Saturation(0, 0.0000, 0.0000);
															Value(0, 255.0000, 255.0000);
															Alpha(0, 0.0000, 0.0000);
															StartRotation(0, 0.0000, 360.0000);
															RotationVelocity(0, -40.0000, 0.0000);
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
																LifeTime(1.0000)
																Scale(1.0000);
															}
															Color(0)
															{
																LifeTime(0.0010)
																Move(0.0000,0.0000,0.0000,255.0000);
																Next()
																{
																	LifeTime(0.1990)
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
														ParticleEmitter("Blip8")
														{
															MaxParticles(-1.0000,-1.0000);
															StartDelay(0.0000,0.0000);
															BurstDelay(0.5000, 0.5000);
															BurstCount(2.0000,2.0000);
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
																Spread()
																{
																	PositionX(0.0000,0.0000);
																	PositionY(0.0000,0.0000);
																	PositionZ(0.0000,0.0000);
																}
																Offset()
																{
																	PositionX(0.6000,0.6000);
																	PositionY(-5.5000,-5.5000);
																	PositionZ(-0.8000,-0.8000);
																}
																PositionScale(0.0000,0.0000);
																VelocityScale(0.0000,0.0000);
																InheritVelocityFactor(0.0000,0.0000);
																Size(0, 5.0000, 5.0000);
																Hue(0, 160.0000, 170.0000);
																Saturation(0, 255.0000, 255.0000);
																Value(0, 255.0000, 255.0000);
																Alpha(0, 0.0000, 0.0000);
																StartRotation(0, 0.0000, 360.0000);
																RotationVelocity(0, -40.0000, 0.0000);
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
																	LifeTime(1.0000)
																	Scale(1.0000);
																}
																Color(0)
																{
																	LifeTime(0.0010)
																	Move(0.0000,0.0000,0.0000,255.0000);
																	Next()
																	{
																		LifeTime(0.1990)
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
															ParticleEmitter("Blip8")
															{
																MaxParticles(-1.0000,-1.0000);
																StartDelay(0.0000,0.0000);
																BurstDelay(0.5000, 0.5000);
																BurstCount(1.0000,1.0000);
																MaxLodDist(1000.0000);
																MinLodDist(800.0000);
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
																		PositionX(0.6000,0.6000);
																		PositionY(-5.5000,-5.5000);
																		PositionZ(-0.8000,-0.8000);
																	}
																	PositionScale(0.0000,0.0000);
																	VelocityScale(0.0000,0.0000);
																	InheritVelocityFactor(0.0000,0.0000);
																	Size(0, 2.0000, 2.0000);
																	Hue(0, 0.0000, 0.0000);
																	Saturation(0, 0.0000, 0.0000);
																	Value(0, 255.0000, 255.0000);
																	Alpha(0, 0.0000, 0.0000);
																	StartRotation(0, 0.0000, 360.0000);
																	RotationVelocity(0, -40.0000, 0.0000);
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
																		LifeTime(1.0000)
																		Scale(1.0000);
																	}
																	Color(0)
																	{
																		LifeTime(0.0010)
																		Move(0.0000,0.0000,0.0000,255.0000);
																		Next()
																		{
																			LifeTime(0.1990)
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
				}
			}
		}
	}
}
