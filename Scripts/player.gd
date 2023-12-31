extends CharacterBody2D

var gravity = 10
var speed = 300

func _process(delta):
	if !is_on_floor():
		velocity.y += gravity	
		$Sprite2D.frame = 1

	if Input.is_action_pressed("move_right"):
		velocity.x = speed
		$Sprite2D.flip_h = false
		$AnimationPlayer.play('walking')
		
	elif Input.is_action_pressed("move_left"):
		velocity.x  = -speed
		$Sprite2D.flip_h = true
		$AnimationPlayer.play('walking')
		
	else:
		velocity.x = 0
		$AnimationPlayer.play("stading_still")
		
	
	
	if is_on_floor() and Input.is_action_just_pressed("jump"):
		velocity.y -= speed
		
		
	move_and_slide()
