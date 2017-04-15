;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================

vfx_spritesheet_water_splash:
	dc.l spritesheets_water							; Tiles base address
	dc.l sprite_water_subsprite_dimensions_bits		; Subsprite dimensions array
	dc.l sprite_water_subsprite_pos_offsets			; Subsprite pos offsets array
	dc.l sprite_water_numtiles_per_subsprite		; Subsprite numtiles array
	dc.w ((0x06<<8)|0x07)							; W/H tiles
	dc.w sprite_water_widthheight_subsprites		; W/H subsprites
	dc.w sprite_water_size_t						; Size tiles
	dc.b sprite_water_size_subsprites				; Size subsprites
	dc.b PaletteId_Fuzzl							; Palette
	dc.b 0x1										; Priority

	even

vfx_animation_water_splash_large:
	dc.l spriteanim_water_splash_large_track_frames	; Sprite frame track
	dc.l spriteanim_water_splash_large_track_posx	; Pos X track
	dc.l spriteanim_water_splash_large_track_posy	; Pos Y track
	dc.l spriteanim_water_splash_large_track_sfx	; SFX track
	dc.w spritesheet_water_splash_frameoffset		; First frame offset
	dc.b spriteanim_water_splash_large_speed		; Speed
	dc.b spriteanim_water_splash_large_numframes	; Length
	dc.b 0x0										; Looping
	dc.b 0x0										; Zero velocity
	dc.b 0x1										; No speed scale

	even