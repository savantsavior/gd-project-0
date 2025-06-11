class_name VisualsClass extends Node2D #Something wrong with this

var ScreenFade
var ImageArray = []

var ScreenIsDirty = true

func LoadAllImages():
	ScreenFade = Sprite2D.new()
	ScreenFade.texture = load("res://assets/images/BG_Black.png")
	add_child(ScreenFade)
	ScreenFade.global_position = Vector2(1280.0/2.0, 720.0/2.0)
	ScreenFade.self_modulate.a = 0.0

	ImageArray.resize(500)

	for index in range(0, 1):
		ImageArray[index] = Sprite2D.new()

		if index == 0:
			ImageArray[index].texture = load("res://assets/images/BG_Brick_Wall.png")
			add_child(ImageArray[index])
			ImageArray[index].global_position = Vector2(1280.0/2.0, 720.0/2.0)
			ImageArray[index].self_modulate.a = 0.0

func DrawImageOnScreen(index, scrX, scrY):
	ImageArray[index].self_modulate.a = 1.0
	ImageArray[index].global_position = Vector2(scrX, scrY)
	print("DrawImageOnScreen self_modulate.a = ",ImageArray[index].self_modulate.a)
	print("DrawImageOnScreen global_position = ",ImageArray[index].global_position)

	print(ImageArray[index])
	print(ImageArray[index].texture)
	print(ImageArray[index].self_modulate)
