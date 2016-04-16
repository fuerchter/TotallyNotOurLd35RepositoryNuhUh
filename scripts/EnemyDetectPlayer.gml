//Detect player based on the way I am facing and the distance from the player
plDistance=x-Player.x;
detectionRadius=90;

image_blend=-1;
detecting=false;
if(direction<=90 || direction>=270) //facing right
{
    if(plDistance<0 && plDistance>=-detectionRadius)
    {
        image_blend=make_colour_rgb(255, 0, 0);
        detecting=true;
    }
}
else if(direction>=90 && direction<=270) //facing left
{
    if(plDistance>0 && plDistance<=detectionRadius)
    {
        image_blend=make_colour_rgb(255, 0, 0);
        detecting=true;
    }
}

if(detecting)
{
    path_end();
    move_towards_point(Player.x, Player.y, 2);
}
else
{
    if(prevDetecting==true)
    {
        path_start(enemyPath0, 1.5, path_action_reverse, true);
    }
}
prevDetecting=detecting;
