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


var example_text = "The night was cold and bruised when I first started down Gallardia Drive... \nIt should have been just down yonder - past the overlook - 
first exit on the right. I know the drive like the back of my hand, the trip never longer than half an hour, but I've been lost for over an hour now. 
Same winding road. Same trees. Same voice and damn song on the radio. 
It's got me locked tight, coiled like a noose around my neck. 
These old stones have been around far longer than my family or anyone else, and they remember everything: 
Spilled blood. Buried corpses. Every sorrow, every sin.
It's like the mountain doesn't want me to leave.
\nSomething's out there. Watching. Waiting."
