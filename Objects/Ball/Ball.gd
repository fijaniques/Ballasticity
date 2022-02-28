extends RigidBody2D

var force = Vector2.ZERO
var shoot :bool = true

func _integrate_forces(state):
	if(shoot):
		_add_force()

func _add_force():
	shoot = false
	
	set_linear_velocity(force)


func _on_Ball_body_entered(body):
	get_tree().reload_current_scene()
