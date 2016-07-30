ParticleEmitter("Sparks")
{
	MaxParticles(-1.0000,-1.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.0010, 0.1010);
	BurstCount(1.0000,1.0000);
	MaxLodDist(50.0000);
	MinLodDist(10.0000);
	BoundingRadius(5.0);
	SoundName("com_amb_spark_c defer")
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
			PositionY(-1.0000,1.0000);
			PositionZ(-1.0000,1.0000);
		}
		Offset()
		{
			PositionX(-0.1000,0.1000);
			PositionY(-0.1000,0.1000);
			PositionZ(-0.1000,0.1000);
		}
		PositionScale(0.2500,0.2500);
		VelocityScale(1.0000,6.0000);
		InheritVelocityFactor(0.5000,0.5000);
		Size(0, 0.0100, 0.0300);
		Red(0, 255.0000, 255.0000);
		Green(0, 184.0000, 200.0000);
		Blue(0, 17.0000, 32.0000);
		Alpha(0, 0.0000, 0.0000);
		StartRotation(0, 0.0000, 0.0000);
		RotationVelocity(0, 0.0000, 0.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(0.2500);
		Position()
		{
			LifeTime(0.2500)
			Accelerate(0.0000, -5.0000, 0.0000);
		}
		Size(0)
		{
			LifeTime(0.2000)
			Scale(1.0000);
		}
		Color(0)
		{
			LifeTime(0.0500)
			Move(0.0000,0.0000,0.0000,255.0000);
		}
	}
	Geometry()
	{
		BlendMode("ADDITIVE");
		Type("SPARK");
		SparkLength(0.0300);
		Texture("com_sfx_laser_orange");
	}
}
