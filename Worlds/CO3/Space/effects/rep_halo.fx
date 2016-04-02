
LightBeam("rep_halo")
{
   Color(255, 253, 209, 50);
   Length(18.0);
   InitialWidth(2.3, 1.8);
   FinalWidth(19.3, 19.3);
   FadeFactor(0.3);
   FadeLength(0.8);
   FlareIntensity(0.4);
      BeamIntensity(0.5);
   PS2()
   {
      BeamIntensity(0.0002);
   }
   DrawDistance(100.0);
}