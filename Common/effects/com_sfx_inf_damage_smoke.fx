ParticleEmitter("Fire")
{
	MaxParticles(-1.0000,-1.0000);
	StartDelay(0.0000,0.0000);
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
		Spread()
		{
			PositionX(-1.0000,1.0000);
			PositionY(0.0000,1.0000);
			PositionZ(-1.0000,1.0000);
		}
		Offset()
		{
			PositionX(-0.1000,0.1000);
			PositionY(-0.1000,0.1000);
			PositionZ(-0.1000,0.1000);
		}
		PositionScale(0.0000,0.0000);
		VelocityScale(0.1000,0.2000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 0.3000, 0.7000);
		Hue(0, 0.0000, 0.0000);
		Saturation(0, 0.0000, 0.0000);
		Value(0, 50.0000, 200.0000);
		Alpha(0, 0.0000, 0.0000);
		StartRotation(0, 0.0000, 255.0000);
		RotationVelocity(0, -80.0000, 80.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(3.0000);
		Position()
		{
			LifeTime(1.0000)
			Accelerate(0.0000, 0.1000, 0.0000);
		}
		Size(0)
		{
			LifeTime(6.0000)
			Scale(3.0000);
		}
		Color(0)
		{
			LifeTime(0.2500)
			Move(0.0000,0.0000,0.0000,64.0000);
			Next()
			{
				LifeTime(2.7500)
				Move(0.0000,0.0000,0.0000,-64.0000);
			}
		}
	}
	Geometry()
	{
		BlendMode("NORMAL");
		Type("PARTICLE");
		Texture("com_sfx_smoke3");
	}
}
