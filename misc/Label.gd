extends Label


func _process(delta):
	var text = " RES: " + str(get_node("../../ResolutionScaling").rect_size)
	text += "\n RES: " + str(get_node("../../ResolutionScaling/Viewport").size)
	self.text = text + "\n FPS: " + str(Engine.get_frames_per_second())
