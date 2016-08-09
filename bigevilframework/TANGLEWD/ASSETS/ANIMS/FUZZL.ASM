; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   Created with BEEhive - the complete art tool for SEGA Mega Drive
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   http://www.bigevilcorporation.co.uk
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   BEEhive and SEGA Genesis Framework (c) Matt Phillips 2015
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==


spriteanims_fuzzl:

spriteanim_fuzzl_sleep:
spriteanim_fuzzl_sleep_numframes: equ 0xA
spriteanim_fuzzl_sleep_speed: equ 0xA
spriteanim_fuzzl_sleep_track_frames:
	dc.b 0x0, 0x0, 0x0, 0x0, 0x1, 0x2, 0x2, 0x2, 0x2, 0x1
spriteanim_fuzzl_sleep_track_posx:

spriteanim_fuzzl_sleep_track_posy:


	Even

spriteanim_fuzzl_roll:
spriteanim_fuzzl_roll_numframes: equ 0x8
spriteanim_fuzzl_roll_speed: equ 0x1
spriteanim_fuzzl_roll_track_frames:
	dc.b 0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7
spriteanim_fuzzl_roll_track_posx:

spriteanim_fuzzl_roll_track_posy:


	Even

spriteanim_fuzzl_eyes:
spriteanim_fuzzl_eyes_numframes: equ 0x9
spriteanim_fuzzl_eyes_speed: equ 0x1
spriteanim_fuzzl_eyes_track_frames:
	dc.b 0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8
spriteanim_fuzzl_eyes_track_posx:

spriteanim_fuzzl_eyes_track_posy:


	Even

spriteanim_fuzzl_idle:
spriteanim_fuzzl_idle_numframes: equ 0x1
spriteanim_fuzzl_idle_speed: equ 0x1
spriteanim_fuzzl_idle_track_frames:
	dc.b 0x0
spriteanim_fuzzl_idle_track_posx:

spriteanim_fuzzl_idle_track_posy:


	Even

