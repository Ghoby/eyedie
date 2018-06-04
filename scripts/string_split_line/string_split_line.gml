/// @description Splits a string in multiple lines
/// @param string string to split
/// @param lenght line lenght

var str = argument0;
var len = argument1;

var index = len;

while (string_length(str) > index)
{
	for (i = index; i > index - len; i--)
	{
		if (string_char_at(str, i) == " ")
		{
			str = string_insert("\n", str, i);
			break;
		}
	}
	
	index += len;
}

str = string_replace_all(str, "\n ", "\n");

return str;