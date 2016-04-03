ParticleEmitter("Flare")
{
	MaxParticles(-1.0000,-1.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.5000, 0.5000);
	BurstCount(1.0000,1.0000);
	MaxLodDist(30.0000);
	MinLodDist(10.0000);
	BoundingRadius(2.0);
	SoundName("com_amb_steam_slow")
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
			PositionY(1.0000,3.0000);
			PositionZ(0.0000,0.0000);
		}
		Offset()
		{
			PositionX(-3.0000,3.0000);
			PositionY(0.0000,0.0000);
			PositionZ(-1.0000,1.0000);
		}
		PositionScale(0.0000,0.0000);
		VelocityScale(0.3000,1.0000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 1.0000, 1.5000);
		Red(0, 255.0000, 255.0000);
		Green(0, 255.0000, 255.0000);
		Blue(0, 255.0000, 255.0000);
		Alpha(0, 0.0000, 0.0000);
		StartRotation(0, 0.0000, 360.0000);
		RotationVelocity(0, -40.0000, 40.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(4.0000);
		Position()
		{
			LifeTime(1.0000)
		}
		Size(0)
		{
			LifeTime(4.0000)
			Scale(5.0000);
		}
		Color(0)
		{
			LifeTime(0.4000)
			Reach(255.0000,255.0000,255.0000,64.0000);
			Next()
			{
				LifeTime(3.6000)
				Reach(255.0000,255.0000,255.0000,0.0000);
			}
		}
	}
	Geometry()
	{
		BlendMode("ADDITIVE");
		Type("PARTICLE");
		Texture("com_sfx_smoke4");
	}
}
