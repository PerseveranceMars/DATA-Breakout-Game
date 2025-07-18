extends RichTextEffect
class_name RichTextHover

var bbcode := "hover"

func _process_custom_fx(char_fx):
	
	var speed = char_fx.env.get("speed", 5.0)
	
	var offset := Vector2(0, 0)
	char_fx.offset = offset 
	pass
