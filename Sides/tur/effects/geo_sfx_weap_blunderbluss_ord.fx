ParticleEmitter("Distortion")
{
	MaxParticles(-1.0000,-1.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.1000, 0.1000);
	BurstCount(1.0000,1.0000);
	MaxLodDist(1000.0000);
	MinLodDist(800.0000);
	BoundingRadius(15.0);
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
			PositionX(-0.5000,0.5000);
			PositionY(-0.5000,0.5000);
			PositionZ(-0.5000,0.5000);
		}
		PositionScale(0.0000,0.0000);
		VelocityScale(1.0000,1.0000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 2.0000, 2.0000);
		Red(0, 240.0000, 240.0000);
		Green(0, 255.0000, 255.0000);
		Blue(0, 240.0000, 240.0000);
		Alpha(0, 0.0000, 0.0000);
		StartRotation(0, 0.0000, 360.0000);
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
			Scale(2.0000);
		}
		Color(0)
		{
			LifeTime(0.3000)
			Reach(240.0000,255.0000,240.0000,150.0000);
			Next()
			{
				LifeTime(0.2000)
				Reach(255.0000,255.0000,255.0000,0.0000);
			}
		}
	}
	Geometry()
	{
		BlendMode("BLUR");
		BlurValue(0.5000);
		BlurRes(1.0000);
		Type("PARTICLE");
		Texture("com_sfx_waterfoam1");
	}
	ParticleEmitter("GreenSmoke")
	{
		MaxParticles(-1.0000,-1.0000);
		StartDelay(0.0000,0.0000);
		BurstDelay(0.0400, 0.0400);
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
				PositionZ(-1.0000,-1.0000);
			}
			Offset()
			{
				PositionX(0.0000,0.0000);
				PositionY(0.0000,0.0000);
				PositionZ(0.0000,0.0000);
			}
			PositionScale(0.0000,0.0000);
			VelocityScale(5.0000,5.0000);
			InheritVelocityFactor(0.0000,0.0000);
			Size(0, 0.4000, 0.6000);
			Red(0, 100.0000, 100.0000);
			Green(0, 255.0000, 255.0000);
			Blue(0, 100.0000, 100.0000);
			Alpha(0, 0.0000, 0.0000);
			StartRotation(0, 0.0000, 360.0000);
			RotationVelocity(0, 0.0000, 0.0000);
			FadeInTime(0.0000);
		}
		Transformer()
		{
			LifeTime(0.2500);
			Position()
			{
				LifeTime(0.2500)
			}
			Size(0)
			{
				LifeTime(0.2500)
				Scale(2.0000);
			}
			Color(0)
			{
				LifeTime(0.1000)
				Reach(100.0000,255.0000,100.0000,192.0000);
				Next()
				{
					LifeTime(0.2000)
					Reach(100.0000,255.0000,100.0000,0.0000);
				}
			}
		}
		Geometry()
		{
			BlendMode("ADDITIVE");
			Type("PARTICLE");
			Texture("com_sfx_explosion2");
		}
		ParticleEmitter("Blast_Ring")
		{
			MaxParticles(-1.0000,-1.0000);
			StartDelay(0.0000,0.0000);
			BurstDelay(0.1000, 0.1000);
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
					PositionY(0.0000,0.0000);
					PositionZ(-1.0000,-1.0000);
				}
				Offset()
				{
					PositionX(0.0000,0.0000);
					PositionY(0.0000,0.0000);
					PositionZ(0.0000,0.0000);
				}
				PositionScale(0.0000,0.0000);
				VelocityScale(4.0000,4.0000);
				InheritVelocityFactor(0.0000,0.0000);
				Size(0, 0.1500, 0.1500);
				Hue(0, 70.0000, 75.0000);
				Saturation(0, 175.0000, 200.0000);
				Value(0, 100.0000, 120.0000);
				Alpha(0, 0.0000, 0.0000);
				StartRotation(0, 0.0000, 0.0000);
				RotationVelocity(0, 0.0000, 0.0000);
				FadeInTime(0.0000);
			}
			Transformer()
			{
				LifeTime(0.6000);
				Position()
				{
					LifeTime(3.0000)
				}
				Size(0)
				{
					LifeTime(0.1000)
					Scale(5.0000);
					Next()
					{
						LifeTime(0.5000)
						Scale(2.0000);
					}
				}
				Color(0)
				{
					LifeTime(0.0500)
					Move(0.0000,0.0000,0.0000,255.0000);
					Next()
					{
						LifeTime(0.5500)
						Move(0.0000,0.0000,0.0000,-255.0000);
					}
				}
			}
			Geometry()
			{
				BlendMode("ADDITIVE");
				Type("GEOMETRY");
				Model("geo_blast_ring");
			}
			ParticleEmitter("Blast_Ring")
			{
				MaxParticles(-1.0000,-1.0000);
				StartDelay(0.0000,0.0000);
				BurstDelay(0.2000, 0.2000);
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
						PositionY(0.0000,0.0000);
						PositionZ(-1.0000,-1.0000);
					}
					Offset()
					{
						PositionX(0.0000,0.0000);
						PositionY(0.0000,0.0000);
						PositionZ(0.0000,0.0000);
					}
					PositionScale(0.0000,0.0000);
					VelocityScale(4.0000,4.0000);
					InheritVelocityFactor(0.0000,0.0000);
					Size(0, 0.1500, 0.1500);
					Hue(0, 70.0000, 75.0000);
					Saturation(0, 175.0000, 200.0000);
					Value(0, 100.0000, 120.0000);
					Alpha(0, 0.0000, 0.0000);
					StartRotation(0, 0.0000, 0.0000);
					RotationVelocity(0, 0.0000, 0.0000);
					FadeInTime(0.0000);
				}
				Transformer()
				{
					LifeTime(0.6000);
					Position()
					{
						LifeTime(3.0000)
					}
					Size(0)
					{
						LifeTime(0.1000)
						Scale(8.0000);
						Next()
						{
							LifeTime(0.5000)
							Scale(2.0000);
						}
					}
					Color(0)
					{
						LifeTime(0.0500)
						Move(0.0000,0.0000,0.0000,255.0000);
						Next()
						{
							LifeTime(0.5500)
							Move(0.0000,0.0000,0.0000,-255.0000);
						}
					}
				}
				Geometry()
				{
					BlendMode("ADDITIVE");
					Type("GEOMETRY");
					Model("geo_blast_ring");
				}
			}
		}
	}
}
