ParticleEmitter("lrg_weap_discharge")
{
	MaxParticles(8.0000,8.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.0200, 0.0500);
	BurstCount(20.0000,20.0000);
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
			PositionY(0.0000,0.3000);
			PositionZ(-1.0000,1.0000);
		}
		Offset()
		{
			PositionX(0.0000,0.0000);
			PositionY(0.0000,0.0000);
			PositionZ(0.0000,0.0000);
		}
		PositionScale(0.5000,0.5000);
		VelocityScale(1.5000,1.5000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 1.5000, 4.5000);
		Red(0, 255.0000, 255.0000);
		Green(0, 255.0000, 255.0000);
		Blue(0, 255.0000, 255.0000);
		Alpha(0, 60.0000, 60.0000);
		StartRotation(0, 0.0000, 360.0000);
		RotationVelocity(0, -100.0000, 100.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(2.5000);
		Position()
		{
			LifeTime(2.0000)
			Scale(0.0000);
		}
		Size(0)
		{
			LifeTime(2.5000)
		}
		Color(0)
		{
			LifeTime(3.0000)
			Reach(50.0000,50.0000,50.0000,0.0000);
		}
	}
	Geometry()
	{
		BlendMode("NORMAL");
		Type("PARTICLE");
		Texture("com_sfx_smoke4");
	}
}
