; Smamoda Touchplate-GCode v2

G92 X0 Y0 Z0 ; set current position as 0,0,0
G21 ; use millimeters

; Touch off Z
G38.2 Z-20 F300 ; move in -z direction a max of 20mm, stop when Z_MIN activates
G92 Z10 ; Set Z to thickness of touch plate (10mm in my case)
G0 Z15	F300 ; raise 5mm

; Touch off X
G0 X-50	F1500 ; move over
G38.3 Z5 ; move 5mm below touch plate surface
G38.2 X50 F300 ; move in +x direction a max of 50mm, stop when Z_MIN activates
G92 X-10 ; set current position to touch plate X offset (-10mm in my case - 0,5 * tool diameter)
G0 X-15 F1500 ; back off from the touch plate
G0 Z15	F300 ; move up Z

; Touch off Y
G0 X20 Y-50 F1500 ; move over
G38.3 Z5 ; move 5mm below touch plate surface
G38.2 Y50 F300 ; move in +y direction a max of 50mm, stop when Z_MIN activates
G92 Y-10 ; set current position to touch plate Y offset (-10mm in my case - 0,5 * tool diameter)
G0 Y-15 F1500 ; back away from the plate
G0 Z15 F300 ; move to Z origin+5

G0 X0 Y0 Z25 F1500

; remove Touchplate
M300 P500
M00 			; pause for LCD button press
G0 Z0 F300 		; move to XY origin