//Detect player based on the way I am facing and the distance from the player
plDistance=x-Player.x;
detectionRadius=90;
image_blend=-1;
if(direction==0)
{
    if(plDistance<0 && plDistance>=-detectionRadius)
    {
        image_blend=make_colour_rgb(255, 0, 0);
    }
}
else if(direction==180)
{
    if(plDistance>0 && plDistance<=detectionRadius)
    {
        image_blend=make_colour_rgb(255, 0, 0);
    }
}
