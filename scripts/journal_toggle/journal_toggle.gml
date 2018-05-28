/// notebook_toggle(obj journal)
if(argument0.title == "Journal") {
	if (!argument0.journal_up)
	{
		argument0.visible = true;
		argument0.journal_up = true;
	}
	else if (argument0.journal_up)
	{
		argument0.visible = false;
		argument0.journal_up = false;
	}
}

else {
	if (!argument0.inventory_up)
	{
		argument0.visible = true;
		argument0.inventory_up = true;
	}
	else if (argument0.inventory_up)
	{
		argument0.visible = false;
		argument0.inventory_up = false;
	}
}