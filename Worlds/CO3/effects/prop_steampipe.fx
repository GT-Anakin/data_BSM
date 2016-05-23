ParticleEmitter("Flare")
{
	MaxParticles(-1.0000,-1.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.0500, 0.0500);
	BurstCount(1.0000,1.0000);
	MaxLodDist(50.0000);
	MinLodDist(10.0000);
	SoundName("com_amb_steam")
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
			PositionZ(1.0000,2.0000);
		}
		Offset()
		{
			PositionX(0.0000,0.0000);
			PositionY(0.0000,0.0000);
			PositionZ(0.0000,0.0000);
		}
		PositionScale(0.0000,0.0000);
		VelocityScale(4.0000,4.0000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 0.2000, 0.3000);
		Red(0, 128.0000, 128.0000);
		Green(0, 128.0000, 128.0000);
		Blue(0, 128.0000, 128.0000);
		Alpha(0, 128.0000, 255.0000);
		StartRotation(0, 0.0000, 360.0000);
		RotationVelocity(0, 0.0000, 0.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(0.5000);
		Position()
		{
			LifeTime(0.5000)
		}
		Size(0)
		{
			LifeTime(0.5000)
			Scale(5.0000);
		}
		Color(0)
		{
			LifeTime(0.5000)
			Reach(100.0000,100.0000,100.0000,0.0000);
		}
	}
	Geometry()
	{
		BlendMode("ADDITIVE");
		Type("PARTICLE");
		Texture("thicksmoke2");
	}
}
