
extends Control

# member variables here, example:
# var a=2
# var b="textvar"

var CharacterInfo={}
var CharacterItems={}
var player_name = ""

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	CharacterInfo = {
	"Name" : "",
	"lust" : 0,
	"corruption" : 0,
	"libido" : 0,
	"sensitivity" : 0,
	"pregstat" : 0,
	"child_num" : 0,
	"lactation" : 0,
	"cum_base" : 0,
	"cum_mul" : 0,
	"futa_dick" : 0,
	"womb_cum" : 0,
	"fertility" : 0,
	"strength" : 0,
	"intelligence" : 0,
	"toughness" : 0,
	"speed" : 0,
	"mana" : 0,
	"breast_size" : 0,
	"futa_wid" : 0,
	"futa_count" : 0,
	"futa_length" : 0,
	"futa_balled" : false,
	"hip_wid" : 0,
	"nether_dep" : 0,
	"eye_type" : 0,
	"hair_type" : 0,
	"skin_color" : 0,
	"horns" : 0,
	"lower_type" : 0,
	"tail_type" : 0
	}
	return CharacterInfo
	print(CharacterInfo)

func _on_Confirm_pressed():
	var savegame = File.new()
	savegame.open("C:/Users/Hoshiko/Desktop/savegame.save", File.WRITE)
	savegame.store_line(CharacterInfo.to_json())
	print("Saved Game Data")

func _on_yes_pressed():
	CharacterInfo["Name"] = get_node("Name/TextEdit").get_text()
	get_node("Name/Label").hide()
	get_node("Name/TextEdit").set_readonly(true)
	get_node("Name/TextEdit").hide()
	get_node("Name/yes").set_disabled(true)
	get_node("Name/yes").hide()
	print(CharacterInfo)
