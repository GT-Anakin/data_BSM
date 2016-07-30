ParticleEmitter("Smoke")
{
	MaxParticles(2.0000,2.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.0500, 0.0500);
	BurstCount(2.0000,2.0000);
	MaxLodDist(2100.0000);
	MinLodDist(2000.0000);
	BoundingRadius(30.0);
	SoundName("")
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
			PositionY(1.0000,2.0000);
			PositionZ(-1.0000,1.0000);
		}
		Offset()
		{
			PositionX(0.0000,0.0000);
			PositionY(0.0000,0.0000);
			PositionZ(0.0000,0.0000);
		}
		PositionScale(0.4000,0.4000);
		VelocityScale(0.5000,0.5000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 0.4000, 0.9000);
		Red(0, 64.0000, 64.0000);
		Green(0, 64.0000, 64.0000);
		Blue(0, 64.0000, 64.0000);
		Alpha(0, 128.0000, 128.0000);
		StartRotation(0, -90.0000, 0.0000);
		RotationVelocity(0, -100.0000, 100.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(0.7500);
		Position()
		{
			LifeTime(3.0000)
			Scale(0.0000);
		}
		Size(0)
		{
			LifeTime(0.7500)
			Scale(3.0000);
		}
		Color(0)
		{
			LifeTime(0.7500)
			Reach(32.0000,32.0000,32.0000,0.0000);
		}
	}
	Geometry()
	{
		BlendMode("NORMAL");
		Type("PARTICLE");
		Texture("com_sfx_smoke3");
	}
	ParticleEmitter("Flare")
	{
		MaxParticles(1.0000,1.0000);
		StartDelay(0.0000,0.0000);
		BurstDelay(0.0100, 0.0100);
		BurstCount(1.0000,1.0000);
		MaxLodDist(2100.0000);
		MinLodDist(2000.0000);
		BoundingRadius(30.0);
		SoundName("")
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
			Size(0, 1.0000, 1.0000);
			Hue(0, 20.0000, 30.0000);
			Saturation(0, 50.0000, 100.0000);
			Value(0, 255.0000, 255.0000);
			Alpha(0, 255.0000, 255.0000);
			StartRotation(0, -90.0000, 0.0000);
			RotationVelocity(0, -100.0000, 100.0000);
			FadeInTime(0.0000);
		}
		Transformer()
		{
			LifeTime(0.1500);
			Position()
			{
				LifeTime(3.0000)
				Scale(0.0000);
			}
			Size(0)
			{
				LifeTime(0.1500)
				Scale(3.0000);
			}
			Color(0)
			{
				LifeTime(0.1500)
				Move(0.0000,0.0000,0.0000,-255.0000);
			}
		}
		Geometry()
		{
			BlendMode("ADDITIVE");
			Type("PARTICLE");
			Texture("com_sfx_flashball2");
		}
		ParticleEmitter("Fire")
		{
			MaxParticles(4.0000,4.0000);
			StartDelay(0.0000,0.0000);
			BurstDelay(0.0100, 0.0100);
			BurstCount(1.0000,1.0000);
			MaxLodDist(2100.0000);
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
				Spread()
				{
					PositionX(-1.0000,1.0000);
					PositionY(1.0000,2.0000);
					PositionZ(-1.0000,1.0000);
				}
				Offset()
				{
					PositionX(0.0000,0.0000);
					PositionY(0.0000,0.0000);
					PositionZ(0.0000,0.0000);
				}
				PositionScale(0.0000,0.0000);
				VelocityScale(1.0000,2.0000);
				InheritVelocityFactor(0.0000,0.0000);
				Size(0, 0.1000, 0.2000);
				Red(0, 255.0000, 255.0000);
				Green(0, 255.0000, 255.0000);
				Blue(0, 255.0000, 255.0000);
				Alpha(0, 255.0000, 255.0000);
				StartRotation(0, 0.0000, 360.0000);
				RotationVelocity(0, -100.0000, 100.0000);
				FadeInTime(0.0000);
			}
			Transformer()
			{
				LifeTime(0.4500);
				Position()
				{
					LifeTime(0.7500)
					Scale(0.0000);
				}
				Size(0)
				{
					LifeTime(0.4500)
					Scale(5.0000);
				}
				Color(0)
				{
					LifeTime(0.1500)
					Reach(255.0000,255.0000,255.0000,255.0000);
					Next()
					{
						LifeTime(0.3000)
						Reach(255.0000,255.0000,255.0000,0.0000);
					}
				}
			}
			Geometry()
			{
				BlendMode("ADDITIVE");
				Type("PARTICLE");
				Texture("com_sfx_explosion4");
			}
		}
	}
}
