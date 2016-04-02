ParticleEmitter("JetExhaust")
{
	MaxParticles(-1.0000,-1.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.1500, 0.1500);
	BurstCount(1.0000,1.0000);
	MaxLodDist(10000.0000);
	MinLodDist(9000.0000);
	BoundingRadius(10.0);
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
			PositionZ(29.4000,29.4000);
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
		Size(0, 14.7000, 14.7000);
		Red(0, 255.0000, 255.0000);
		Green(0, 255.0000, 255.0000);
		Blue(0, 255.0000, 255.0000);
		Alpha(0, 0.0000, 0.0000);
		StartRotation(0, 0.0000, 360.0000);
		RotationVelocity(0, 0.0000, 0.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(1.0000);
		Position()
		{
			LifeTime(0.0500)
		}
		Size(0)
		{
			LifeTime(1.0000)
			Scale(2.0000);
		}
		Color(0)
		{
			LifeTime(0.1000)
			Reach(255.0000,255.0000,255.0000,8.0000);
			Next()
			{
				LifeTime(0.9000)
				Reach(255.0000,255.0000,255.0000,0.0000);
			}
		}
	}
	Geometry()
	{
		BlendMode("ADDITIVE");
		Type("PARTICLE");
		Texture("com_sfx_smoke1");
	}
}
