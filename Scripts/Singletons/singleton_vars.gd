extends Node

@export var Score = 0

@export var BaseEggsCollected = 0
@export var MidEggsCollected = 0
@export var LargeEggsCollected = 0

func setScore(value):
	Score += value	

func resetEggCount():
	BaseEggsCollected = 0
	MidEggsCollected = 0
	LargeEggsCollected = 0

func setEggsCollected (base = 0, mid = 0, large = 0):
	BaseEggsCollected += base
	MidEggsCollected += mid
	LargeEggsCollected += large
