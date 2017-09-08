;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================

vfx_spritesheet_bolt_flash:
	dc.l spritesheet_bolt_flash						; Tiles base address
	dc.l sprite_bolt_subsprite_dimensions_bits		; Subsprite dimensions array
	dc.l sprite_bolt_subsprite_pos_offsets			; Subsprite pos offsets array
	dc.l sprite_bolt_numtiles_per_subsprite			; Subsprite numtiles array
	dc.w ((0x04<<8)|0x04)							; W/H tiles
	dc.w sprite_bolt_widthheight_subsprites			; W/H subsprites
	dc.w sprite_bolt_size_t							; Size tiles
	dc.b sprite_bolt_size_subsprites				; Size subsprites
	dc.b PaletteId_World0							; Palette
	dc.b 0x1										; Priority

	even

vfx_animation_bolt_flash:
	dc.l spriteanim_bolt_flash_track_frames			; Sprite frame track
	dc.l spriteanim_bolt_flash_track_posx			; Pos X track
	dc.l spriteanim_bolt_flash_track_posy			; Pos Y track
	dc.l spriteanim_bolt_flash_track_sfx			; SFX track
	dc.w spritesheet_bolt_flash_frameoffset			; First frame offset
	dc.w spriteanim_bolt_flash_speed				; Speed
	dc.b spriteanim_bolt_flash_numframes			; Length
	dc.b 0x0										; Looping
	dc.b 0x0										; Zero velocity
	dc.b 0x1										; No speed scale
	dc.b 0x0										; No retrigger

	even