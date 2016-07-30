ParticleEmitter("Smoke")
{
	MaxParticles(8.0000,8.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.0100, 0.0100);
	BurstCount(2.0000,2.0000);
	MaxLodDist(1000.0000);
	MinLodDist(800.0000);
	BoundingRadius(25.0);
	SoundName("com_weap_inf_incinerator_fire defer")
	NoRegisterStep();
	Size(1.0000, 1.0000);
	Hue(255.0000, 255.0000);
	Saturation(255.0000, 255.0000);
	Value(255.0000, 255.0000);
	Alpha(255.0000, 255.0000);
	Spawner()
	{
		Circle()
		{
			PositionX(-0.3000,0.3000);
			PositionY(0.0000,0.0000);
			PositionZ(0.8000,1.0000);
		}
		Offset()
		{
			PositionX(0.0000,0.0000);
			PositionY(0.0000,0.0000);
			PositionZ(0.0000,0.0000);
		}
		PositionScale(2.0000,2.0000);
		VelocityScale(15.0000,20.0000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 0.1000, 0.3000);
		Hue(0, 25.0000, 30.0000);
		Saturation(0, 0.0000, 10.0000);
		Value(0, 230.0000, 255.0000);
		Alpha(0, 0.0000, 0.0000);
		StartRotation(0, -360.0000, 0.0000);
		RotationVelocity(0, -255.0000, 257.0000);
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
			Scale(10.0000);
		}
		Color(0)
		{
			LifeTime(0.0100)
			Move(0.0000,0.0000,0.0000,64.0000);
			Next()
			{
				LifeTime(0.4900)
				Move(0.0000,0.0000,0.0000,-64.0000);
			}
		}
	}
	Geometry()
	{
		BlendMode("BLUR");
		BlurValue(0.1000);
		BlurRes(1.0000);
		Type("PARTICLE");
		Texture("com_sfx_waterfoam1");
	}
}
