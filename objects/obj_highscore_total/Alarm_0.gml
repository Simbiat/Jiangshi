// Is the current rescue score greater than the rescue highscore?
if (global.score_total > global.highscore_total)
{
	// Update the rescue highscore to be equal to the rescue score
	global.highscore_total = global.score_total;

	// Play highscore sound
	audio_play_sound(snd_highscore, 0, 0);

	// Create gold particles
	repeat (30)
	{
		instance_create_layer(irandom_range(bbox_left, bbox_right), y, "TopLayer", obj_gold_particle);
	}

	// Run Alarm 1 after 1 step, to start animation
	alarm[1] = 1;
}