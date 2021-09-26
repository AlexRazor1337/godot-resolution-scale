extends HSlider


func on_scale_changed(value):
	var viewport_contaner = get_node("../../ResolutionScaling")
	viewport_contaner.change_scale(value / 100)
