ParticleEmitter("Drops")
{
    MaxParticles(10.0000,10.0000);
    StartDelay(0.0000,0.0000);
    BurstDelay(0.0050, 0.0050);
    BurstCount(1.0000,1.0000);
    MaxLodDist(50.0000);
    MinLodDist(10.0000);
    BoundingRadius(5.0);
    SoundName("com_weap_obj_ordnance_wtr_exp defer")
    NoRegisterStep();
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
            PositionY(0.5000,1.5000);
            PositionZ(-1.0000,1.0000);
        }
        Offset()
        {
            PositionX(0.0000,0.0000);
            PositionY(0.1000,0.1000);
            PositionZ(0.0000,0.0000);
        }
        PositionScale(0.0000,0.0000);
        VelocityScale(0.7500,1.2500);
        InheritVelocityFactor(0.0000,0.0000);
        Size(0, 0.1000, 0.1500);
        Red(0, 255.0000, 255.0000);
        Green(0, 255.0000, 255.0000);
        Blue(0, 255.0000, 255.0000);
        Alpha(0, 64.0000, 64.0000);
        StartRotation(0, 0.0000, 360.0000);
        RotationVelocity(0, 0.0000, 0.0000);
        FadeInTime(0.0000);
    }
    Transformer()
    {
        LifeTime(0.5000);
        Position()
        {
            LifeTime(0.5000)
            Accelerate(0.0000, -2.0000, 0.0000);
        }
        Size(0)
        {
            LifeTime(0.5000)
            Scale(5.0000);
        }
        Color(0)
        {
            LifeTime(0.3000)
            Reach(255.0000,255.0000,255.0000,64.0000);
            Next()
            {
                LifeTime(0.2000)
                Reach(150.0000,150.0000,200.0000,0.0000);
            }
        }
    }
    Geometry()
    {
        BlendMode("ADDITIVE");
        Type("PARTICLE");
        Texture("com_sfx_dirt2");
    }
    ParticleEmitter("Drops")
    {
        MaxParticles(30.0000,30.0000);
        StartDelay(0.0000,0.0000);
        BurstDelay(0.0050, 0.0050);
        BurstCount(1.0000,1.0000);
        MaxLodDist(50.0000);
        MinLodDist(10.0000);
        BoundingRadius(5.0);
        SoundName("")
        NoRegisterStep();
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
                PositionY(2.0000,2.0000);
                PositionZ(0.0000,0.0000);
            }
            Offset()
            {
                PositionX(0.0000,0.0000);
                PositionY(0.1000,0.1000);
                PositionZ(0.0000,0.0000);
            }
            PositionScale(0.0000,0.0000);
            VelocityScale(2.0000,3.0000);
            InheritVelocityFactor(0.0000,0.0000);
            Size(0, 0.1500, 0.3000);
            Red(0, 255.0000, 255.0000);
            Green(0, 255.0000, 255.0000);
            Blue(0, 255.0000, 255.0000);
            Alpha(0, 64.0000, 64.0000);
            StartRotation(0, 0.0000, 360.0000);
            RotationVelocity(0, 0.0000, 0.0000);
            FadeInTime(0.0000);
        }
        Transformer()
        {
            LifeTime(0.7500);
            Position()
            {
                LifeTime(0.7500)
                Accelerate(0.0000, -10.0000, 0.0000);
            }
            Size(0)
            {
                LifeTime(0.6000)
                Scale(0.2000);
            }
            Color(0)
            {
                LifeTime(0.5000)
                Reach(255.0000,255.0000,255.0000,64.0000);
                Next()
                {
                    LifeTime(0.2500)
                    Reach(255.0000,255.0000,255.0000,0.0000);
                }
            }
        }
        Geometry()
        {
            BlendMode("ADDITIVE");
            Type("PARTICLE");
            Texture("com_sfx_dirt1");
        }
        ParticleEmitter("Drops")
        {
            MaxParticles(15.0000,15.0000);
            StartDelay(0.0000,0.0000);
            BurstDelay(0.0050, 0.0050);
            BurstCount(1.0000,1.0000);
            MaxLodDist(50.0000);
            MinLodDist(10.0000);
            BoundingRadius(5.0);
            SoundName("")
            NoRegisterStep();
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
                    PositionY(2.0000,2.0000);
                    PositionZ(0.0000,0.0000);
                }
                Offset()
                {
                    PositionX(0.0000,0.0000);
                    PositionY(0.1000,0.1000);
                    PositionZ(0.0000,0.0000);
                }
                PositionScale(0.0000,0.0000);
                VelocityScale(2.0000,3.0000);
                InheritVelocityFactor(0.0000,0.0000);
                Size(0, 0.1500, 0.3000);
                Red(0, 255.0000, 255.0000);
                Green(0, 255.0000, 255.0000);
                Blue(0, 255.0000, 255.0000);
                Alpha(0, 16.0000, 16.0000);
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
                    Accelerate(0.0000, -10.0000, 0.0000);
                }
                Size(0)
                {
                    LifeTime(0.6000)
                    Scale(0.5000);
                }
                Color(0)
                {
                    LifeTime(0.5000)
                    Reach(255.0000,255.0000,255.0000,16.0000);
                    Next()
                    {
                        LifeTime(0.2500)
                        Reach(255.0000,255.0000,255.0000,0.0000);
                    }
                }
            }
            Geometry()
            {
                BlendMode("ADDITIVE");
                Type("PARTICLE");
                Texture("com_sfx_waterspray1");
            }
            ParticleEmitter("Ring")
            {
                MaxParticles(3.0000,3.0000);
                StartDelay(0.0000,0.0000);
                BurstDelay(0.1000, 0.2000);
                BurstCount(1.0000,1.0000);
                MaxLodDist(50.0000);
                MinLodDist(10.0000);
                BoundingRadius(5.0);
                SoundName("")
                NoRegisterStep();
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
                        PositionX(-0.1000,0.1000);
                        PositionY(0.1000,0.1000);
                        PositionZ(-0.1000,0.1000);
                    }
                    PositionScale(0.0000,0.0000);
                    VelocityScale(0.0000,0.0000);
                    InheritVelocityFactor(0.0000,0.0000);
                    Size(0, 0.1000, 0.1500);
                    Red(0, 255.0000, 255.0000);
                    Green(0, 255.0000, 255.0000);
                    Blue(0, 255.0000, 255.0000);
                    Alpha(0, 0.0000, 0.0000);
                    StartRotation(0, 0.0000, 0.0000);
                    RotationVelocity(0, 0.0000, 0.0000);
                    FadeInTime(0.0000);
                }
                Transformer()
                {
                    LifeTime(1.0000);
                    Position()
                    {
                        LifeTime(0.1000)
                    }
                    Size(0)
                    {
                        LifeTime(1.0000)
                        Scale(9.0000);
                    }
                    Color(0)
                    {
                        LifeTime(0.0500)
                        Reach(255.0000,255.0000,255.0000,40.0000);
                        Next()
                        {
                            LifeTime(0.7000)
                            Reach(255.0000,255.0000,255.0000,0.0000);
                        }
                    }
                }
                Geometry()
                {
                    BlendMode("ADDITIVE");
                    Type("BILLBOARD");
                    Texture("com_sfx_flashring2");
                }
            }
        }
    }
}
