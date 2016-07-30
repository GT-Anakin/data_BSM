ParticleEmitter("DirtSpray")
{
	MaxParticles(12.00,12.00);
	StartDelay(0.00,0.00);
	BurstDelay(0.00, 0.00);
	BurstCount(12.00,12.00);
	Size(1.00, 1.00);
	Hue(255.00, 255.00);
	Saturation(255.00, 255.00);
	Value(255.00, 255.00);
	Alpha(255.00, 255.00);
	Spawner()
	{
		Spread()
		{
			PositionX(-0.20,0.20);
			PositionY(0.20,0.50);
			PositionZ(-0.20,0.20);
		}
		Offset()
		{
			PositionX(0.00,0.00);
			PositionY(0.00,0.00);
			PositionZ(0.00,0.00);
		}
		PositionScale(1.00,1.00);
		VelocityScale(4.00,4.00);
		InheritVelocityFactor(0.00,0.00);
		Size(0, 0.10, 0.15);
		Red(0, 100.00, 120.00);
		Green(0, 100.00, 120.00);
		Blue(0, 100.00, 120.00);
		Alpha(0, 255.00, 255.00);
		StartRotation(0, 0.00, 360.00);
		RotationVelocity(0, -100.00, 100.00);
		FadeInTime(0.00);
	}
	Transformer()
	{
		LifeTime(0.75);
		Position()
		{
			LifeTime(0.75)
			Accelerate(0.00, -2.00, 0.00);
		}
		Size(0)
		{
			LifeTime(2.00)
			Scale(2.00);
		}
		Color(0)
		{
			LifeTime(0.75)
			Reach(50.00,50.00,50.00,0.00);
		}
	}
	Geometry()
	{
		Texture("com_sfx_dirt2");
		BlendMode("NORMAL");
		Type("PARTICLE");
	}
	ParticleEmitter("Smoke")
	{
		MaxParticles(4.00,4.00);
		StartDelay(0.00,0.00);
		BurstDelay(0.02, 0.05);
		BurstCount(10.00,10.00);
		Size(1.00, 1.00);
		Hue(255.00, 255.00);
		Saturation(255.00, 255.00);
		Value(255.00, 255.00);
		Alpha(255.00, 255.00);
		Spawner()
		{
			Spread()
			{
				PositionX(-1.00,1.00);
				PositionY(0.00,0.30);
				PositionZ(-1.00,1.00);
			}
			Offset()
			{
				PositionX(0.00,0.00);
				PositionY(0.00,0.00);
				PositionZ(0.00,0.00);
			}
			PositionScale(0.50,0.50);
			VelocityScale(1.50,1.50);
			InheritVelocityFactor(0.00,0.00);
			Size(0, 0.50, 1.00);
			Red(0, 255.00, 255.00);
			Green(0, 255.00, 255.00);
			Blue(0, 255.00, 255.00);
			Alpha(0, 60.00, 60.00);
			StartRotation(0, 0.00, 360.00);
			RotationVelocity(0, -100.00, 100.00);
			FadeInTime(0.00);
		}
		Transformer()
		{
			LifeTime(3.00);
			Position()
			{
				LifeTime(2.00)
				Scale(0.00);
			}
			Size(0)
			{
				LifeTime(3.00)
				Scale(3.00);
			}
			Color(0)
			{
				LifeTime(3.00)
				Reach(50.00,50.00,50.00,0.00);
			}
		}
		Geometry()
		{
			Texture("com_sfx_smoke1");
			BlendMode("ADDITIVE");
			Type("PARTICLE");
		}
	}
}
