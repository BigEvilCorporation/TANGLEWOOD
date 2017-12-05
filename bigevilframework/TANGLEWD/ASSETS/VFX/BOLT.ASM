;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================

vfx_spritesheet_bolt_flash:
	dc.l spritesheet_bolt_flash						; Tiles base address
	dc.l actor_bolt_sheet_flash_frame_0_subsprite_dimensions_bits		; Subsprite dimensions array
	dc.l actor_bolt_sheet_flash_frame_0_subsprite_pos_offsets			; Subsprite pos offsets array
	dc.w ((0x04<<8)|0x04)							; W/H tiles
	dc.w actor_bolt_VRAM_size_b/size_tile_b				; Size tiles
	dc.b actor_bolt_sheet_flash_frame_0_size_subsprites				; Size subsprites
	dc.b PaletteId_World0							; Palette
	dc.b 0x1										; Priority

	even

vfx_animation_bolt_flash:
	dc.l actor_bolt_sheet_flash_anim_flash_track_frames			; Sprite frame track
	dc.l actor_bolt_sheet_flash_anim_flash_track_posx			; Pos X track
	dc.l actor_bolt_sheet_flash_anim_flash_track_posy			; Pos Y track
	dc.l actor_bolt_sheet_flash_anim_flash_track_sfx			; SFX track
	dc.w actor_bolt_sheet_flash_anim_flash_speed				; Speed
	dc.b actor_bolt_sheet_flash_anim_flash_numframes			; Length
	dc.b 0x0										; Looping
	dc.b 0x0										; Zero velocity
	dc.b 0x1										; No speed scale
	dc.b 0x0										; No retrigger

	even