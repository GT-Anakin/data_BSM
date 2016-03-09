
Light("sun", 2760882299)
{
	Rotation(0.280490, 0.545838, -0.735677, 0.286643);
	Position(-11.660534, 43.527924, -12.129093);
	Type(1);
	Color(0.615686, 0.615686, 0.615686);
	CastShadow();
	Static();
	CastSpecular(1);
	PS2BlendMode(0);
	TileUV(1.000000,1.000000);
	OffsetUV(0.000000,0.000000);
}

GlobalLights()
{
	Light1("sun");
	Light2("");
	Top(82, 82, 82);
	Bottom(48, 48, 48);
}
