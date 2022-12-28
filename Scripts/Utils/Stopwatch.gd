extends Node

class_name Stopwatch

var time

func _init():
	time= OS.get_system_time_msecs()


func get_time():
	return OS.get_system_time_msecs() - time

func get_time_secs():
	return get_time() / 1000.0

func log(s= "", log_to_console= true):
	var delta= OS.get_system_time_msecs() - time
	if log_to_console:
		if s:
			s+= " "
		print(s, delta, "msec")
	return delta
