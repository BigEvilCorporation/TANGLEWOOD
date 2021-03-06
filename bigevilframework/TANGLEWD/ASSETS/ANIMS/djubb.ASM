; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   **AUTOGENERATED WITH BEEHIVE** - the complete art tool for SEGA Mega Drive
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   http://www.bigevilcorporation.co.uk
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   Beehive and SEGA Genesis Framework (c) Matt Phillips 2015
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==


spriteanims_djubb:

actor_djubb_sheet_bite_anim_bite:
actor_djubb_sheet_bite_anim_bite_numframes: equ 0x5
actor_djubb_sheet_bite_anim_bite_speed: equ 0x33
actor_djubb_sheet_bite_anim_bite_track_frames:
	dc.l actor_djubb_sheet_bite_frame_0_header
	dc.l actor_djubb_sheet_bite_frame_1_header
	dc.l actor_djubb_sheet_bite_frame_2_header
	dc.l actor_djubb_sheet_bite_frame_3_header
	dc.l actor_djubb_sheet_bite_frame_0_header

	Even
actor_djubb_sheet_bite_anim_bite_track_posx:
	dc.b 0x00, 0x04, 0x08, 0x04, 0x00
	Even
actor_djubb_sheet_bite_anim_bite_track_posy:
	dc.b 0x00, 0x00, 0x00, 0x00, 0x00
	Even
actor_djubb_sheet_bite_anim_bite_track_sfx:
	dc.l SFX_DjubbAttack, 0x0, 0x0, 0x0, 0x0
	Even

actor_djubb_sheet_idle_anim_idle:
actor_djubb_sheet_idle_anim_idle_numframes: equ 0x4
actor_djubb_sheet_idle_anim_idle_speed: equ 0xF
actor_djubb_sheet_idle_anim_idle_track_frames:
	dc.l actor_djubb_sheet_idle_frame_0_header
	dc.l actor_djubb_sheet_idle_frame_1_header
	dc.l actor_djubb_sheet_idle_frame_2_header
	dc.l actor_djubb_sheet_idle_frame_3_header

	Even
actor_djubb_sheet_idle_anim_idle_track_posx equ 0
actor_djubb_sheet_idle_anim_idle_track_posy equ 0
actor_djubb_sheet_idle_anim_idle_track_sfx equ 0

actor_djubb_sheet_swim_anim_swim:
actor_djubb_sheet_swim_anim_swim_numframes: equ 0x4
actor_djubb_sheet_swim_anim_swim_speed: equ 0x4C
actor_djubb_sheet_swim_anim_swim_track_frames:
	dc.l actor_djubb_sheet_swim_frame_0_header
	dc.l actor_djubb_sheet_swim_frame_1_header
	dc.l actor_djubb_sheet_swim_frame_2_header
	dc.l actor_djubb_sheet_swim_frame_3_header

	Even
actor_djubb_sheet_swim_anim_swim_track_posx equ 0
actor_djubb_sheet_swim_anim_swim_track_posy equ 0
actor_djubb_sheet_swim_anim_swim_track_sfx:
	dc.l 0x0, 0x0, 0x0, 0x0
	Even

actor_djubb_sheet_death_anim_death:
actor_djubb_sheet_death_anim_death_numframes: equ 0x3
actor_djubb_sheet_death_anim_death_speed: equ 0xA
actor_djubb_sheet_death_anim_death_track_frames:
	dc.l actor_djubb_sheet_death_frame_0_header
	dc.l actor_djubb_sheet_death_frame_1_header
	dc.l actor_djubb_sheet_death_frame_2_header

	Even
actor_djubb_sheet_death_anim_death_track_posx equ 0
actor_djubb_sheet_death_anim_death_track_posy equ 0
actor_djubb_sheet_death_anim_death_track_sfx equ 0

