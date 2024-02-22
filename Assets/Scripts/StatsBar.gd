extends Control

class_name StatsBar

var MyCharater : Charater
var HPMeter : ProgressBar
var STAMeter : ProgressBar

func ClaimBar(claimer : Charater):
	MyCharater = claimer
	#print("Claimed by ", MyCharater)
	HPMeter = %HPBar
	STAMeter = %STABar

func UpdateStats() :
	HPMeter.set_max(MyCharater.MaxHP)
	#print("set HP meter max to ", MyCharater.MaxHP)
	HPMeter.set_value(MyCharater.HP)
	#print("set HP meter value to ", MyCharater.HP)
	STAMeter.set_max(MyCharater.MaxSTA)
	#print("set STA meter max to ", MyCharater.MaxSTA)
	STAMeter.set_value(MyCharater.STA)
	#print("set STA meter value to ", MyCharater.STA)
