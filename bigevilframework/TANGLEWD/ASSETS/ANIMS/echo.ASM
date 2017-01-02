; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   Created with BEEhive - the complete art tool for SEGA Mega Drive
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   http://www.bigevilcorporation.co.uk
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   BEEhive and SEGA Genesis Framework (c) Matt Phillips 2015
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==


spriteanims_echo:

spriteanim_echo_idle:
spriteanim_echo_idle_numframes: equ 0x1
spriteanim_echo_idle_speed: equ 0x1
spriteanim_echo_idle_track_frames:
	dc.b 0x0
spriteanim_echo_idle_track_posx:

spriteanim_echo_idle_track_posy:


	Even

spriteanim_echo_carriedwalk:
spriteanim_echo_carriedwalk_numframes: equ 0x8
spriteanim_echo_carriedwalk_speed: equ 0x20
spriteanim_echo_carriedwalk_track_frames:
	dc.b 0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7
spriteanim_echo_carriedwalk_track_posx:
	dc.b 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
spriteanim_echo_carriedwalk_track_posy:
	dc.b 0xA, 0xA, 0xA, 0xA, 0xA, 0xA, 0xA, 0xA

	Even

