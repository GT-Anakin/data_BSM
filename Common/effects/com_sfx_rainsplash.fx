ParticleEmitter("Drops")
{
	MaxParticles(2.0000,2.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.0100, 0.0100);
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
			PositionX(-1.0000,1.0000);
			PositionY(0.8000,1.0000);
			PositionZ(-1.0000,1.0000);
		}
		Offset()
		{
			PositionX(0.0000,0.0000);
			PositionY(0.0000,0.0000);
			PositionZ(0.0000,0.0000);
		}
		PositionScale(0.0000,0.0000);
		VelocityScale(1.0000,1.0000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 0.1000, 0.2000);
		Red(0, 150.0000, 200.0000);
		Green(0, 150.0000, 200.0000);
		Blue(0, 200.0000, 200.0000);
		Alpha(0, 200.0000, 200.0000);
		StartRotation(0, 0.0000, 360.0000);
		RotationVelocity(0, 0.0000, 0.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(0.6000);
		Position()
		{
			LifeTime(0.6000)
			Accelerate(0.0000, -4.0000, 0.0000);
		}
		Size(0)
		{
			LifeTime(0.6000)
			Scale(8.0000);
		}
		Color(0)
		{
			LifeTime(0.6000)
			Reach(150.0000,150.0000,200.0000,0.0000);
		}
	}
	Geometry()
	{
		BlendMode("ADDITIVE");
		Type("PARTICLE");
		Texture("com_sfx_dirt2");
	}
	ParticleEmitter("Ring")
	{
		MaxParticles(2.0000,3.0000);
		StartDelay(0.0000,0.0000);
		BurstDelay(0.2000, 0.2000);
		BurstCount(1.0000,1.0000);
		MaxLodDist(50.0000);
		MinLodDist(10.0000);
		BoundingRadius(5.0);
		SoundName("")
		Size(0.2000, 0.2000);
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
				PositionY(0.1000,0.1000);
				PositionZ(0.0000,0.0000);
			}
			PositionScale(0.0000,0.0000);
			VelocityScale(0.0000,0.0000);
			InheritVelocityFactor(0.0000,0.0000);
			Size(0, 0.2000, 0.2500);
			Red(0, 180.0000, 180.0000);
			Green(0, 180.0000, 180.0000);
			Blue(0, 200.0000, 200.0000);
			Alpha(0, 0.0000, 0.0000);
			StartRotation(0, 0.0000, 0.0000);
			RotationVelocity(0, 0.0000, 0.0000);
			FadeInTime(0.0000);
		}
		Transformer()
		{
			LifeTime(0.5000);
			Position()
			{
				LifeTime(0.2000)
			}
			Size(0)
			{
				LifeTime(0.5000)
				Scale(9.0000);
			}
			Color(0)
			{
				LifeTime(0.1000)
				Reach(150.0000,150.0000,200.0000,40.0000);
				Next()
				{
					LifeTime(0.4000)
					Reach(150.0000,150.0000,200.0000,0.0000);
				}
			}
		}
		Geometry()
		{
			BlendMode("ADDITIVE");
			Type("BILLBOARD");
			Texture("com_sfx_flashring2");
		}
	}
}
