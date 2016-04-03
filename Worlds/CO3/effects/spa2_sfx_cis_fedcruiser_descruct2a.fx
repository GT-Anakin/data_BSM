ParticleEmitter("Lightning1")
{
	MaxParticles(-1.0000,-1.0000);
	StartDelay(0.0000,1.0000);
	BurstDelay(2.0000, 7.0000);
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
		BurstDelay(2.0000, 7.0000);
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
			BurstDelay(2.0000, 7.0000);
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
