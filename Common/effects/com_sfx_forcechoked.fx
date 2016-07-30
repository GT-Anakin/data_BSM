ParticleEmitter("BlurFlare")
{
	MaxParticles(-1.0000,-1.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.0200, 0.0200);
	BurstCount(1.0000,1.0000);
	MaxLodDist(50.0000);
	MinLodDist(10.0000);
	BoundingRadius(5.0);
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
			PositionZ(0.0000,0.0000);
		}
		Offset()
		{
			PositionX(0.0000,0.0000);
			PositionY(0.0000,0.0000);
			PositionZ(0.0000,0.0000);
		}
		PositionScale(0.0000,0.0000);
		VelocityScale(0.0000,0.0000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 1.5000, 2.0000);
		Hue(0, 0.0000, 0.0000);
		Saturation(0, 0.0000, 0.0000);
		Value(0, 255.0000, 255.0000);
		Alpha(0, 0.0000, 0.0000);
		StartRotation(0, 0.0000, 255.0000);
		RotationVelocity(0, -40.0000, 0.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(0.5000);
		Position()
		{
			LifeTime(1.0000)
		}
		Size(0)
		{
			LifeTime(1.0000)
			Scale(1.0000);
		}
		Color(0)
		{
			LifeTime(0.1000)
			Move(0.0000,0.0000,0.0000,32.0000);
			Next()
			{
				LifeTime(0.2000)
				Move(0.0000,0.0000,0.0000,-16.0000);
			}
		}
	}
	Geometry()
	{
		BlendMode("ADDITIVE");
		Type("PARTICLE");
		Texture("com_sfx_flare1");
	}
	ParticleEmitter("BlurRing")
	{
		MaxParticles(-1.0000,-1.0000);
		StartDelay(0.0000,0.0000);
		BurstDelay(0.0200, 0.0200);
		BurstCount(1.0000,1.0000);
		MaxLodDist(50.0000);
		MinLodDist(10.0000);
		BoundingRadius(5.0);
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
				PositionZ(0.0000,0.0000);
			}
			Offset()
			{
				PositionX(0.0000,0.0000);
				PositionY(0.0000,0.0000);
				PositionZ(0.0000,0.0000);
			}
			PositionScale(0.0000,0.0000);
			VelocityScale(0.0000,0.0000);
			InheritVelocityFactor(0.0000,0.0000);
			Size(0, 1.0000, 1.2000);
			Hue(0, 0.0000, 0.0000);
			Saturation(0, 0.0000, 0.0000);
			Value(0, 30.0000, 255.0000);
			Alpha(0, 0.0000, 0.0000);
			StartRotation(0, 0.0000, 255.0000);
			RotationVelocity(0, -40.0000, 0.0000);
			FadeInTime(0.0000);
		}
		Transformer()
		{
			LifeTime(0.5000);
			Position()
			{
				LifeTime(1.0000)
			}
			Size(0)
			{
				LifeTime(0.5000)
				Scale(0.0000);
			}
			Color(0)
			{
				LifeTime(0.1000)
				Move(0.0000,0.0000,0.0000,64.0000);
				Next()
				{
					LifeTime(0.2000)
					Move(0.0000,0.0000,0.0000,-32.0000);
				}
			}
		}
		Geometry()
		{
			BlendMode("BLUR");
			BlurValue(0.1000);
			BlurRes(1.0000);
			Type("PARTICLE");
			Texture("com_sfx_flashring1");
		}
	}
}
