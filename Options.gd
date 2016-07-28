
extends Control

# member variables here, example:
# var a=2
# var b="textvar"

var OptionSettings = {}
var Resolution = Vector2()

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	OptionSettings = {
		"Resolution" : Vector2(),
		"Display" : false,
		"ShadowType" : 0,
		"V-sync" : false,
		"Anti-Alias" : 0,
		"Sound" : 0,
		"Music" : 0,
		"Subtitles" : 0,
		"Gamepad" : false
		}
	print(OptionSettings)





func _on_VSOpt_pressed():
	var vs_toggled = get_node("Video/Vsync/VSOpt").is_pressed()
	if vs_toggled == true:
		OptionSettings["V-sync"] = true
		print("Vertical Sync Enabled")
	elif vs_toggled == false:
		OptionSettings["V-sync"] = false
		print("Vertical Sync Disabled")


func _on_ResOpt_item_selected( ID ):
	var sel_res = get_node("Video/Resolution/ResOpt").get_selected()
	if sel_res == 0:
		OptionSettings["Resolution"] = Vector2(800, 600) #800x600
	elif sel_res == 1:
		OptionSettings["Resolution"] = Vector2(1280, 720) #1280x720
	elif sel_res == 2:
		OptionSettings["Resolution"] = Vector2(1920, 1080) #1920x1080
	elif sel_res == 3:
		OptionSettings["Resolution"] = Vector2(1920, 1200) #1920x1200
	elif sel_res == 4:
		OptionSettings["Resolution"] = Vector2(2560, 1600) #2560x1600

func _on_DispOpt_item_selected( ID ):
	var disptype = get_node("Video/WindowType/DispOpt").get_selected()
	if disptype == 0:
		OptionSettings["Display"] = false
	elif disptype == 1:
		OptionSettings["Display"] = true

func _on_ShadOpt_item_selected( ID ):
	pass # replace with function body


func _on_AAOpt_item_selected( ID ):
	pass # replace with function body


func _on_Back_pressed():
	get_tree().change_scene("res://Base.scn")


func _on_Apply_pressed():
	if OptionSettings["Resolution"] == Vector2():
		print("No changes were made from default")
	else:
		OS.set_window_size(OptionSettings["Resolution"])
		OS.set_window_fullscreen(OptionSettings["Display"])
		OS.set_use_vsync(OptionSettings["V-sync"])
