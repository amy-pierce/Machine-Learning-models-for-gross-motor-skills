import math

class Mesh:
	def __init__(self, primitive_type, name="", pos=[0,0,0], verts=[], edges=[], faces=[], face_normals=[], color=(255,255,255), segments = 4):
		self.name = name;
		self.primitive_type = primitive_type
		self.color = color
		if primitive_type == "cube":
			self.verts = [[-1, -1, -1], [1, -1, -1], [1, 1, -1], [-1, 1, -1], [-1, -1, 1], [1, -1, 1], [1, 1, 1], [-1, 1, 1]]
			for n in self.verts:
				n[0] -= pos[0]
				n[1] -= pos[1]
				n[2] -= pos[2]
			self.edges = [(0,1), (3,2), (4,5), (7,6), (0,3), (4,7), (1,2), (5,6), (0,4), (1,5), (2,6), (3,7)]
			self.faces = [(0,1,2,3),(1,0,4,5),(4,5,6,7),(7,6,2,3),(0,4,7,3),(1,2,6,5)]
			self.face_normals = [(0,0,-1),(0,-1,0),(0,0,1),(0,1,0),(-1,0,0),(1,0,0)]
		if primitive_type == "point":
			self.verts = [[0, 0, 0]]
			self.verts[0][0] -= pos[0]
			self.verts[0][1] -= pos[1]
			self.verts[0][2] -= pos[2]
			self.edges = []
			self.faces = []
		if primitive_type == "uvsphere":
			self.verts, self.edges = self.gen_uv_sphere(segments)
			for n in self.verts:
				n[0] -= pos[0]
				n[1] -= pos[1]
				n[2] -= pos[2]
			self.faces = []
		if primitive_type == "cylinder":
			self.verts, self.edges = self.gen_cylinder(segments)
			for n in self.verts:
				n[0] -= pos[0]
				n[1] -= pos[1]
				n[2] -= pos[2]
			self.faces = []
		if primitive_type == "skeleton":
			self.verts = [[0, 3, .2], [0,2.4,.05], [.7, 1.7, 0], [-.7, 1.7, 0], [2.1, 1.5, -.2], [-2.1, 1.5, -.2], [3.4, 1.6, 0], [-3.4, 1.6, 0], [3.7, 1.6, 0], [-3.7, 1.6, 0], [0,1.9,0], [0, 0, 0], [0, -1.9, 0], [.5,-1.9, 0], [-.5, -1.9, 0], [.6, -3.9, 0], [-.6,-3.9,0], [.6, -5.5, 0], [-.6, -5.5, 0]]
			self.edges = [(0, 1), (1, 10), (10, 2), (2, 4), (4, 6), (6, 8), (10, 3), (3, 5), (5, 7), (7, 9), (10, 11), (11, 12), (12, 13), (13, 15), (15, 17), (12, 14), (14, 16), (16, 18)]
			self.faces = []
	def gen_uv_sphere(self, segments):
		verts = []
		edges = []

		verts.append([0,1,0]) #Top Point Vertex

		scale_div = 2 * math.pi / segments
		current_angle = 0
		
		theta_o = 180 /(segments // 2) #theta offset
		theta = 90 - theta_o 

		i = 0
		while theta > -90:
			height = math.sin(math.radians(theta))
			radius = math.cos(math.radians(theta))
			for j in range(segments):
				verts.append([math.sin(current_angle)*radius, height, math.cos(current_angle)*radius])
				current_angle += scale_div
				if j != 0:
					edges.append(((i * segments) + j, (i * segments) + j + 1))
				if j == segments - 1:
					edges.append(((i * segments) + 1, (i * segments) + j + 1))
			theta -= theta_o

			if i == 0:
				for j in range(segments):
					edges.append((0,j + 1))
			elif i != (segments // 2 - 1):
				for j in range(segments):
					edges.append((i*segments + j + 1, i*segments + j - segments + 1))
			i+=1

		verts.append([0,-1,0]) 
		for j in range(segments):
			edges.append((len(verts) - 2 - j, len(verts) - 1));
		return verts, edges

	def gen_cylinder(self, segments):
		verts = []
		edges = []

		scale_div = 2 * math.pi / segments
		current_angle = 0

		for i in range(segments):
			verts.append([math.sin(current_angle), 1, math.cos(current_angle)])
			current_angle += scale_div
			for j in range(segments):
				if j > 0:
					edges.append((j,j-1))
				if j == segments - 1:
					edges.append((0, j))

		current_angle = 0
		for i in range(segments):
			verts.append([math.sin(current_angle), -1, math.cos(current_angle)])
			current_angle += scale_div
			for j in range(segments):
				if j > 0:
					edges.append((segments + j, segments + j-1))
				if j == segments - 1:
					edges.append((segments, segments + j))

		for i in range(segments):
			edges.append((i, i + segments))
		return verts, edge

	def set_skeleton_state(self, jointpos, x_off, y_off, z_off):
		assert (self.primitive_type == "skeleton"), "Cannot call method 'set_skeleton_state' for meshes not of type 'skeleton'."
		jointpos = jointpos[1:]
		for i, joint in enumerate(jointpos):
			self.verts[i][0] = round(joint[0], 3) * .05 - x_off
			self.verts[i][1] = round(joint[1], 3) * -.05 - y_off
			self.verts[i][2] = round(joint[2], 3) * .05 - z_off

		for joint in self.verts:
			joint[0] -= x_off
			joint[1] -= y_off
			joint[2] -= z_off