ParticleEmitter("ShockwaveGround")
{
	MaxParticles(3.0000,5.0000);
	StartDelay(0.0500,0.0500);
	BurstDelay(0.1000, 0.1000);
	BurstCount(2.0000,2.0000);
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
		Spread()
		{
			PositionX(0.0000,0.0000);
			PositionY(0.0000,0.0000);
			PositionZ(0.0000,0.0000);
		}
		Offset()
		{
			PositionX(0.0000,0.0000);
			PositionY(0.1000,0.1000);
			PositionZ(0.0000,0.0000);
		}
		PositionScale(0.0000,0.0000);
		VelocityScale(0.0000,0.0000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 1.0000, 1.0000);
		Red(0, 0.0000, 0.0000);
		Green(0, 101.0000, 101.0000);
		Blue(0, 203.0000, 203.0000);
		Alpha(0, 40.0000, 65.0000);
		StartRotation(0, 0.0000, 0.0000);
		RotationVelocity(0, 0.0000, 0.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(0.8000);
		Position()
		{
			LifeTime(0.8000)
		}
		Size(0)
		{
			LifeTime(0.7000)
			Scale(3.5000);
			Next()
			{
				LifeTime(0.2500)
				Scale(1.5000);
			}
		}
		Color(0)
		{
			LifeTime(0.7500)
			Reach(89.0000,164.0000,255.0000,25.0000);
		}
	}
	Geometry()
	{
		BlendMode("ADDITIVE");
		Type("BILLBOARD");
		Texture("com_sfx_flashring1");
	}
	ParticleEmitter("Shockwave1")
	{
		MaxParticles(2.0000,7.0000);
		StartDelay(0.4500,0.4500);
		BurstDelay(0.1000, 0.1000);
		BurstCount(2.0000,2.0000);
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
			Spread()
			{
				PositionX(0.0000,0.0000);
				PositionY(0.0000,0.0000);
				PositionZ(0.0000,0.0000);
			}
			Offset()
			{
				PositionX(1.1500,1.1500);
				PositionY(1.5000,1.5000);
				PositionZ(0.0000,0.0000);
			}
			PositionScale(0.0000,0.0000);
			VelocityScale(0.0000,0.0000);
			InheritVelocityFactor(0.0000,0.0000);
			Size(0, 1.0000, 1.0000);
			Red(0, 0.0000, 0.0000);
			Green(0, 101.0000, 101.0000);
			Blue(0, 203.0000, 203.0000);
			Alpha(0, 40.0000, 65.0000);
			StartRotation(0, 0.0000, 360.0000);
			RotationVelocity(0, 0.0000, 0.0000);
			FadeInTime(0.0000);
		}
		Transformer()
		{
			LifeTime(0.2000);
			Position()
			{
				LifeTime(0.8000)
			}
			Size(0)
			{
				LifeTime(0.7000)
				Scale(3.5000);
				Next()
				{
					LifeTime(0.2500)
					Scale(1.5000);
				}
			}
			Color(0)
			{
				LifeTime(0.7500)
				Reach(89.0000,164.0000,255.0000,25.0000);
			}
		}
		Geometry()
		{
			BlendMode("ADDITIVE");
			Type("PARTICLE");
			Texture("com_sfx_flashring1");
		}
		ParticleEmitter("Shockwave2")
		{
			MaxParticles(2.0000,7.0000);
			StartDelay(0.4500,0.4500);
			BurstDelay(0.1000, 0.1000);
			BurstCount(2.0000,2.0000);
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
				Spread()
				{
					PositionX(0.0000,0.0000);
					PositionY(0.0000,0.0000);
					PositionZ(0.0000,0.0000);
				}
				Offset()
				{
					PositionX(-1.1500,-1.1500);
					PositionY(1.5000,1.5000);
					PositionZ(0.0000,0.0000);
				}
				PositionScale(0.0000,0.0000);
				VelocityScale(0.0000,0.0000);
				InheritVelocityFactor(0.0000,0.0000);
				Size(0, 1.0000, 1.0000);
				Red(0, 0.0000, 0.0000);
				Green(0, 101.0000, 101.0000);
				Blue(0, 203.0000, 203.0000);
				Alpha(0, 40.0000, 65.0000);
				StartRotation(0, 0.0000, 360.0000);
				RotationVelocity(0, 0.0000, 0.0000);
				FadeInTime(0.0000);
			}
			Transformer()
			{
				LifeTime(0.2000);
				Position()
				{
					LifeTime(0.2000)
				}
				Size(0)
				{
					LifeTime(0.2000)
					Scale(1.4000);
					Next()
					{
						LifeTime(0.2500)
						Scale(1.5000);
					}
				}
				Color(0)
				{
					LifeTime(0.7500)
					Reach(255.0000,255.0000,255.0000,25.0000);
				}
			}
			Geometry()
			{
				BlendMode("ADDITIVE");
				Type("PARTICLE");
				Texture("com_sfx_flashring1");
			}
		}
	}
}
