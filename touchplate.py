# open GCODE-Template
f = open("Touchplate.gcode", "r")
x = f.read()

# get tool-diameter from user
tool_diameter = input("Geben Sie den Werkzeugdurchmesser in mm an:")

# replace GCODE
tool_radius = float(tool_diameter)/2
x = x.replace("G92 X-10", "G92 X-" + str(tool_radius+10))
x = x.replace("G92 Y-10", "G92 Y-" + str(tool_radius+10))

# save file
file = open("newGCODE.gcode", "w")
file.write(x)
file.close()