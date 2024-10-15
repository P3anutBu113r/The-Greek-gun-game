extends Marker2D
@export var direction: int
var generating = true
# 1 calls for a down door
# 2 calls for a left door
# 3 calls for an up door
# 4 calls for a right door
func _ready() -> void:
	$"Generating timer".start()
func marker():
	null


	

func _on_generating_timer_timeout() -> void:
	if generating:
		match direction:
			1:
				var left_room_scene = load(TestRooms.up_rooms.pick_random())
				if left_room_scene:
					print("Scene loaded successfully.")
					var instance = left_room_scene.instantiate()
					if instance:
						instance.position = position
						get_parent().call_deferred("add_child", instance)
					else:
						print("Failed to instantiate scene, you fucked up")
				else:
					print("Failed to load scene, you fucked up")
			2:
				var left_room_scene = load(TestRooms.left_rooms.pick_random())
				if left_room_scene:
					print("Scene loaded successfully.")
					var instance = left_room_scene.instantiate()
					if instance:
						instance.position = position
						get_parent().call_deferred("add_child", instance)
					else:
						print("Failed to instantiate scene, you fucked up")
				else:
					print("Failed to load scene, you fucked up")
			3:
				var left_room_scene = load(TestRooms.down_rooms.pick_random())
				if left_room_scene:
					print("Scene loaded successfully.")
					var instance = left_room_scene.instantiate()
					if instance:
						instance.position = position
						get_parent().call_deferred("add_child", instance)
					else:
						print("Failed to instantiate scene, you fucked up")
				else:
					print("Failed to load scene, you fucked up")
			4:
				var left_room_scene = load(TestRooms.right_rooms.pick_random())
				if left_room_scene:
					print("Scene loaded successfully.")
					var instance = left_room_scene.instantiate()
					if instance:
						instance.position = position
						get_parent().call_deferred("add_child", instance)
					else:
						print("Failed to instantiate scene, you fucked up")
				else:
					print("Failed to load scene, you fucked up")


func _on_room_detection_area_entered(area: Area2D) -> void:
	generating = false
	print("hi")
