extends AnimatedSprite2D

func _ready() -> void:
	$rest.connect("timeout", restTimeout)
	$twitch.connect("timeout", twitchTimeout)
	restStart()

func restTimeout() -> void:
	frame = randi_range(1, 3)
	twitchStart()
	
func twitchTimeout() -> void:
	frame = 0
	restStart()

func restStart() -> void:
	$rest.wait_time = randf_range(1.0, 3.0)
	$rest.start()
	
func twitchStart() -> void:
	$twitch.wait_time = randf_range(0.1, 0.4)
	$twitch.start()
