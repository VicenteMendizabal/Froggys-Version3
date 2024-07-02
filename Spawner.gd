extends Node2D

var ColeccionableEscena = preload("res://Escenas/collecionable.tscn")


func _on_timer_timeout():
	var coleccionable = ColeccionableEscena.instantiate()
	add_child(coleccionable)
