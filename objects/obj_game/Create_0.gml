// Play the game music
current_music = audio_play_sound(snd_game_music, 0, 1);


// Create transition "end" sequence which ends
// the transition, because the game has started
layer_sequence_create("Transition", 0, 0, seq_transition_end);

//Create array for death sequences' ids
death_seqs = [noone, noone, noone, noone, noone];