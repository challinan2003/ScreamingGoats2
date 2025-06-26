extends RichTextLabel

func _ready() -> void:
	hide()
	#startgame.emit()
	#scroll_text(example_text)

func _process(delta: float) -> void:
	pass
	#if visible== true:
		#print("yes")

func scroll_text(input_text:String) -> void:
	show()
	visible_characters= 0
	text = input_text
	print(text)
	
	for i in get_parsed_text():
		visible_characters += 1
		await get_tree().create_timer(0.0005).timeout
	
	print("end")
	hide()
	Global.gameStarted = true
	
