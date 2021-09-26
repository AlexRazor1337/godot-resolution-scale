extends ViewportContainer

export(float) var scale = 1.0;
onready var root = get_tree().get_root()
onready var viewport = self.get_child(0)

func _ready():
	change_scale(scale)
	root.connect("size_changed", self, "_on_window_resize")


func _on_window_resize():
	viewport.size = root.get_viewport().size * scale


func _change_size(size: Vector2):
	viewport.size = size


func change_scale(new_scale: float): # intended to be from 0 to 1, but can also be used for supersampling
	scale = new_scale
	var viewport_rect_size = get_viewport_rect().size
	_change_size(Vector2(viewport_rect_size.x * scale, viewport_rect_size.y * scale)) 
