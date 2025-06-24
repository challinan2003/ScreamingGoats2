extends Control

@onready var text: RichTextLabel = %RichTextLabel

var introstart = false
func _ready() -> void:
	get_tree().paused = true
	hide()
	pass
	
func _process(delta: float) -> void:
	if get_tree().paused && visible == true:
		show()
		#print("testtt")
		if introstart == false:
			text.scroll_text(example_text)
			introstart = true
		if text.visible == false && introstart == true:
			hide()
			get_tree().paused = false


var example_text = "The night was cold and bruised when I first started down the road. Gallardia Drive... \nit should have been just down yonder - past the overlook - 
\nfirst exit on the right. It shouldn't have been more than a half an hour drive, but I've been on the road for over 3 hours now. Same winding road. Same
trees. Same voice and damn song on the radio. It's got me locked tight, coiled like a noose around my neck. These old stones have been 
around far longer than my family or anyone else, and they remember everything. Spilled blood. Buried corpses. Every sorrow, every sin.
It's like the mountain doesn't want me to leave.
Something's out there. Watching. Waiting."
