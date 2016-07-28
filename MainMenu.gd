extends Control

##########################
#Script variables go here#
##########################

func _init():
	pass

func _ready():
	pass

func _on_NewBut_pressed():
	get_tree().change_scene("res://CharCreate.tscn")
	pass # replace with function body


func _on_LoadBut_pressed():
	get_tree().change_scene("res://LoadGame.tscn")
	pass # replace with function body


func _on_OptBut_pressed():
	get_tree().change_scene("res://Options.tscn")
	pass # replace with function body


func _on_CredBut_pressed():
	pass # replace with function body


func _on_QutBut_pressed():
	pass # replace with function body
