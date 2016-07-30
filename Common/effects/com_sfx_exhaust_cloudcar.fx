ParticleEmitter("JetExhaust")
{
	MaxParticles(-1.0000,-1.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.0050, 0.0050);
	BurstCount(1.0000,1.0000);
	MaxLodDist(50.0000);
	MinLodDist(10.0000);
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
			PositionZ(-1.0000,-1.0000);
		}
		Offset()
		{
			PositionX(0.2000,0.2000);
			PositionY(0.0000,0.0000);
			PositionZ(0.0000,0.0000);
		}
		PositionScale(0.0000,0.0000);
		VelocityScale(35.0000,35.0000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 0.4000, 0.4000);
		Red(0, 255.0000, 255.0000);
		Green(0, 213.0000, 213.0000);
		Blue(0, 136.0000, 136.0000);
		Alpha(0, 180.0000, 180.0000);
		StartRotation(0, 0.0000, 0.0000);
		RotationVelocity(0, 0.0000, 0.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(0.0500);
		Position()
		{
			LifeTime(0.0500)
		}
		Size(0)
		{
			LifeTime(0.0300)
			Scale(0.5000);
			Next()
			{
				LifeTime(0.0700)
				Scale(0.0100);
			}
		}
		Color(0)
		{
			LifeTime(0.0500)
			Reach(0.0000,0.0000,0.0000,0.0000);
		}
	}
	Geometry()
	{
		BlendMode("ADDITIVE");
		Type("PARTICLE");
		Texture("com_sfx_flashball3");
	}
	ParticleEmitter("JetExhaust")
	{
		MaxParticles(-1.0000,-1.0000);
		StartDelay(0.0000,0.0000);
		BurstDelay(0.0050, 0.0050);
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
				PositionZ(-1.0000,-1.0000);
			}
			Offset()
			{
				PositionX(-0.2000,-0.2000);
				PositionY(0.0000,0.0000);
				PositionZ(0.0000,0.0000);
			}
			PositionScale(0.0000,0.0000);
			VelocityScale(35.0000,35.0000);
			InheritVelocityFactor(0.0000,0.0000);
			Size(0, 0.4000, 0.4000);
			Red(0, 255.0000, 255.0000);
			Green(0, 213.0000, 213.0000);
			Blue(0, 136.0000, 136.0000);
			Alpha(0, 180.0000, 180.0000);
			StartRotation(0, 0.0000, 0.0000);
			RotationVelocity(0, 0.0000, 0.0000);
			FadeInTime(0.0000);
		}
		Transformer()
		{
			LifeTime(0.0500);
			Position()
			{
				LifeTime(0.0500)
			}
			Size(0)
			{
				LifeTime(0.0300)
				Scale(0.5000);
				Next()
				{
					LifeTime(0.0700)
					Scale(0.0100);
				}
			}
			Color(0)
			{
				LifeTime(0.0500)
				Reach(0.0000,0.0000,0.0000,0.0000);
			}
		}
		Geometry()
		{
			BlendMode("ADDITIVE");
			Type("PARTICLE");
			Texture("com_sfx_flashball3");
		}
	}
}
