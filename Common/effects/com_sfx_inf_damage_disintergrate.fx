ParticleEmitter("Fire")
{
    MaxParticles(-1.0000,-1.0000);
    StartDelay(0.0000,0.0000);
    BurstDelay(0.0500, 0.0500);
    BurstCount(4.0000,4.0000);
    MaxLodDist(50.0000);
    MinLodDist(10.0000);
    BoundingRadius(5.0);
    Size(1.0000, 1.0000);
    SoundName("com_inf_disintegrate defer")
    Hue(255.0000, 255.0000);
    Saturation(255.0000, 255.0000);
    Value(255.0000, 255.0000);
    Alpha(255.0000, 255.0000);
    Spawner()
    {
        Spread()
        {
            PositionX(-1.0000,1.0000);
            PositionY(-0.5000,1.0000);
            PositionZ(-1.0000,1.0000);
        }
        Offset()
        {
            PositionX(-0.1500,0.1500);
            PositionY(-0.1500,0.1500);
            PositionZ(-0.1500,0.1500);
        }
        PositionScale(0.0000,0.0000);
        VelocityScale(1.0000,1.5000);
        InheritVelocityFactor(0.0000,0.0000);
        Size(0, 0.3000, 0.6000);
        Hue(0, 0.0000, 20.0000);
        Saturation(0, 50.0000, 60.0000);
        Value(0, 25.0000, 125.0000);
        Alpha(0, 255.0000, 255.0000);
        StartRotation(0, 0.0000, 255.0000);
        RotationVelocity(0, -80.0000, 80.0000);
        FadeInTime(0.0000);
    }
    Transformer()
    {
        LifeTime(0.2500);
        Position()
        {
            LifeTime(0.2500)
            Accelerate(0.0000, 3.0000, 0.0000);
        }
        Size(0)
        {
            LifeTime(0.2500)
            Scale(0.0000);
        }
        Color(0)
        {
            LifeTime(0.2000)
            Move(0.0000,0.0000,0.0000,0.0000);
            Next()
            {
                LifeTime(0.0500)
                Move(0.0000,0.0000,0.0000,-255.0000);
            }
        }
    }
    Geometry()
    {
        BlendMode("NORMAL");
        Type("PARTICLE");
        Texture("com_sfx_waterfoam3");
    }
}
