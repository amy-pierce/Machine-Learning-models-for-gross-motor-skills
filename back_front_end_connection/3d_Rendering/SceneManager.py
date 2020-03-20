from Viewport import Viewport
from Mesh import Mesh
import pickle
import pygame
motion = pickle.load(open("tensor.pickle", "rb"))

v = Viewport(disable_mouse=True, w=700, h=600)

v.add_object(Mesh(name="cube", primitive_type="cube", pos=[0, 0, -5], color=(0,0,255), segments=10))
v.add_object(Mesh(name="cube", primitive_type="cube", pos=[2.5, 0, -5], color=(0,255,0), segments=10))
v.add_object(Mesh(name="cube", primitive_type="cube", pos=[-2.5, 0, -5], color=(255,0,0), segments=10))
#v.add_object(Mesh(name="Sphere4", primitive_type="uvsphere", pos=[3, 0, 0], segments=10))
#v.add_object(Mesh(namew="Sphere8", primitive_type="uvsphere", pos=[0, 0, 0], segments=8))
#v.add_object(Mesh(name="Sphere12", primitive_type="uvsphere", pos=[-3, 0, 0], segments=12))
#v.add_object(Mesh(name="Sphere16", primitive_type="uvsphere", pos=[-6, 0, 0], segments=16))
#v.add_object(Mesh(name="Sphere32", primitive_type="uvsphere", pos=[0, 0, -2], segments=32))

while True:
	v.update(draw_f=True, draw_e=True, draw_v=True)
