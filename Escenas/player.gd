extends CharacterBody2D

var speed := 100

@onready var animated_sprite_2d = $CollisionShape2D/AnimatedSprite2D

func _physics_process(delta):
	var inputVel = Input.get_axis("ui_left" , "ui_right") #Movimiento Personaje Base
	var apreteSalto = Input.get_action_strength("ui_accept")
	
	velocity.x = inputVel * speed
	
	if apreteSalto != 0:#Movimiento Personaje SALTO
		velocity.y = 0
		velocity.y -= apreteSalto * 200
	if !is_on_floor():
		velocity.y += 10
	move_and_slide()
	
	if velocity.x != 0:
		animated_sprite_2d.play("run")
	else:
		animated_sprite_2d.play("idle")
		
	if inputVel != 0:
		animated_sprite_2d.flip_h = inputVel <0

func subirScore():
	print("subir puntos")

func morirse():
	print("me mori")
