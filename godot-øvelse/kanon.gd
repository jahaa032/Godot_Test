extends Sprite2D
var bullet = preload("res://bullet.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	look_at(get_global_mouse_position())
	rotation -= deg_to_rad(-90)
	if Input.is_action_just_pressed("ui_accept"):
		var instance = bullet.instantiate()
		instance.global_position = Vector2(global_position)
		get_tree().current_scene.add_child(instance)
