extends ViewportContainer


func _ready():
	get_tree().get_root().connect("size_changed", self, "on_window_resize")


func on_window_resize():
	self.set_size(get_viewport_rect().size)


func change_size(size: Vector2):
	self.get_child(0).size = size


func change_scale(scale: float): # from 0 to 1, but can also be used for supersampling
	change_size(Vector2(get_viewport_rect().size.x * scale, get_viewport_rect().size.y * scale)) 
