ParticleEmitter("BlackSmoke")
{
    MaxParticles(-1.0000,-1.0000);
    StartDelay(0.0000,0.0000);
    BurstDelay(0.5000, 0.5000);
    BurstCount(1.0000,1.0000);
    MaxLodDist(1000.0000);
    MinLodDist(800.0000);
    BoundingRadius(5.0);
    SoundName("com_amb_fire")
    Size(1.0000, 1.0000);
    Hue(255.0000, 255.0000);
    Saturation(255.0000, 255.0000);
    Value(255.0000, 255.0000);
    Alpha(255.0000, 255.0000);
    Spawner()
    {
        Spread()
        {
            PositionX(-0.0100,0.0100);
            PositionY(0.5000,1.0000);
            PositionZ(-0.0100,0.0100);
        }
        Offset()
        {
            PositionX(0.0000,0.0000);
            PositionY(2.5000,2.5000);
            PositionZ(0.0000,0.0000);
        }
        PositionScale(0.0000,0.0000);
        VelocityScale(2.0000,2.0000);
        InheritVelocityFactor(0.0000,0.0000);
        Size(0, 0.2000, 0.4000);
        Hue(0, 0.0000, 0.0000);
        Saturation(0, 0.0000, 0.0000);
        Value(0, 20.0000, 60.0000);
        Alpha(0, 0.0000, 0.0000);
        StartRotation(0, 0.0000, 360.0000);
        RotationVelocity(0, -40.0000, 0.0000);
        FadeInTime(0.0000);
    }
    Transformer()
    {
        LifeTime(5.0000);
        Position()
        {
            LifeTime(5.0000)
        }
        Size(0)
        {
            LifeTime(5.0000)
            Scale(5.0000);
        }
        Color(0)
        {
            LifeTime(0.5000)
            Move(0.0000,0.0000,0.0000,96.0000);
            Next()
            {
                LifeTime(4.5000)
                Move(0.0000,0.0000,0.0000,-96.0000);
            }
        }
    }
    Geometry()
    {
        BlendMode("NORMAL");
        Type("SPARK");
        SparkLength(2.0000);
        Texture("com_sfx_smoke3");
    }
    ParticleEmitter("Flame_Emitter")
    {
        MaxParticles(-1.0000,-1.0000);
        StartDelay(0.0000,0.0000);
        BurstDelay(0.0400, 0.0400);
        BurstCount(1.0000,1.0000);
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
            PositionScale(0.2500,0.2500);
            VelocityScale(0.0000,0.0000);
            InheritVelocityFactor(0.0000,0.0000);
            Size(0, 0.1000, 0.1800);
            Hue(0, 0.0000, 0.0000);
            Saturation(0, 0.0000, 0.0000);
            Value(0, 255.0000, 255.0000);
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
                Reach(0.0000, 7.0000, 0.0000);
            }
            Size(0)
            {
                LifeTime(0.3000)
                Scale(0.5000);
            }
            Color(0)
            {
                LifeTime(0.0100)
                Move(0.0000,0.0000,0.0000,255.0000);
                Next()
                {
                    LifeTime(0.2490)
                    Move(0.0000,0.0000,0.0000,-255.0000);
                }
            }
        }
        Geometry()
        {
            BlendMode("ADDITIVE");
            Type("SPARK");
            SparkLength(0.1250);
            Texture("com_sfx_flames1");
        }
        ParticleEmitter("Flame_Emitter")
        {
            MaxParticles(-1.0000,-1.0000);
            StartDelay(0.0000,0.0000);
            BurstDelay(0.0450, 0.0450);
            BurstCount(1.0000,1.0000);
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
                PositionScale(0.2500,0.2500);
                VelocityScale(0.0000,0.0000);
                InheritVelocityFactor(0.0000,0.0000);
                Size(0, 0.1000, 0.1800);
                Hue(0, 0.0000, 0.0000);
                Saturation(0, 0.0000, 0.0000);
                Value(0, 255.0000, 255.0000);
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
                    Reach(0.0000, 7.0000, 0.0000);
                }
                Size(0)
                {
                    LifeTime(0.3000)
                    Scale(0.5000);
                }
                Color(0)
                {
                    LifeTime(0.0100)
                    Move(0.0000,0.0000,0.0000,255.0000);
                    Next()
                    {
                        LifeTime(0.2490)
                        Move(0.0000,0.0000,0.0000,-255.0000);
                    }
                }
            }
            Geometry()
            {
                BlendMode("ADDITIVE");
                Type("SPARK");
                SparkLength(0.1250);
                Texture("com_sfx_flames2");
            }
            ParticleEmitter("Flame_Emitter")
            {
                MaxParticles(-1.0000,-1.0000);
                StartDelay(0.0000,0.0000);
                BurstDelay(0.0750, 0.0750);
                BurstCount(1.0000,1.0000);
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
                    PositionScale(0.2500,0.2500);
                    VelocityScale(0.0000,0.0000);
                    InheritVelocityFactor(0.0000,0.0000);
                    Size(0, 0.1000, 0.1800);
                    Hue(0, 0.0000, 0.0000);
                    Saturation(0, 0.0000, 0.0000);
                    Value(0, 255.0000, 255.0000);
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
                        Reach(0.0000, 7.0000, 0.0000);
                    }
                    Size(0)
                    {
                        LifeTime(0.3000)
                        Scale(0.5000);
                    }
                    Color(0)
                    {
                        LifeTime(0.0100)
                        Move(0.0000,0.0000,0.0000,255.0000);
                        Next()
                        {
                            LifeTime(0.2490)
                            Move(0.0000,0.0000,0.0000,-255.0000);
                        }
                    }
                }
                Geometry()
                {
                    BlendMode("ADDITIVE");
                    Type("SPARK");
                    SparkLength(0.1250);
                    Texture("com_sfx_flames3");
                }
            }
        }
    }
}
