extends Area3D

@export var ammo_type: AmmoHandler.ammo_type
@export var amount: int = 20

@onready var pickup_sound: AudioStreamPlayer = $PickupSound
@onready var collision_shape_3d: CollisionShape3D = $CollisionShape3D


func _on_body_entered(body: Node3D) -> void:
	if body.is_in_group("player"):
		pickup_sound.play()
		body.ammo_handler.add_ammo(ammo_type, amount)
		collision_shape_3d.disabled = true
		visible = false
		await pickup_sound.finished
		queue_free()
