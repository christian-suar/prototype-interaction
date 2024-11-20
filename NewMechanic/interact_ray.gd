extends RayCast3D

@onready var prompt = $Prompt

func _physics_process(_delta: float) -> void:
	prompt.text = ""
	
	
	if is_colliding():
		var collider = get_collider()
		
		if collider is Interactable:
			prompt.text = "thats a " + collider.name
			if Input.is_action_just_pressed("interact"):
				collider.interact(owner)
			
