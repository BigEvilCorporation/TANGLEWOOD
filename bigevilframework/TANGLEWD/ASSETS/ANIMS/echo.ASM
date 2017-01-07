; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   Created with BEEhive - the complete art tool for SEGA Mega Drive
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   http://www.bigevilcorporation.co.uk
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   BEEhive and SEGA Genesis Framework (c) Matt Phillips 2015
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==


spriteanims_echo:

spriteanim_echo_mountnymn:
spriteanim_echo_mountnymn_numframes: equ 0x6
spriteanim_echo_mountnymn_speed: equ 0x28
spriteanim_echo_mountnymn_track_frames:
	dc.b 0x0, 0x1, 0x2, 0x3, 0x4, 0x5
spriteanim_echo_mountnymn_track_posx:
	dc.b 0xFFFFFFF8, 0xFFFFFFF8, 0x0, 0x0, 0x0, 0x0
spriteanim_echo_mountnymn_track_posy:
	dc.b 0x10, 0x10, 0x8, 0x8, 0x8, 0x8

	Even

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

spriteanim_echo_carriedidle:
spriteanim_echo_carriedidle_numframes: equ 0x1
spriteanim_echo_carriedidle_speed: equ 0x1
spriteanim_echo_carriedidle_track_frames:
	dc.b 0x0
spriteanim_echo_carriedidle_track_posx:
	dc.b 0x0
spriteanim_echo_carriedidle_track_posy:
	dc.b 0xA

	Even

spriteanim_echo_jumptonymn:
spriteanim_echo_jumptonymn_numframes: equ 0x8
spriteanim_echo_jumptonymn_speed: equ 0x40
spriteanim_echo_jumptonymn_track_frames:
	dc.b 0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7
spriteanim_echo_jumptonymn_track_posx:
	dc.b 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
spriteanim_echo_jumptonymn_track_posy:
	dc.b 0x4, 0x8, 0x10, 0x18, 0x20, 0x22, 0x20, 0x18

	Even
spriteanim_echo_jump:
spriteanim_echo_jump_numframes: equ 0x8
spriteanim_echo_jump_speed: equ 0x40
spriteanim_echo_jump_track_frames:
	dc.b 0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7
spriteanim_echo_jump_track_posx:

spriteanim_echo_jump_track_posy:


	Even

