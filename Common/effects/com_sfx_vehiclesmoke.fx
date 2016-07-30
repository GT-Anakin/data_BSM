ParticleEmitter("BlackSmoke")
{
	MaxParticles(-1.0000,-1.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.1000, 0.3000);
	BurstCount(1.0000,1.0000);
	MaxLodDist(50.0000);
	MinLodDist(10.0000);
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
			PositionX(-0.1000,0.1000);
			PositionY(0.0000,0.2000);
			PositionZ(-0.1000,0.1000);
		}
		Offset()
		{
			PositionX(-0.5000,0.5000);
			PositionY(0.7500,1.5000);
			PositionZ(-0.5000,0.5000);
		}
		PositionScale(0.0000,0.0000);
		VelocityScale(0.0000,0.0000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 0.5000, 1.0000);
		Red(0, 128.0000, 128.0000);
		Green(0, 128.0000, 128.0000);
		Blue(0, 128.0000, 128.0000);
		Alpha(0, 0.0000, 0.0000);
		StartRotation(0, -70.0000, 0.0000);
		RotationVelocity(0, -40.0000, 0.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(2.0000);
		Position()
		{
			LifeTime(2.0000)
			Accelerate(0.0000, 5.0000, 0.0000);
		}
		Size(0)
		{
			LifeTime(1.0000)
			Scale(3.0000);
			Next()
			{
				LifeTime(2.0000)
				Scale(2.0000);
			}
		}
		Color(0)
		{
			LifeTime(0.5000)
			Reach(80.0000,80.0000,80.0000,64.0000);
			Next()
			{
				LifeTime(1.5000)
				Reach(0.0000,0.0000,0.0000,0.0000);
			}
		}
	}
	Geometry()
	{
		BlendMode("NORMAL");
		Type("PARTICLE");
		Texture("com_sfx_smoke4");
	}
}
