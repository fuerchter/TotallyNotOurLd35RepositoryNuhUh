//Platformer movement
//Get the player's input
key_right = keyboard_check(vk_right);
key_left = -keyboard_check(vk_left);
key_jump = keyboard_check_pressed(vk_up);
 
//React to inputs
move = key_left + key_right;
hsp = move * movespeed;
if (vsp < 10) vsp += grav;
 
if (place_meeting(x,y+1,Floor))
{
    vsp = key_jump * -jumpspeed
}
 
//Horizontal Collision
if (place_meeting(x+hsp,y,Floor))
{
    while(!place_meeting(x+sign(hsp),y,Floor))
    {
        x += sign(hsp);
    }
    hsp = 0;
}
x += hsp;
 
//Vertical Collision
if (place_meeting(x,y+vsp,Floor))
{
    while(!place_meeting(x,y+sign(vsp),Floor))
    {
        y += sign(vsp);
    }
    vsp = 0;
}
y += vsp;
