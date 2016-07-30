ParticleEmitter("!Mesh")
{
	MaxParticles(5.0000,5.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.0500, 0.1500);
	BurstCount(1.0000,1.0000);
	MaxLodDist(2200.0000);
	MinLodDist(2000.0000);
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
			PositionX(0.0000,0.0000);
			PositionY(0.0000,0.0000);
			PositionZ(0.0000,0.0000);
		}
		Offset()
		{
			PositionX(-0.1000,0.1000);
			PositionY(0.0000,0.1000);
			PositionZ(-0.1000,0.1000);
		}
		PositionScale(0.0000,0.0000);
		VelocityScale(0.0000,0.0000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 0.0500, 0.0750);
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
		LifeTime(0.2500);
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
			Next()
			{
				LifeTime(0.2500)
				Move(0.0000,0.0000,0.0000,-255.0000);
			}
		}
	}
	Geometry()
	{
		BlendMode("NORMAL");
		Type("GEOMETRY");
		Model("com_sfx_lightningball1");
	}
	ParticleEmitter("Smoke")
	{
		MaxParticles(3.0000,3.0000);
		StartDelay(0.5000,0.5000);
		BurstDelay(0.0010, 0.0010);
		BurstCount(1.0000,1.0000);
		MaxLodDist(50.0000);
		MinLodDist(10.0000);
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
				PositionX(-0.5000,0.5000);
				PositionY(0.5000,1.0000);
				PositionZ(-0.5000,0.5000);
			}
			Offset()
			{
				PositionX(0.0000,0.0000);
				PositionY(0.0000,0.0000);
				PositionZ(0.0000,0.0000);
			}
			PositionScale(0.0000,0.0000);
			VelocityScale(0.2000,0.7000);
			InheritVelocityFactor(0.0000,0.0000);
			Size(0, 0.3000, 0.5000);
			Red(0, 255.0000, 255.0000);
			Green(0, 255.0000, 255.0000);
			Blue(0, 255.0000, 255.0000);
			Alpha(0, 30.0000, 60.0000);
			StartRotation(0, 0.0000, 360.0000);
			RotationVelocity(0, -40.0000, 0.0000);
			FadeInTime(0.0000);
		}
		Transformer()
		{
			LifeTime(2.0000);
			Position()
			{
				LifeTime(7.0000)
				Accelerate(0.0000, -0.0500, 0.0000);
			}
			Size(0)
			{
				LifeTime(2.0000)
				Scale(4.0000);
			}
			Color(0)
			{
				LifeTime(1.0000)
				Move(128.0000,128.0000,128.0000,-60.0000);
			}
		}
		Geometry()
		{
			BlendMode("NORMAL");
			Type("PARTICLE");
			Texture("com_sfx_smoke3");
		}
		ParticleEmitter("Sparks")
		{
			MaxParticles(8.0000,8.0000);
			StartDelay(0.5000,0.5000);
			BurstDelay(0.0010, 0.0010);
			BurstCount(1.0000,1.0000);
			MaxLodDist(50.0000);
			MinLodDist(10.0000);
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
					PositionY(0.0000,1.0000);
					PositionZ(-1.0000,1.0000);
				}
				Offset()
				{
					PositionX(0.0000,0.0000);
					PositionY(0.0000,0.0000);
					PositionZ(0.0000,0.0000);
				}
				PositionScale(0.5000,0.5000);
				VelocityScale(2.0000,7.0000);
				InheritVelocityFactor(0.0000,0.0000);
				Size(0, 0.0100, 0.0200);
				Red(0, 255.0000, 255.0000);
				Green(0, 255.0000, 255.0000);
				Blue(0, 255.0000, 255.0000);
				Alpha(0, 255.0000, 255.0000);
				StartRotation(0, 0.0000, 360.0000);
				RotationVelocity(0, -180.0000, 180.0000);
				FadeInTime(0.0000);
			}
			Transformer()
			{
				LifeTime(0.2000);
				Position()
				{
					LifeTime(0.2000)
					Accelerate(0.0000, -5.0000, 0.0000);
				}
				Size(0)
				{
					LifeTime(2.0000)
					Scale(3.0000);
				}
				Color(0)
				{
					LifeTime(0.2000)
					Move(0.0000,0.0000,0.0000,0.0000);
				}
			}
			Geometry()
			{
				BlendMode("ADDITIVE");
				Type("SPARK");
				SparkLength(0.0250);
				Texture("com_sfx_laser_orange");
			}
		}
	}
}
