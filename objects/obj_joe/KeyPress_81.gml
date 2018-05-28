/// @description Cyber Eye

global.is_eye_on = !global.is_eye_on;

if(global.is_eye_on == true) {
	global.EyeCounter += 1;
	global.EyeTimeAux1 = get_timer();
} else {
	global.EyeTimeAux2 = get_timer();
	global.EyeTime += (global.EyeTimeAux2 - global.EyeTimeAux1);
}