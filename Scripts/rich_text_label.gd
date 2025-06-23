extends RichTextLabel


var example_text = "[center]This is some example text \nAnd this is a new line[/center]"

func _ready() -> void:
	scroll_text(example_text)
	
func scroll_text(input_text:String) -> void:
	visible_characters= 0
	text = input_text
	
	for i in get_parsed_text():
		visible_characters += 1
		await get_tree().create_timer(0.1).timeout
