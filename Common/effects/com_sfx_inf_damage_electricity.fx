ParticleEmitter("!Mesh")
{
	MaxParticles(-1.0000,-1.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.0500, 0.1500);
	BurstCount(1.0000,1.0000);
	MaxLodDist(2200.0000);
	MinLodDist(2000.0000);
	BoundingRadius(5.0);
	SoundName("ball_sparks defer")
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
			PositionX(-0.2000,0.2000);
			PositionY(-0.2000,0.2000);
			PositionZ(-0.2000,0.2000);
		}
		PositionScale(0.0000,0.0000);
		VelocityScale(0.0000,0.0000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 0.0500, 0.2500);
		Hue(0, 160.0000, 180.0000);
		Saturation(0, 80.0000, 150.0000);
		Value(0, 100.0000, 200.0000);
		Alpha(0, 0.0000, 0.0000);
		StartRotation(0, 0.0000, 360.0000);
		RotationVelocity(0, 0.0000, 0.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(0.0500);
		Position()
		{
			LifeTime(1.0000)
		}
		Size(0)
		{
			LifeTime(0.2500)
			Scale(1.0000);
		}
		Color(0)
		{
			LifeTime(0.0010)
			Move(0.0000,0.0000,0.0000,255.0000);
		}
	}
	Geometry()
	{
		BlendMode("NORMAL");
		Type("GEOMETRY");
		Model("com_sfx_lightningball1");
	}
	ParticleEmitter("!Mesh")
	{
		MaxParticles(-1.0000,-1.0000);
		StartDelay(0.0000,0.0000);
		BurstDelay(0.0500, 0.1500);
		BurstCount(1.0000,1.0000);
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
			Circle()
			{
				PositionX(0.0000,0.0000);
				PositionY(0.0000,0.0000);
				PositionZ(0.0000,0.0000);
			}
			Offset()
			{
				PositionX(-0.2000,0.2000);
				PositionY(-0.2000,0.2000);
				PositionZ(-0.2000,0.2000);
			}
			PositionScale(0.0000,0.0000);
			VelocityScale(0.0000,0.0000);
			InheritVelocityFactor(0.0000,0.0000);
			Size(0, 0.0500, 0.2500);
			Hue(0, 160.0000, 180.0000);
			Saturation(0, 80.0000, 150.0000);
			Value(0, 100.0000, 200.0000);
			Alpha(0, 0.0000, 0.0000);
			StartRotation(0, 0.0000, 360.0000);
			RotationVelocity(0, 0.0000, 0.0000);
			FadeInTime(0.0000);
		}
		Transformer()
		{
			LifeTime(0.0500);
			Position()
			{
				LifeTime(1.0000)
			}
			Size(0)
			{
				LifeTime(0.2500)
				Scale(1.0000);
			}
			Color(0)
			{
				LifeTime(0.0010)
				Move(0.0000,0.0000,0.0000,255.0000);
			}
		}
		Geometry()
		{
			BlendMode("NORMAL");
			Type("GEOMETRY");
			Model("com_sfx_lightningball2");
		}
		ParticleEmitter("!Mesh")
		{
			MaxParticles(-1.0000,-1.0000);
			StartDelay(0.0000,0.0000);
			BurstDelay(0.0500, 0.1500);
			BurstCount(1.0000,1.0000);
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
				Circle()
				{
					PositionX(0.0000,0.0000);
					PositionY(0.0000,0.0000);
					PositionZ(0.0000,0.0000);
				}
				Offset()
				{
					PositionX(-0.2000,0.2000);
					PositionY(-0.2000,0.2000);
					PositionZ(-0.2000,0.2000);
				}
				PositionScale(0.0000,0.0000);
				VelocityScale(0.0000,0.0000);
				InheritVelocityFactor(0.0000,0.0000);
				Size(0, 0.0500, 0.2500);
				Hue(0, 160.0000, 180.0000);
				Saturation(0, 80.0000, 150.0000);
				Value(0, 100.0000, 200.0000);
				Alpha(0, 0.0000, 0.0000);
				StartRotation(0, 0.0000, 360.0000);
				RotationVelocity(0, 0.0000, 0.0000);
				FadeInTime(0.0000);
			}
			Transformer()
			{
				LifeTime(0.0500);
				Position()
				{
					LifeTime(1.0000)
				}
				Size(0)
				{
					LifeTime(0.2500)
					Scale(1.0000);
				}
				Color(0)
				{
					LifeTime(0.0010)
					Move(0.0000,0.0000,0.0000,255.0000);
				}
			}
			Geometry()
			{
				BlendMode("NORMAL");
				Type("GEOMETRY");
				Model("com_sfx_lightningball3");
			}
		}
	}
}
