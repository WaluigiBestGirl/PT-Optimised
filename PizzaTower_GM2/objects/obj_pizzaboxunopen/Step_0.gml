if (place_meeting(x, y, obj_player) && sprite_index == spr_pizzaboxunopen)
{
	global.combotime = 60;
	fmod_event_one_shot("event:/sfx/misc/collecttoppin")
	with (instance_create(x, y, obj_smallnumber))
    number = "1000"
        
    if (place_meeting(x, y, obj_player1))
         global.collect += 1000
    else
         global.collectN += 1000
    with (instance_create(x, y - 25, content))
    {
	switch (content)
	case obj_pizzakincheese:
		{
        sprite_index = spr_toppincheese_intro
		global.cheesefollow = true
		}
	case obj_pizzakintomato:
		{
        sprite_index = spr_toppintomato_intro
		global.cheesefollow = true
		}
	case obj_pizzakintomato:
		{
        sprite_index = spr_toppintomato_intro
		global.cheesefollow = true
		}
	case obj_pizzakinsausage:
		{
        sprite_index = spr_toppinsausage_intro
		global.sausagefollow = true
		}
	case obj_pizzakinpineapple:
	    {
    	sprite_index = spr_toppinpineapple_intro
		global.pineapplefollow = true
		}

    }
        global.toppintotal += 1
        instance_create(x, y, obj_taunteffect)
        global.heattime = 60
        global.style += 10
        global.toppintotal += 1
	instance_destroy();
}
subimg += 0.35;
if (subimg > (sprite_get_number(spr_toppinhelp) - 1))
{
	subimg = frac(subimg);
	scr_fmod_soundeffect(snd, x, y);
}
