extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var systemList = preload("system_list.gd").new().systemList
onready var itemList = get_node("ItemList")
# Called when the node enters the scene tree for the first time.
func _ready():
	for i in range(systemList.size()):
		itemList.add_item(String(i + 1) + ". " + systemList[i])
		itemList.set_item_tooltip_enabled(i, false)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
