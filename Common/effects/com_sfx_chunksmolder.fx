ParticleEmitter("BlackSmoke")
{
	MaxParticles(200.0000,200.0000);
	StartDelay(1.0000,1.0000);
	BurstDelay(0.7500, 0.7500);
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
			PositionX(0.0000,0.0000);
			PositionY(0.2500,0.4000);
			PositionZ(0.0000,0.0000);
		}
		Offset()
		{
			PositionX(-0.5000,0.5000);
			PositionY(0.0000,0.0000);
			PositionZ(-0.5000,0.5000);
		}
		PositionScale(0.0000,0.0000);
		VelocityScale(1.5000,1.5000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 0.3000, 0.5000);
		Red(0, 128.0000, 128.0000);
		Green(0, 128.0000, 128.0000);
		Blue(0, 128.0000, 128.0000);
		Alpha(0, 0.0000, 0.0000);
		StartRotation(0, 0.0000, 360.0000);
		RotationVelocity(0, -40.0000, 0.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(7.0000);
		Position()
		{
			LifeTime(7.0000)
			Accelerate(0.0000, -0.0500, 0.0000);
		}
		Size(0)
		{
			LifeTime(6.0000)
			Scale(4.0000);
		}
		Color(0)
		{
			LifeTime(3.0000)
			Move(128.0000,128.0000,128.0000,32.0000);
			Next()
			{
				LifeTime(4.0000)
				Move(0.0000,0.0000,0.0000,-170.0000);
			}
		}
	}
	Geometry()
	{
		BlendMode("NORMAL");
		Type("PARTICLE");
		Texture("com_sfx_smoke2");
	}
}
