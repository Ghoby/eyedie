/// @description Sets overlay visible if close to player


if (distance_to_object(obj_joe) < OVERLAY_ACTIVATE_DISTANCE)
{
	long_overlay.visible = true;
	short_overlay.visible = false;
}
else
{
	long_overlay.visible = false;
	short_overlay.visible = true;
}