
// Genereal
#macro START_ROOM						room_start_menu
										
// Player								
#macro PLAYER_SPEED						1.75
#macro PLAYER_ANIM_IDLE_IDX				12
										
// NPC									
#macro NPC_NAME_COLOR					c_white
										
// Overlay								
#macro OVERLAY_DEPTH					-1
										
#macro OVERLAY_LINE_WIDTH				4
#macro OVERLAY_LINE_LENGTH				20	// Length for each component.
#macro OVERLAY_ORIGIN_MARGIN			20	// Margin around the object.
										
#macro OVERLAY_RECT_WIDTH				100
#macro OVERLAY_RECT_HEIGHT				40
#macro OVERLAY_BACK_COLOR				c_aqua
#macro OVERLAY_ALPHA					0.5
#macro OVERLAY_ALPHA_SHORT				0.25

#macro OVERLAY_TEXT_MARGIN				4
#macro OVERLAY_TITLE_SCALE				1.2
#macro OVERLAY_TITLE_SCALE_SHORT		1
#macro OVERLAY_TEXT_COLOR				c_white
#macro OVERLAY_DESCRIPTION_MAX_CHARS	40

#macro OVERLAY_ACTIVATE_DISTANCE		50

// UI
#macro UI_DEPTH							-2
#macro UI_INTERACTABLE_SCALE			0.75
#macro UI_ICON_NPC_Y					-75			// Difference of NPC's y
#macro UI_ICON_GOTO_Y					-75			// Difference og Trigger's y
										
	// TextBox							
#macro UI_TEXTBOX_WIDTH					600
#macro UI_TEXTBOX_HEIGHT				150
#macro UI_TEXTBOX_MARGIN_X				64
#macro UI_TEXTBOX_MARGIN_Y				view_hport[view_current] - 64
#macro UI_TEXTBOX_TEXT_MARGIN			16
#macro UI_TEXTBOX_STRING_HEIGHT			21
#macro UI_TEXTBOX_SPACING				1
#macro UI_TEXTBOX_NAME_X				10
#macro UI_TEXTBOX_NAME_Y				5
#macro UI_TEXTBOX_TEXT_X				10
#macro UI_TEXTBOX_TEXT_Y				10
#macro UI_TEXTBOX_OUTLINE				2
#macro UI_TEXTBOX_COLOR					c_dkgray
#macro UI_TEXTBOX_OUTLINE_COLOR			c_gray
										
	// HUD								
#macro UI_HUD_JOURNAL_TEXT				"J - Journal"
#macro UI_HUD_INVENTORY_TEXT			"I - Inventory"
#macro UI_HUD_EYE_TEXT					"Q - Cybernetic Eye"
#macro UI_HUD_MARGIN					50
#macro UI_JOURNAL_TEXT					"Journal Updated"
#macro UI_JOURNAL_SEPARATION_WIDTH		340
										
// Controlls							
#macro PLAYER_LEFT_KEY					ord("A")
#macro PLAYER_RIGHT_KEY					ord("D")
#macro ACTION_KEY						ord("E")
#macro JOURNAL_JEY						ord("J")
#macro INVENTORY_KEY					ord("I")
#macro EYE_KEY							ord("Q")
										
// Rooms Borders						
#macro ROOM_CITY_MIN					68
#macro ROOM_CITY_MAX					1070
										
#macro ROOM_ALLEY_MIN					50
#macro ROOM_ALLEY_MAX					950
										
#macro ROOM_BAR_MIN						50
#macro ROOM_BAR_MAX						710
										
#macro ROOM_CITY2_MIN					26
#macro ROOM_CITY2_MAX					960
										
#macro ROOM_ALLEY2_MIN					50
#macro ROOM_ALLEY2_MAX					950
										
#macro ROOM_APART_LOBBY_MIN				50
#macro ROOM_APART_LOBBY_MAX				950
#macro ROOM_APART_LOBBY_LIMIT			580
										
#macro ROOM_APART_CORR_MIN				50
#macro ROOM_APART_CORR_MAX				950
										
#macro ROOM_APART_ROOM_MIN				50
#macro ROOM_APART_ROOM_MAX				950

// Bloom
#macro BLOOM_INTENSITY					1
#macro BLOOM_SIZE						1

// Transitions
#macro ALLEY_TO_ROOM					900
#macro LOBBY_TO_CITY					450

// Effects
#macro EFFECT_DEPTH						-100
#macro EFFECT_EYE_ALPHA					0.3
#macro EFFECT_SCREEN_ALPHA				0.5


















