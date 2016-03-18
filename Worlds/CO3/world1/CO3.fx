SunFlare()
{
	Angle(93.000000, 180.000000);
	Color(255, 220, 116);
	Size(5.0);
	InitialFlareOutAlpha(70);
	SpikeColor(255,190,0,128);
	SpikeSize(20.0);
	PC()
	{
		FlareOutSize(6.0);
		NumFlareOuts(80);
		HaloInnerRing(0.0, 255, 255, 255, 255);
		HaloMiddleRing(3.0, 255, 200, 0, 255);
		HaloOutterRing(8.0, 255, 127, 0, 0);
	}
}

Effect("SpaceDust")
{
	Enable(1);

	Texture("spacedust1");

	SpawnDistance(150.0);
	MaxRandomSideOffset(70.0);
	CenterDeadZoneRadius(20.0);

	MinParticleScale(0.1);
	MaxParticleScale(0.5);

	SpawnDelay(0.02);
	ReferenceSpeed(35.0);

	DustParticleSpeed(100.0);

	SpeedParticleMinLength(2.0);
	SpeedParticleMaxLength(12.0);

	ParticleLengthMinSpeed(35.0);
	ParticleLengthMaxSpeed(170.0);
}

Effect("MotionBlur")
{
   Enable(1);
}

Effect("ScopeBlur")
{
   Enable(1);
}