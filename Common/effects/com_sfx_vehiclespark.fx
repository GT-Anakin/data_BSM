ParticleEmitter("Sparks")
{
    MaxParticles(50.0000,100.0000);
    StartDelay(0.0000,0.0000);
    BurstDelay(0.0001, 0.0001);
    BurstCount(1.0000,1.0000);
    MaxLodDist(50.0000);
    MinLodDist(10.0000);
    BoundingRadius(5.0);
    SoundName("com_amb_spark_c defer")
    Size(1.0000, 1.0000);
    Hue(255.0000, 255.0000);
    Saturation(255.0000, 255.0000);
    Value(255.0000, 255.0000);
    Alpha(255.0000, 255.0000);
    Spawner()
    {
        Spread()
        {
            PositionX(-0.1000,0.1000);
            PositionY(-0.1000,0.2000);
            PositionZ(-0.1000,0.1000);
        }
        Offset()
        {
            PositionX(0.0000,0.0000);
            PositionY(0.0000,0.0000);
            PositionZ(0.0000,0.0000);
        }
        PositionScale(0.0000,0.0000);
        VelocityScale(8.0000,28.0000);
        InheritVelocityFactor(0.0000,0.0000);
        Size(0, 0.0100, 0.0300);
        Red(0, 255.0000, 255.0000);
        Green(0, 184.0000, 200.0000);
        Blue(0, 17.0000, 32.0000);
        Alpha(0, 0.0000, 0.0000);
        StartRotation(0, 0.0000, 0.0000);
        RotationVelocity(0, 0.0000, 0.0000);
        FadeInTime(0.0000);
    }
    Transformer()
    {
        LifeTime(0.7500);
        Position()
        {
            LifeTime(0.7500)
            Accelerate(0.0000, -5.0000, 0.0000);
        }
        Size(0)
        {
            LifeTime(0.2000)
            Scale(1.0000);
        }
        Color(0)
        {
            LifeTime(0.0100)
            Reach(255.0000,244.0000,147.0000,128.0000);
            Next()
            {
                LifeTime(0.6900)
                Reach(242.0000,121.0000,0.0000,128.0000);
                Next()
                {
                    LifeTime(0.1000)
                    Reach(242.0000,36.0000,0.0000,0.0000);
                }
            }
        }
    }
    Geometry()
    {
        BlendMode("ADDITIVE");
        Type("SPARK");
        SparkLength(0.0300);
        Texture("com_sfx_laser_orange");
    }
    ParticleEmitter("Flare")
    {
        MaxParticles(2.0000,2.0000);
        StartDelay(0.0000,0.0000);
        BurstDelay(0.0500, 0.0500);
        BurstCount(2.0000,2.0000);
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
            Size(0, 0.0500, 0.1500);
            Red(0, 255.0000, 255.0000);
            Green(0, 255.0000, 255.0000);
            Blue(0, 200.0000, 200.0000);
            Alpha(0, 200.0000, 200.0000);
            StartRotation(0, 0.0000, 360.0000);
            RotationVelocity(0, 0.0000, 0.0000);
            FadeInTime(0.0000);
        }
        Transformer()
        {
            LifeTime(0.1000);
            Position()
            {
                LifeTime(1.0000)
            }
            Size(0)
            {
                LifeTime(0.1000)
                Scale(3.0000);
            }
            Color(0)
            {
                LifeTime(0.1000)
                Reach(255.0000,255.0000,200.0000,0.0000);
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
