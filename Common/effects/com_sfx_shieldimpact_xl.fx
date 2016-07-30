ParticleEmitter("Rings")
{
	MaxParticles(4.0000,4.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.1000, 0.3000);
	BurstCount(1.0000,1.0000);
	MaxLodDist(50.0000);
	MinLodDist(10.0000);
	BoundingRadius(5.0);
	SoundName("shield_impact_large defer")
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
			PositionX(-0.1000,0.1000);
			PositionY(-0.1000,0.1000);
			PositionZ(5.0000,5.0000);
		}
		PositionScale(0.0000,0.0000);
		VelocityScale(0.0000,0.0000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 1.0000, 1.5000);
		Hue(0, 100.0000, 130.0000);
		Saturation(0, 255.0000, 255.0000);
		Value(0, 128.0000, 128.0000);
		Alpha(0, 0.0000, 0.0000);
		StartRotation(0, 3.0000, 3.0000);
		RotationVelocity(0, 0.0000, 0.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(2.0000);
		Position()
		{
			LifeTime(0.2000)
		}
		Size(0)
		{
			LifeTime(0.5000)
			Scale(5.0000);
			Next()
			{
				LifeTime(1.5000)
				Scale(3.0000);
			}
		}
		Color(0)
		{
			LifeTime(0.5000)
			Move(0.0000,0.0000,0.0000,96.0000);
			Next()
			{
				LifeTime(1.5000)
				Move(0.0000,0.0000,0.0000,-96.0000);
			}
		}
	}
	Geometry()
	{
		BlendMode("ADDITIVE");
		Type("BILLBOARD");
		Texture("com_sfx_flashring2");
	}
	ParticleEmitter("Fog")
	{
		MaxParticles(7.0000,7.0000);
		StartDelay(0.1000,0.1000);
		BurstDelay(0.1000, 0.1000);
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
			Circle()
			{
				PositionX(-1.0000,1.0000);
				PositionY(-1.0000,1.0000);
				PositionZ(0.0000,0.0000);
			}
			Offset()
			{
				PositionX(-5.0000,5.0000);
				PositionY(-5.0000,5.0000);
				PositionZ(5.0000,5.0000);
			}
			PositionScale(0.0000,0.0000);
			VelocityScale(5.0000,5.0000);
			InheritVelocityFactor(0.0000,0.0000);
			Size(0, 1.0000, 1.5000);
			Hue(0, 100.0000, 130.0000);
			Saturation(0, 255.0000, 255.0000);
			Value(0, 128.0000, 128.0000);
			Alpha(0, 0.0000, 0.0000);
			StartRotation(0, 3.0000, 3.9000);
			RotationVelocity(0, 0.0000, 0.0000);
			FadeInTime(0.0000);
		}
		Transformer()
		{
			LifeTime(2.0000);
			Position()
			{
				LifeTime(0.2000)
			}
			Size(0)
			{
				LifeTime(2.0000)
				Scale(9.0000);
			}
			Color(0)
			{
				LifeTime(1.0000)
				Move(0.0000,0.0000,0.0000,32.0000);
				Next()
				{
					LifeTime(1.0000)
					Move(0.0000,0.0000,0.0000,-32.0000);
				}
			}
		}
		Geometry()
		{
			BlendMode("ADDITIVE");
			Type("BILLBOARD");
			Texture("com_sfx_waterfoam1");
		}
	}
}
