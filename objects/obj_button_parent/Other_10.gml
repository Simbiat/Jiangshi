// When you release the mouse, this event is called
// In this event the frame changes and the button sound is played
// Children objects can inherit this event to program their own click behaviour
selected = true;
pressed = true;
audio_play_sound(snd_button, 0, 0);