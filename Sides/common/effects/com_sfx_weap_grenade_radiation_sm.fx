ParticleEmitter("Fire_Normal")
{
	MaxParticles(10.0000,10.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.1000, 0.1000);
	BurstCount(10.0000,10.0000);
	MaxLodDist(50.0000);
	MinLodDist(10.0000);
	BoundingRadius(30.0);
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
			PositionY(0.0000,0.5000);
			PositionZ(-1.0000,1.0000);
		}
		Offset()
		{
			PositionX(0.0000,0.0000);
			PositionY(0.0000,0.0000);
			PositionZ(0.0000,0.0000);
		}
		PositionScale(0.5000,1.0000);
		VelocityScale(0.5000,0.5000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 0.7500, 1.0500);
		Red(0, 20.0000, 166.0000);
		Green(0, 28.0000, 50.0000);
		Blue(0, 0.0000, 196.0000);
		Alpha(0, 64.0000, 64.0000);
		StartRotation(0, 0.0000, 360.0000);
		RotationVelocity(0, -50.0000, 50.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(3.0000);
		Position()
		{
			LifeTime(1.0000)
		}
		Size(0)
		{
			LifeTime(3.0000)
			Scale(2.5000);
		}
		Color(0)
		{
			LifeTime(0.1000)
			Reach(148.0000,27.0000,188.0000,64.0000);
			Next()
			{
				LifeTime(1.0000)
				Reach(97.0000,22.0000,116.0000,64.0000);
				Next()
				{
					LifeTime(1.7000)
					Reach(211.0000,3.0000,211.0000,30.0000);
				}
			}
		}
	}
	Geometry()
	{
		BlendMode("NORMAL");
		Type("PARTICLE");
		Texture("com_sfx_smoke1");
	}
	ParticleEmitter("Fire_Additive")
	{
		MaxParticles(8.0000,8.0000);
		StartDelay(0.0000,0.0000);
		BurstDelay(0.1000, 0.1000);
		BurstCount(8.0000,8.0000);
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
				PositionY(0.0000,0.5000);
				PositionZ(-1.0000,1.0000);
			}
			Offset()
			{
				PositionX(0.0000,0.0000);
				PositionY(0.0000,0.0000);
				PositionZ(0.0000,0.0000);
			}
			PositionScale(0.5000,1.0000);
			VelocityScale(0.5000,0.5000);
			InheritVelocityFactor(0.0000,0.0000);
			Size(0, 1.0000, 1.3000);
			Hue(0, 138.0000, 182.4924);
			Saturation(0, 178.6624, 255.0000);
			Value(0, 157.0000, 255.0000);
			Alpha(0, 0.0000, 0.0000);
			StartRotation(0, 0.0000, 360.0000);
			RotationVelocity(0, -50.0000, 50.0000);
			FadeInTime(0.0000);
		}
		Transformer()
		{
			LifeTime(3.0000);
			Position()
			{
				LifeTime(1.0000)
			}
			Size(0)
			{
				LifeTime(3.0000)
				Scale(2.5000);
			}
			Color(0)
			{
				LifeTime(0.1000)
				Move(219.0000,114.0000,231.0000,64.0000);
				Next()
				{
					LifeTime(1.0000)
					Move(199.0000,60.0000,219.0000,30.0000);
					Next()
					{
						LifeTime(1.9000)
						Reach(216.0000,14.0000,175.0000,35.0000);
					}
				}
			}
		}
		Geometry()
		{
			BlendMode("ADDITIVE");
			Type("PARTICLE");
			Texture("com_sfx_smoke3");
		}
		ParticleEmitter("InitialBurst")
		{
			MaxParticles(10.0000,10.0000);
			StartDelay(0.0000,0.0000);
			BurstDelay(0.1000, 0.1000);
			BurstCount(10.0000,10.0000);
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
					PositionY(0.0000,0.5000);
					PositionZ(-1.0000,1.0000);
				}
				Offset()
				{
					PositionX(0.0000,0.0000);
					PositionY(0.0000,0.0000);
					PositionZ(0.0000,0.0000);
				}
				PositionScale(0.5000,1.0000);
				VelocityScale(0.5000,0.5000);
				InheritVelocityFactor(0.0000,0.0000);
				Size(0, 1.0000, 1.3000);
				Hue(0, 196.9750, 208.7449);
				Saturation(0, 61.0000, 181.0870);
				Value(0, 112.0000, 255.0000);
				Alpha(0, 64.0000, 64.0000);
				StartRotation(0, 0.0000, 360.0000);
				RotationVelocity(0, -50.0000, 50.0000);
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
					Scale(5.0000);
				}
				Color(0)
				{
					LifeTime(0.5000)
					Reach(214.0000,43.0000,238.0000,0.0000);
				}
			}
			Geometry()
			{
				BlendMode("ADDITIVE");
				Type("PARTICLE");
				Texture("com_sfx_smoke4");
			}
		}
	}
}
