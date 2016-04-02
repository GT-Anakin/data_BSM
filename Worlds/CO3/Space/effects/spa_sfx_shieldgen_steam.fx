ParticleEmitter("Steam")
{
	MaxParticles(-1.0000,-1.0000);
	StartDelay(0.0000,1.0000);
	BurstDelay(0.0500, 0.0500);
	BurstCount(1.0000,1.0000);
	MaxLodDist(2200.0000);
	MinLodDist(2000.0000);
	BoundingRadius(5.0);
	SoundName("com_amb_steam_slow")
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
			PositionY(-1.0000,-0.7500);
			PositionZ(-1.0000,1.0000);
		}
		Offset()
		{
			PositionX(0.0000,0.0000);
			PositionY(20.0000,20.0000);
			PositionZ(0.0000,0.0000);
		}
		PositionScale(0.0000,0.0000);
		VelocityScale(25.0000,35.0000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 8.0000, 8.0000);
		Hue(0, 0.0000, 0.0000);
		Saturation(0, 0.0000, 0.0000);
		Value(0, 64.0000, 255.0000);
		Alpha(0, 64.0000, 64.0000);
		StartRotation(0, 0.0000, 360.0000);
		RotationVelocity(0, -180.0000, 180.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(2.0000);
		Position()
		{
			LifeTime(2.0000)
			Scale(0.0000);
		}
		Size(0)
		{
			LifeTime(2.0000)
			Scale(5.0000);
		}
		Color(0)
		{
			LifeTime(2.0000)
			Move(127.5000,0.0000,0.0000,-64.0000);
		}
	}
	Geometry()
	{
		BlendMode("ADDITIVE");
		Type("PARTICLE");
		Texture("com_sfx_smoke1");
	}
}
