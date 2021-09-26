extends ViewportContainer

export(float) var scale = 1.0;

func _ready():
	change_scale(scale)
	get_tree().get_root().connect("size_changed", self, "_on_window_resize")


func _on_window_resize():
	self.set_size(get_viewport_rect().size)


func _change_size(size: Vector2):
	self.get_child(0).size = size


func change_scale(new_scale: float): # intended to be from 0 to 1, but can also be used for supersampling
	scale = new_scale
	_change_size(Vector2(get_viewport_rect().size.x * scale, get_viewport_rect().size.y * scale)) 
