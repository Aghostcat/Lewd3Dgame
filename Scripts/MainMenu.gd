extends Control

##########################
#Script variables go here#
##########################
var OptionSettings = {}


func _ready():
	pass

		
func _on_NewBut_pressed():
	get_tree().change_scene("res://CharCreate.tscn")


func _on_LoadBut_pressed():
	get_tree().change_scene("res://LoadGame.tscn")
	

func _on_OptBut_pressed():
	get_tree().change_scene("res://Options.tscn")
	

func _on_CredBut_pressed():
	pass # replace with function body


func _on_QutBut_pressed():
	get_tree().quit()
