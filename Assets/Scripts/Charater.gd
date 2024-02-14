extends Node2D

class_name Charater

@export var MaxHP : int = 1
var HP : int = MaxHP
@export var MaxSTA : int = 3
var STA : int = MaxSTA
@export var ARM : int = 1
var token : int = 0

var MyStatsBar : StatsBar

#func _process(delta):
#	MyStatsBar.UpdateStats()

func _ready():
	MyStatsBar = %StatsBar
	#print("Claiming ", MyStatsBar)
	MyStatsBar.ClaimBar(self)
	MyStatsBar.UpdateStats()

## Called when it is this charaters's turn
func Turn() :
	pass

## Called to damage this charater
func TakeDamage(DMG : int, AP : int, Source : String = "Unknown") :
	var RealDMG = DMG
	if (AP < ARM) : 
		RealDMG -= (ARM - AP)
		print("Took ", DMG, " DMG with ", AP, " AP from ", Source, ", Recieved ", RealDMG)
	HP -= RealDMG
	MyStatsBar.UpdateStats()
