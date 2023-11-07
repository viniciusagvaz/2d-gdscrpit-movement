extends Area2D

func _ready():
	$AnimationPlayer.play("duck_girl")

func _on_body_entered(body):
	if body.name == "Player":
		print('Conseguiu!')
