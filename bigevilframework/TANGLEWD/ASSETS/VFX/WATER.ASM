;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================

vfx_spritesheet_water_splash:
	dc.l spritesheets_water							; Tiles base address
	dc.l actor_water_sheet_splash_frame_0_subsprite_dimensions_bits		; Subsprite dimensions array
	dc.l actor_water_sheet_splash_frame_0_subsprite_pos_offsets			; Subsprite pos offsets array
	dc.w ((0x06<<8)|0x07)							; W/H tiles
	dc.w actor_water_VRAM_size_b/size_tile_b	; Size tiles
	dc.b actor_water_sheet_splash_frame_0_size_subsprites				; Size subsprites
	dc.b PaletteId_Fuzzl							; Palette
	dc.b 0x1										; Priority

	even

vfx_spritesheet_water_trail:
	dc.l spritesheets_water							; Tiles base address
	dc.l actor_water_sheet_trail_frame_0_subsprite_dimensions_bits		; Subsprite dimensions array
	dc.l actor_water_sheet_trail_frame_0_subsprite_pos_offsets			; Subsprite pos offsets array
	dc.w ((0x06<<8)|0x04)							; W/H tiles
	dc.w actor_water_VRAM_size_b/size_tile_b	; Size tiles
	dc.b actor_water_sheet_trail_frame_0_size_subsprites				; Size subsprites
	dc.b PaletteId_Fuzzl							; Palette
	dc.b 0x1										; Priority

	even

vfx_animation_water_splash_large:
	dc.l actor_water_sheet_splash_anim_large_track_frames	; Sprite frame track
	dc.l actor_water_sheet_splash_anim_large_track_posx	; Pos X track
	dc.l actor_water_sheet_splash_anim_large_track_posy	; Pos Y track
	dc.l actor_water_sheet_splash_anim_large_track_sfx	; SFX track
	dc.w actor_water_sheet_splash_anim_large_speed		; Speed
	dc.b actor_water_sheet_splash_anim_large_numframes	; Length
	dc.b 0x0										; Looping
	dc.b 0x0										; Zero velocity
	dc.b 0x1										; No speed scale
	dc.b 0x0										; No retrigger

	even

vfx_animation_water_splash_small:
	dc.l actor_water_sheet_splash_anim_small_track_frames	; Sprite frame track
	dc.l actor_water_sheet_splash_anim_small_track_posx	; Pos X track
	dc.l actor_water_sheet_splash_anim_small_track_posy	; Pos Y track
	dc.l actor_water_sheet_splash_anim_small_track_sfx	; SFX track
	dc.w actor_water_sheet_splash_anim_small_speed		; Speed
	dc.b actor_water_sheet_splash_anim_small_numframes	; Length
	dc.b 0x0										; Looping
	dc.b 0x0										; Zero velocity
	dc.b 0x1										; No speed scale
	dc.b 0x0										; No retrigger

	even

vfx_animation_water_splash_tiny:
	dc.l actor_water_sheet_splash_anim_tiny_track_frames	; Sprite frame track
	dc.l actor_water_sheet_splash_anim_tiny_track_posx	; Pos X track
	dc.l actor_water_sheet_splash_anim_tiny_track_posy	; Pos Y track
	dc.l actor_water_sheet_splash_anim_tiny_track_sfx		; SFX track
	dc.w actor_water_sheet_splash_anim_tiny_speed			; Speed
	dc.b actor_water_sheet_splash_anim_tiny_numframes		; Length
	dc.b 0x0										; Looping
	dc.b 0x0										; Zero velocity
	dc.b 0x1										; No speed scale
	dc.b 0x0										; No retrigger

	even

vfx_animation_water_trail:
	dc.l actor_water_sheet_trail_anim_trail_track_frames	; Sprite frame track
	dc.l actor_water_sheet_trail_anim_trail_track_posx	; Pos X track
	dc.l actor_water_sheet_trail_anim_trail_track_posy	; Pos Y track
	dc.l actor_water_sheet_trail_anim_trail_track_sfx	; SFX track
	dc.w actor_water_sheet_trail_anim_trail_speed		; Speed
	dc.b actor_water_sheet_trail_anim_trail_numframes	; Length
	dc.b 0x1										; Looping
	dc.b 0x0										; Zero velocity
	dc.b 0x1										; No speed scale
	dc.b 0x0										; No retrigger

	even