/// @description Delay extra satiety
if instance_exists(obj_player) && obj_player.ghost {
	if !obj_player.tutorial {
		audio_play_sound(snd_civilian_feed, 0, 0);
	}
	hp -= 1;
	global.ghost_satiety += 10;
}