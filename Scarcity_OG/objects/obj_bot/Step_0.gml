/// @description Insert description here
// You can write your code in this editor

key_left = -keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check(vk_space);

move = key_left + key_right;
hsp = move * h_spd;
if (vsp < 10)
	vsp += grav;

if (place_meeting(x, y + 1, obj_wall))
{
	vsp = key_jump * -jmp_spd
}

if (place_meeting(x+hsp, y, obj_wall))
{
	while(!place_meeting(x+sign(hsp), y, obj_wall))
	{
		x += sign(hsp);
	}
	hsp = 0;
}

if (place_meeting(x, y + vsp, obj_wall))
{
	while(!place_meeting(x, y + sign(vsp), obj_wall))
	{
		y += sign(vsp);
	}
	vsp = 0;
}

x += hsp;
y += vsp;

if move > 0
{
	image_xscale = 1;
	sprite_index = spr_bot_walk;
}
else if move < 0
{
	image_xscale = -1;
	sprite_index = spr_bot_walk;
}
else if move == 0
{
	sprite_index = spr_bot_idle;
}
