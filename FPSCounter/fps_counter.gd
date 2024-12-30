extends Label

var time_passed: float = 0.0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	time_passed += delta
	if time_passed >= 1.0:
		time_passed = 0.0
		text = "FPS: %d" % Engine.get_frames_per_second()
