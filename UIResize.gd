extends Control

func _ready():
	get_tree().get_root().connect("size_changed", self, "on_window_resize")

func on_window_resize():
	self.set_size(get_viewport_rect().size)
