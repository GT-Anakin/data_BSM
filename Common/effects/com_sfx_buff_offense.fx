ParticleEmitter("!Mesh")
{
	MaxParticles(3.0000,3.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.1000, 0.1000);
	BurstCount(1.0000,1.0000);
	MaxLodDist(2200.0000);
	MinLodDist(2000.0000);
	BoundingRadius(5.0);
	SoundName("buff_rage_fire defer")
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
			PositionX(0.0000,0.0000);
			PositionY(0.0000,0.0000);
			PositionZ(0.0000,0.0000);
		}
		Offset()
		{
			PositionX(0.0000,0.0000);
			PositionY(1.0000,1.0000);
			PositionZ(0.0000,0.0000);
		}
		PositionScale(0.0000,0.0000);
		VelocityScale(0.0000,0.0000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 1.0000, 1.0000);
		Hue(0, 0.0000, 10.0000);
		Saturation(0, 255.0000, 255.0000);
		Value(0, 255.0000, 255.0000);
		Alpha(0, 0.0000, 0.0000);
		StartRotation(0, 0.0000, 0.0000);
		RotationVelocity(0, 0.0000, 0.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(1.0000);
		Position()
		{
			LifeTime(1.0000)
		}
		Size(0)
		{
			LifeTime(1.0000)
			Scale(5.0000);
		}
		Color(0)
		{
			LifeTime(0.1000)
			Move(0.0000,0.0000,0.0000,64.0000);
			Next()
			{
				LifeTime(0.9000)
				Move(0.0000,0.0000,0.0000,-64.0000);
			}
		}
	}
	Geometry()
	{
		BlendMode("ADDITIVE");
		Type("BILLBOARD");
		Texture("com_sfx_flashring1");
	}
}
