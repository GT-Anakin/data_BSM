ParticleEmitter("Cracks")
{
	MaxParticles(0.0000,0.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.0010, 0.0010);
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
		Hue(0, 0.0000, 0.0000);
		Saturation(0, 0.0000, 0.0000);
		Value(0, 10.0000, 10.0000);
		Alpha(0, 255.0000, 255.0000);
		StartRotation(0, 4.0000, 4.9000);
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
			LifeTime(0.0500)
			Scale(30.0000);
		}
		Color(0)
		{
			LifeTime(1.5000)
			Move(0.0000,0.0000,0.0000,255.0000);
			Next()
			{
				LifeTime(0.5000)
				Move(0.0000,0.0000,0.0000,-255.0000);
			}
		}
	}
	Geometry()
	{
		BlendMode("NORMAL");
		Type("BILLBOARD");
		Texture("com_sfx_groundcrack2");
	}
	ParticleEmitter("Pebbles")
	{
		MaxParticles(80.0000,80.0000);
		StartDelay(0.0000,0.0000);
		BurstDelay(0.0010, 0.0010);
		BurstCount(80.0000,80.0000);
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
				PositionX(-1.0000,1.0000);
				PositionY(1.0000,3.0000);
				PositionZ(-1.0000,1.0000);
			}
			Offset()
			{
				PositionX(0.0000,0.0000);
				PositionY(-1.0000,-1.0000);
				PositionZ(0.0000,0.0000);
			}
			PositionScale(1.0000,1.0000);
			VelocityScale(1.0000,5.0000);
			InheritVelocityFactor(0.0000,0.0000);
			Size(0, 0.0020, 0.0040);
			Hue(0, 0.0000, 20.0000);
			Saturation(0, 20.0000, 80.0000);
			Value(0, 10.0000, 80.0000);
			Alpha(0, 255.0000, 255.0000);
			StartRotation(0, 0.0000, 255.0000);
			RotationVelocity(0, 255.0000, 975.0000);
			FadeInTime(0.0000);
		}
		Transformer()
		{
			LifeTime(2.0000);
			Position()
			{
				LifeTime(2.0000)
				Accelerate(0.0000, -10.0000, 0.0000);
			}
			Size(0)
			{
				LifeTime(0.0500)
				Scale(15.0000);
			}
			Color(0)
			{
				LifeTime(1.5000)
				Move(0.0000,0.0000,0.0000,255.0000);
			}
		}
		Geometry()
		{
			BlendMode("NORMAL");
			Type("PARTICLE");
			Texture("com_sfx_explosion2");
		}
		ParticleEmitter("Shockwave")
		{
			MaxParticles(1.0000,1.0000);
			StartDelay(0.0000,0.0000);
			BurstDelay(0.0010, 0.0010);
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
					PositionY(0.0000,0.0000);
					PositionZ(0.0000,0.0000);
				}
				PositionScale(0.0000,0.0000);
				VelocityScale(0.0000,0.0000);
				InheritVelocityFactor(0.0000,0.0000);
				Size(0, 0.5000, 0.5000);
				Hue(0, 190.0000, 190.0000);
				Saturation(0, 10.0000, 20.0000);
				Value(0, 255.0000, 255.0000);
				Alpha(0, 128.0000, 128.0000);
				StartRotation(0, 4.0000, 4.9000);
				RotationVelocity(0, 0.0000, 0.0000);
				FadeInTime(0.0000);
			}
			Transformer()
			{
				LifeTime(1.0000);
				Position()
				{
					LifeTime(2.0000)
				}
				Size(0)
				{
					LifeTime(0.5000)
					Scale(15.0000);
					Next()
					{
						LifeTime(0.2500)
						Scale(1.2500);
						Next()
						{
							LifeTime(0.2500)
							Scale(1.1000);
						}
					}
				}
				Color(0)
				{
					LifeTime(0.5000)
					Move(0.0000,0.0000,0.0000,0.0000);
					Next()
					{
						LifeTime(0.5000)
						Move(190.0000,100.0000,0.0000,-128.0000);
					}
				}
			}
			Geometry()
			{
				BlendMode("ADDITIVE");
				Type("BILLBOARD");
				Texture("com_sfx_flashring1");
			}
			ParticleEmitter("Flare")
			{
				MaxParticles(5.0000,5.0000);
				StartDelay(0.0000,0.0000);
				BurstDelay(0.0100, 0.0100);
				BurstCount(5.0000,5.0000);
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
					Size(0, 5.0000, 7.0000);
					Hue(0, 200.0000, 200.0000);
					Saturation(0, 100.0000, 100.0000);
					Value(0, 255.0000, 255.0000);
					Alpha(0, 128.0000, 128.0000);
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
						LifeTime(6.0000)
						Scale(4.0000);
					}
					Color(0)
					{
						LifeTime(0.2500)
						Move(0.0000,0.0000,0.0000,-128.0000);
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
