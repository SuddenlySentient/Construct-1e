extends Control

class_name StatsBar

var MyCharater : Charater
var HPMeter : ProgressBar
var STAMeter : ProgressBar

func _init() :
	MyCharater = $"../../.."
	print(MyCharater)
	HPMeter = $Panel/Label/HP
	STAMeter = $Panel/Label/STA

func UpdateStats() :
	HPMeter.set_max(MyCharater.MaxHP)
	HPMeter.set_value(MyCharater.HP)
	
	STAMeter.set_max(MyCharater.MaxSTA)
	STAMeter.set_value(MyCharater.STA)
	print("Test")
