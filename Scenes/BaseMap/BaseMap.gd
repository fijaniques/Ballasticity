extends Node2D

var pressPoint = Vector2.ZERO
var releasePoint = Vector2.ZERO

signal _force

func _process(delta):
	_get_input()

func _get_input():
	if(Input.is_action_just_pressed("l_click")):
		pressPoint = get_global_mouse_position()
		$Ball.sleeping = true
	elif(Input.is_action_just_released("l_click")):
		releasePoint = get_global_mouse_position()
		$Ball.sleeping = false
		
		$Ball.force = pressPoint - releasePoint
		$Ball.shoot = true
