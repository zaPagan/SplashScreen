extends Node2D

var stream_volume : float

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AudioStreamPlayer.play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if $AudioStreamPlayer.volume_db < -10:
		$AudioStreamPlayer.volume_db += 0.25


func _on_timer_timeout() -> void:
	queue_free()


func _on_tree_exiting() -> void:
	pass #Engine.time_scale = 1


func _on_tree_entered() -> void:
	pass
