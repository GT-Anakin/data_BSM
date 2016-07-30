ParticleEmitter("Smoke_Emitter")
{
	MaxParticles(-1.0000,-1.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.0750, 0.0750);
	BurstCount(1.0000,1.0000);
	MaxLodDist(1000.0000);
	MinLodDist(800.0000);
	BoundingRadius(5.0);
	SoundName("")
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
			PositionX(-0.2500,0.2500);
			PositionY(-0.2500,0.2500);
			PositionZ(-0.2500,0.2500);
		}
		PositionScale(0.0000,0.0000);
		VelocityScale(0.1000,0.1000);
		InheritVelocityFactor(0.2500,0.2500);
		Size(0, 1.0000, 2.0000);
		Hue(0, 0.0000, 0.0000);
		Saturation(0, 0.0000, 0.0000);
		Value(0, 100.0000, 100.0000);
		Alpha(0, 0.0000, 0.0000);
		StartRotation(0, 0.0000, 360.0000);
		RotationVelocity(0, -90.0000, 90.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(2.0000);
		Position()
		{
			LifeTime(0.5000)
		}
		Size(0)
		{
			LifeTime(1.0000)
			Scale(4.0000);
		}
		Color(0)
		{
			LifeTime(0.2500)
			Move(0.0000,100.0000,25.0000,128.0000);
			Next()
			{
				LifeTime(1.7500)
				Reach(0.0000,-100.0000,0.0000,0.0000);
			}
		}
	}
	Geometry()
	{
		BlendMode("NORMAL");
		Type("PARTICLE");
		Texture("com_sfx_smoke3");
	}
	ParticleEmitter("Flame_Emitter")
	{
		MaxParticles(-1.0000,-1.0000);
		StartDelay(0.0000,0.0000);
		BurstDelay(0.0500, 0.0500);
		BurstCount(1.0000,1.0000);
		MaxLodDist(1100.0000);
		MinLodDist(1000.0000);
		BoundingRadius(5.0);
		SoundName("")
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
				PositionX(0.0000,0.0000);
				PositionY(0.0000,0.0000);
				PositionZ(0.0000,0.0000);
			}
			PositionScale(0.0000,0.0000);
			VelocityScale(0.1000,0.2000);
			InheritVelocityFactor(0.2500,0.2500);
			Size(0, 0.5000, 1.0000);
			Red(0, 255.0000, 255.0000);
			Green(0, 255.0000, 255.0000);
			Blue(0, 255.0000, 255.0000);
			Alpha(0, 0.0000, 0.0000);
			StartRotation(0, 0.0000, 360.0000);
			RotationVelocity(0, -180.0000, 180.0000);
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
				Scale(4.0000);
			}
			Color(0)
			{
				LifeTime(0.0500)
				Reach(255.0000,255.0000,255.0000,255.0000);
				Next()
				{
					LifeTime(0.9500)
					Reach(50.0000,0.0000,0.0000,0.0000);
				}
			}
		}
		Geometry()
		{
			BlendMode("ADDITIVE");
			Type("PARTICLE");
			Texture("com_sfx_explosion1");
		}
	}
}
