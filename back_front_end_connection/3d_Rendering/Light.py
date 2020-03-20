class Light:
	def __init__(self, light_type, name, pos=[0,0,0], intensity = 1):
		self.name = name;
		self.light_type = light_type
		self.pos = pos
		self.intensity = intensity