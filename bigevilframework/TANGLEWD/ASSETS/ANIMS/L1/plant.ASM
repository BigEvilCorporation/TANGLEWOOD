; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   Created with BEEhive - the complete art tool for SEGA Mega Drive
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   http://www.bigevilcorporation.co.uk
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   BEEhive and SEGA Genesis Framework (c) Matt Phillips 2015
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==


spriteanims_plant:

spriteanim_plant_idle:
spriteanim_plant_idle_numframes: equ 0x1
spriteanim_plant_idle_speed: equ 0x1
spriteanim_plant_idle_track_frames:
	dc.b 0x0
spriteanim_plant_idle_track_posx:

spriteanim_plant_idle_track_posy:


	Even
spriteanim_plant_active:
spriteanim_plant_active_numframes: equ 0x3
spriteanim_plant_active_speed: equ 0x78
spriteanim_plant_active_track_frames:
	dc.b 0x0, 0x1, 0x2
spriteanim_plant_active_track_posx:

spriteanim_plant_active_track_posy:


	Even

