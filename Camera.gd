extends Camera2D

@export var ScrollSpeed = 1.25
var CombatUI

func _ready():
	CombatUI = %"Combat UI"

func _input(event) :
	if event is InputEventMouseButton :
		if event.button_index == MOUSE_BUTTON_WHEEL_UP :
			if zoom.y < 1 :
				set_zoom(zoom * ScrollSpeed)
				CombatUI.scale = CombatUI.scale / ScrollSpeed
				CombatUI.position = CombatUI.position / ScrollSpeed
		if event.button_index == MOUSE_BUTTON_WHEEL_DOWN :
			if zoom.y > 0.512 :
				set_zoom(zoom / ScrollSpeed)
				CombatUI.scale = CombatUI.scale * ScrollSpeed
				CombatUI.position = CombatUI.position * ScrollSpeed
		#print(zoom)

