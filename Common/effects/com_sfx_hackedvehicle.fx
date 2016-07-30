ParticleEmitter("Lightning1")
{
    MaxParticles(-1.0000,-1.0000);
    StartDelay(0.0000,0.0000);
    BurstDelay(0.0100, 0.2100);
    BurstCount(1.0000,4.0000);
    MaxLodDist(1000.0000);
    MinLodDist(800.0000);
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
            PositionX(-1.0000,1.0000);
            PositionY(0.0000,1.0000);
            PositionZ(-1.0000,1.0000);
        }
        PositionScale(0.0000,0.0000);
        VelocityScale(0.0000,0.0000);
        InheritVelocityFactor(0.0000,0.0000);
        Size(0, 0.2000, 0.5000);
        Hue(0, 160.0000, 180.0000);
        Saturation(0, 120.0000, 200.0000);
        Value(0, 255.0000, 255.0000);
        Alpha(0, 0.0000, 0.0000);
        StartRotation(0, 0.0000, 360.0000);
        RotationVelocity(0, -5.0000, 5.0000);
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
            Scale(1.2500);
        }
        Color(0)
        {
            LifeTime(0.0100)
            Move(0.0000,0.0000,0.0000,255.0000);
            Next()
            {
                LifeTime(0.0500)
                Move(0.0000,0.0000,0.0000,-255.0000);
            }
        }
    }
    Geometry()
    {
        BlendMode("ADDITIVE");
        Type("GEOMETRY");
        Model("com_sfx_lightningball1");
    }
    ParticleEmitter("Sparks")
    {
        MaxParticles(-1.0000,-1.0000);
        StartDelay(0.1000,0.1000);
        BurstDelay(0.0500, 0.2500);
        BurstCount(1.0000,3.0000);
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
                PositionX(-0.0750,0.0750);
                PositionY(-0.0750,0.0750);
                PositionZ(-0.0750,0.0750);
            }
            Offset()
            {
                PositionX(0.0000,0.0000);
                PositionY(1.0000,1.0000);
                PositionZ(0.0000,0.0000);
            }
            PositionScale(1.0000,1.5000);
            VelocityScale(5.0000,15.0000);
            InheritVelocityFactor(0.0000,0.0000);
            Size(0, 0.0375, 0.0975);
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
            LifeTime(0.2500);
            Position()
            {
                LifeTime(0.2500)
                Accelerate(0.0000, -10.0000, 0.0000);
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
            SparkLength(0.0500);
            Texture("com_sfx_laser_red");
        }
    }
}
