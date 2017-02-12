;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   rope.asm - Rope segment for lift/hoist
;==============================================================

; Constants
Rope_MaxEntities		equ 0x8
Rope_Width				equ 0x20
Rope_Height				equ 0x20

; Animations
RopeSegmentAnimIdx_Swing	equ 0
; -------------------------------
RopeSegmentAnimIdx_Max		equ 1

; Structs
	rsset (AnimObj_Struct_Size)
;---------------------------------
RopeSegment_Animations	   	rs.b (Animation_Struct_Size*RopeSegmentAnimIdx_Max)
RopeSegment_Angle			rs.w 1
;---------------------------------
RopeSegment_Struct_Pad		rs.b 2   ; Alignment padding
RopeSegment_Struct_Size		rs.b 0
;---------------------------------

;==============================================================

RopeSegmentInit:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Base init
	jsr    AnimObjInit
	
	; Set type
	ori.l  #entity_type_rope, Entity_TypeBits(a0)
	addi.w #0x1, EntityCount_Rope
	
	; Set update and render routines
	move.l #AnimObjUpdate, Entity_UpdateRoutine(a0)
	move.l #AnimObjDraw, Entity_RenderRoutine(a0)
	
	; Add to update and render lists
	jsr    EntityAddToUpdateList
	jsr    EntityAddToRenderList
	
	; Default state
	move.b #0x1, Entity_Active(a0)
	move.b #0x1, SpriteObj_Visible(a0)
	move.w #Rope_Width, Entity_Width(a0)
	move.w #Rope_Height, Entity_Height(a0)
	
	; Setup animation
	move.l a0, a2
	add.l  #RopeSegment_Animations, a2

	; Default swing
	move.l a2, a3
	add.l  #(Animation_Struct_Size*RopeSegmentAnimIdx_Swing), a3
	move.w #spritesheet_rope_rope_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_rope_swing_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #0x0, Animation_Speed(a3)
	move.b #spriteanim_rope_swing_numframes, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)
	
	; Set default swing anim
	PUSHL  a1
	move.l a3, a1
	jsr    AnimObjSetAnimation
	POPL   a1

	rts
	
RopeSegmentLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	PUSHL  a1

	; Alloc VRAM
	move.w #sprite_rope_size_b, d0
	jsr    VRAM_PoolAlloc
	
	; Load sprite
	lea    spritesheets_Rope, a1
	lea    sprite_Rope_subsprite_dimensions_bits, a2
	lea    sprite_Rope_subsprite_pos_offsets, a3
	lea    sprite_Rope_numtiles_per_subsprite, a4
	move.l #sprite_Rope_size_t, d1
	move.b #sprite_Rope_size_subsprites, d2
	move.w #sprite_Rope_widthheight_subsprites, d3
	move.b #PaletteId_World0, d4
	jsr    SpriteObjLoad

	POPL   a1
	
	rts
