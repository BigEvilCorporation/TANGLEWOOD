;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================

vfx_spritesheet_rain_light:
	dc.l spritesheet_rain_light						; Tiles base address
	dc.l actor_rain_sheet_light_frame_0_subsprite_dimensions_bits		; Subsprite dimensions array
	dc.l actor_rain_sheet_light_frame_0_subsprite_pos_offsets			; Subsprite pos offsets array
	dc.w ((0x04<<8)|0x04)							; W/H tiles
	dc.w actor_rain_VRAM_size_b/size_tile_b				; Size tiles
	dc.b actor_rain_sheet_light_frame_0_size_subsprites				; Size subsprites
	dc.b PaletteId_World0							; Palette
	dc.b 0x1										; Priority

	even

vfx_animation_rain_light:
	dc.l actor_rain_sheet_light_anim_fall_track_frames			; Sprite frame track
	dc.l actor_rain_sheet_light_anim_fall_track_posx			; Pos X track
	dc.l actor_rain_sheet_light_anim_fall_track_posy			; Pos Y track
	dc.l actor_rain_sheet_light_anim_fall_track_sfx				; SFX track
	dc.w 0x0										; Speed
	dc.b actor_rain_sheet_light_anim_fall_numframes				; Length
	dc.b 0x0										; Looping
	dc.b 0x0										; Zero velocity
	dc.b 0x1										; No speed scale
	dc.b 0x0										; No retrigger

	even