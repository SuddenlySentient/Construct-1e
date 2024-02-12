extends Node3D

class_name Charater

@export var MaxHP : int = 1
var HP : int = MaxHP
@export var MaxSTA : int = 3
var STA : int = MaxSTA
@export var ARM : int = 1
var token : int = 0

var MyStatsBar : StatsBar

func Update() :
	pass

#func _process(delta):
#	MyStatsBar.UpdateStats()

func _ready():
	MyStatsBar = %StatsBar
	MyStatsBar.ClaimBar(self)
	print(MyStatsBar)
	MyStatsBar.UpdateStats()

## Called when it is this charaters's turn
func turn() :
	pass
