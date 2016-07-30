ParticleEmitter("Flame")
{
	MaxParticles(10.0000,10.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.0100, 0.0200);
	BurstCount(2.0000,2.0000);
	MaxLodDist(1000.0000);
	MinLodDist(800.0000);
	BoundingRadius(25.0);
	SoundName("flame_ord defer")
	Size(1.0000, 1.0000);
	Hue(255.0000, 255.0000);
	Saturation(255.0000, 255.0000);
	Value(255.0000, 255.0000);
	Alpha(255.0000, 255.0000);
	Spawner()
	{
		Circle()
		{
			PositionX(-0.1000,0.1000);
			PositionY(0.0000,0.0000);
			PositionZ(0.8000,1.0000);
		}
		Offset()
		{
			PositionX(0.0000,0.0000);
			PositionY(0.0000,0.0000);
			PositionZ(0.0000,0.0000);
		}
		PositionScale(1.0000,1.0000);
		VelocityScale(15.0000,20.0000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 0.1000, 0.2000);
		Hue(0, 0.0000, 0.0000);
		Saturation(0, 0.0000, 0.0000);
		Value(0, 255.0000, 255.0000);
		Alpha(0, 0.0000, 0.0000);
		StartRotation(0, -360.0000, 0.0000);
		RotationVelocity(0, -255.0000, 257.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(0.5000);
		Position()
		{
			LifeTime(0.5000)
			Accelerate(0.0000, 2.0000, 0.0000);
		}
		Size(0)
		{
			LifeTime(0.5000)
			Scale(10.0000);
		}
		Color(0)
		{
			LifeTime(0.0100)
			Move(0.0000,0.0000,0.0000,200.0000);
			Next()
			{
				LifeTime(0.4900)
				Move(0.0000,0.0000,0.0000,-255.0000);
			}
		}
	}
	Geometry()
	{
		BlendMode("ADDITIVE");
		Type("PARTICLE");
		Texture("com_sfx_explosion4");
	}
	ParticleEmitter("Flicks")
	{
		MaxParticles(5.0000,5.0000);
		StartDelay(0.0000,0.0000);
		BurstDelay(0.0100, 0.0200);
		BurstCount(2.0000,2.0000);
		MaxLodDist(1000.0000);
		MinLodDist(800.0000);
		BoundingRadius(25.0);
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
				PositionX(-0.2000,0.2000);
				PositionY(0.0000,0.0000);
				PositionZ(0.8000,1.0000);
			}
			Offset()
			{
				PositionX(0.0000,0.0000);
				PositionY(0.0000,0.0000);
				PositionZ(0.0000,0.0000);
			}
			PositionScale(1.0000,1.0000);
			VelocityScale(15.0000,20.0000);
			InheritVelocityFactor(0.0000,0.0000);
			Size(0, 1.0000, 1.0000);
			Hue(0, 20.0000, 30.0000);
			Saturation(0, 200.0000, 255.0000);
			Value(0, 255.0000, 255.0000);
			Alpha(0, 255.0000, 255.0000);
			StartRotation(0, -360.0000, 0.0000);
			RotationVelocity(0, -255.0000, 257.0000);
			FadeInTime(0.0000);
		}
		Transformer()
		{
			LifeTime(2.0000);
			Position()
			{
				LifeTime(0.5000)
			}
			Size(0)
			{
				LifeTime(0.5000)
				Scale(1.0000);
			}
			Color(0)
			{
				LifeTime(2.0000)
				Move(0.0000,0.0000,0.0000,0.0000);
			}
		}
		Geometry()
		{
			BlendMode("ADDITIVE");
			Type("EMITTER");
			Texture("com_sfx_explosion4");
			ParticleEmitter("Smoke_Emitter")
			{
				MaxParticles(2.0000,2.0000);
				StartDelay(0.1000,0.1000);
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
						PositionY(0.0000,1.0000);
						PositionZ(0.0000,0.0000);
					}
					Offset()
					{
						PositionX(-0.2500,0.2500);
						PositionY(-0.2500,0.2500);
						PositionZ(-0.2500,0.2500);
					}
					PositionScale(0.0000,0.0000);
					VelocityScale(1.0000,1.0000);
					InheritVelocityFactor(0.1000,0.1000);
					Size(0, 0.1000, 0.2000);
					Hue(0, 20.9991, 30.0000);
					Saturation(0, 207.0000, 255.0000);
					Value(0, 220.0000, 255.0000);
					Alpha(0, 0.0000, 0.0000);
					StartRotation(0, 0.0000, 360.0000);
					RotationVelocity(0, -90.0000, 90.0000);
					FadeInTime(0.0000);
				}
				Transformer()
				{
					LifeTime(2.0000);
					Position()
					{
						LifeTime(0.5000)
					}
					Size(0)
					{
						LifeTime(1.0000)
						Scale(4.0000);
					}
					Color(0)
					{
						LifeTime(0.1000)
						Move(127.5000,0.0000,0.0000,128.0000);
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
					Texture("com_sfx_waterfoam3");
				}
			}
		}
	}
}
