
Effect("SpaceDust")
{
	Enable(1);

	Texture("spacedust1");

	SpawnDistance(250.0);
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
