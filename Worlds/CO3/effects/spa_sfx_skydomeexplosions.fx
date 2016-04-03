ParticleEmitter("Explosions")
{
	MaxParticles(-1.0000,-1.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.1000, 0.3000);
	BurstCount(1.0000,2.0000);
	MaxLodDist(2200.0000);
	MinLodDist(2000.0000);
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
			PositionX(-1.0000,1.0000);
			PositionY(-1.0000,1.0000);
			PositionZ(-1.0000,1.0000);
		}
		Offset()
		{
			PositionX(0.0000,0.0000);
			PositionY(0.0000,0.0000);
			PositionZ(0.0000,0.0000);
		}
		PositionScale(0.0000,2.0000);
		VelocityScale(0.0000,0.0000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 0.0500, 0.4500);
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
		LifeTime(0.7500);
		Position()
		{
			LifeTime(0.8000)
		}
		Size(0)
		{
			LifeTime(0.7500)
			Scale(2.0000);
		}
		Color(0)
		{
			LifeTime(0.0100)
			Reach(255.0000,255.0000,255.0000,255.0000);
		}
	}
	Geometry()
	{
		BlendMode("NORMAL");
		Type("ANIMATED");
		TimePerFrame(0.0500);
		FrameSize(32.0000);
		TotalFrames(16.0000);
		Looping(0);
		Texture("spa_sfx_skydome_animated_exp");
	}
	ParticleEmitter("Lasers")
	{
		MaxParticles(-1.0000,-1.0000);
		StartDelay(0.0000,0.0000);
		BurstDelay(0.0750, 0.5750);
		BurstCount(1.0000,1.0000);
		MaxLodDist(50.0000);
		MinLodDist(10.0000);
		BoundingRadius(5.0);
		SoundName("")
		NoRegisterStep();
		Size(1.0000, 1.0000);
		Red(255.0000, 255.0000);
		Green(255.0000, 255.0000);
		Blue(255.0000, 255.0000);
		Alpha(255.0000, 255.0000);
		Spawner()
		{
			Spread()
			{
				PositionX(-1.0000,1.0000);
				PositionY(-1.0000,1.0000);
				PositionZ(-1.0000,1.0000);
			}
			Offset()
			{
				PositionX(-2.0000,2.0000);
				PositionY(-2.0000,2.0000);
				PositionZ(-2.0000,2.0000);
			}
			PositionScale(0.0000,1.0000);
			VelocityScale(3.0000,3.5000);
			InheritVelocityFactor(0.0000,0.0000);
			Size(0, 0.0250, 0.0250);
			Red(0, 255.0000, 255.0000);
			Green(0, 255.0000, 255.0000);
			Blue(0, 255.0000, 255.0000);
			Alpha(0, 0.0000, 0.0000);
			StartRotation(0, 0.0000, 0.0000);
			RotationVelocity(0, 0.0000, 0.0000);
			FadeInTime(0.0000);
		}
		Transformer()
		{
			LifeTime(3.0000);
			Position()
			{
				LifeTime(2.0000)
				Scale(0.0000);
			}
			Size(0)
			{
				LifeTime(3.0000)
				Scale(0.0000);
			}
			Color(0)
			{
				LifeTime(0.0100)
				Move(0.0000,0.0000,0.0000,255.0000);
				Next()
				{
					LifeTime(3.0000)
					Reach(50.0000,50.0000,50.0000,0.0000);
				}
			}
		}
		Geometry()
		{
			BlendMode("ADDITIVE");
			Type("SPARK");
			SparkLength(0.0750);
			Texture("com_sfx_laser_red");
		}
	}
}
