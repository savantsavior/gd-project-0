extends Node2D

var initializeClass = InitializeClass.new()
var visualsClass = VisualsClass.new()

func _ready():
	initializeClass.Ready = true
	visualsClass.LoadAllImages()
	set_process(true)
	visualsClass.ScreenIsDirty = true
	
#	add_child(visualsClass.ImageArray[0])

func _process(_delta):
	if initializeClass.Ready == true:
		if (visualsClass.ScreenIsDirty == true):  visualsClass.DrawImageOnScreen(0, 1280.0/2.0, 720.0/2.0)
		visualsClass.ScreenIsDirty = false
