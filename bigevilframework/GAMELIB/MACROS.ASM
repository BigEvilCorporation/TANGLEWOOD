;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   SEGA Genesis Framework (c) Matt Phillips 2016
;==============================================================
;   macros.asm - Utility macros
;==============================================================

ENTITY_GETBYNAME: macro typename,name,addrreg
	move.l #EntityArray_\typename+(\name\_idx*\typename\_Struct_Size), \addrreg
	endm

ENTITY_GETCENTREX: macro destreg,addrreg
	clr.l   \destreg
	move.w  Entity_Width(\addrreg), \destreg
	TOSUBPIXELS \destreg	; To subpixels
	lsr.l   #0x1, \destreg  ; div/2
	add.l   Entity_WorldPosX(\addrreg), \destreg
	endm
	
ENTITY_GETCENTREY: macro destreg,addrreg
	clr.l   \destreg
	move.w  Entity_Height(\addrreg), \destreg
	TOSUBPIXELS \destreg	; To subpixels
	lsr.l   #0x1, \destreg  ; div/2
	add.l   Entity_WorldPosY(\addrreg), \destreg
	endm
	
ENTITY_GETCENTREVEC2: macro destreg,tmpreg,addrreg
	clr.l   \destreg
	clr.l   \tmpreg
	move.w  Entity_Width(\addrreg), \destreg	; Get width/height in pixels
	move.w  Entity_Height(\addrreg), \tmpreg
	TOSUBPIXELS \destreg						; To subpixels
	TOSUBPIXELS \tmpreg
	lsr.l   #0x1, \destreg						; div/2
	lsr.l   #0x1, \tmpreg
	add.l   Entity_WorldPosX(\addrreg), \destreg; Add world pos
	add.l   Entity_WorldPosY(\addrreg), \tmpreg
	TOPIXELS \destreg							; To pixels
	TOPIXELS \tmpreg
	swap    \destreg							; Assemble vector
	move.w  \tmpreg, \destreg
	endm

ENTITY_GETLEFT: macro destreg,addrreg
	move.l   Entity_WorldPosX(\addrreg), \destreg
	endm
	
ENTITY_GETRIGHT: macro destreg,addrreg
	clr.l   \destreg
	move.w  Entity_Width(\addrreg), \destreg
	TOSUBPIXELS \destreg
	add.l   Entity_WorldPosX(\addrreg), \destreg
	endm
	
ENTITY_GETTOP: macro destreg,addrreg
	move.l   Entity_WorldPosY(\addrreg), \destreg
	endm
	
ENTITY_GETBOTTOM: macro destreg,addrreg
	clr.l   \destreg
	move.w  Entity_Height(\addrreg), \destreg
	TOSUBPIXELS \destreg
	add.l   Entity_WorldPosY(\addrreg), \destreg
	endm
	
ENTITY_GETBOUNDS: macro topleftreg,bottomrightreg,tempreg,addrreg
	; Obj 1 min X
	move.l Entity_WorldPosX(\addrreg), \topleftreg	; X
	TOPIXELS \topleftreg							; To screen space
	move.w \topleftreg, \bottomrightreg				; Copy for max
	swap   \topleftreg								; In upper word d1
	
	; Obj 1 max X
	move.w Entity_Width(\addrreg), \tempreg			; Width
	add.w  \tempreg, \bottomrightreg				; Object X max
	swap   \bottomrightreg							; In upper word d2
	
	; Obj 1 min Y
	move.l Entity_WorldPosY(\addrreg), \tempreg		; Y
	TOPIXELS \tempreg								; To screen space
	move.w \tempreg, \bottomrightreg				; Copy for max
	move.w \tempreg, \topleftreg					; In lower word d1
	
	; Obj 1 max Y
	move.w Entity_Height(\addrreg), \tempreg		; Height
	add.w  \tempreg, \bottomrightreg				; Object Y max
	endm

;==============================================================

	; Alloc VRAM and load sprite
SPRITE_LOAD_DEFAULT: macro spritesheet,palette,prio
	PUSHM  d0-d5/a0-a2
	move.w #sprite_\spritesheet\_size_b, d0
	jsr    VRAM_PoolAlloc
	lea    spritesheets_\spritesheet, a1
	lea    sprite_\spritesheet\_subsprite_dimensions_bits, a2
	lea    sprite_\spritesheet\_subsprite_pos_offsets, a3
	lea    sprite_\spritesheet\_numtiles_per_subsprite, a4
	move.l #sprite_\spritesheet\_size_t, d1
	move.b #sprite_\spritesheet\_size_subsprites, d2
	move.w #sprite_\spritesheet\_widthheight_subsprites, d3
	move.b #\palette, d4
	move.b #\prio, d5
	jsr    SpriteObjLoad
	POPL   d0-d5/a0-a2
	endm

ANIM_LOAD_DEFAULT: macro sheetname,animname,arrayoffset,index,loop,zerovel,noreplay
	PUSHL  a0
	add.l  #\arrayoffset, a0
	add.l  #(Animation_Struct_Size*\index), a0
	move.w #spritesheet_\sheetname\_frameoffset, Animation_FirstFrameOffset(a0)
	move.l #spriteanim_\animname\_track_frames, Animation_AnimTrackSpriteFrame(a0)
	move.l #spriteanim_\animname\_track_posx, Animation_AnimTrackPositionX(a0)
	move.l #spriteanim_\animname\_track_posy, Animation_AnimTrackPositionY(a0)
	move.l #spriteanim_\animname\_track_sfx, Animation_AnimTrackSFX(a0)
	move.w #spriteanim_\animname\_speed, Animation_Speed(a0)
	move.b #spriteanim_\animname\_numframes, Animation_Length(a0)
	move.b #\loop, Animation_Looping(a0)
	move.b #\zerovel, Animation_ZeroVelocity(a0)
	move.b #\noreplay, Animation_NoReplay(a0)
	POPL   a0
	endm
	
;==============================================================

	; Gets min/max collision XY bounds (pixel space) from a PhysicsObj
PHYSICS_GETBOUNDS: macro minreg,maxreg,tmpreg,addrreg
	move.l Entity_WorldPosX(\addrreg), \minreg			; Get X world position
	TOPIXELS \minreg									; To pixel space
	add.w  PhysicsObj_BoundsLeft(\addrreg), \minreg		; Add bounding box X offset
	move.w \minreg, \maxreg								; Copy to right reg
	add.w  PhysicsObj_BoundsWidth(\addrreg), \maxreg	; Add bounding box right
	
	swap   \minreg
	swap   \maxreg
	
	move.l Entity_WorldPosY(\addrreg), \tmpreg			; Get Y world position
	TOPIXELS \tmpreg									; To pixel space
	add.w  PhysicsObj_BoundsTop(\addrreg), \tmpreg		; Add bounding box Y offset
	move.w \tmpreg, \minreg								; To Y
	move.w \minreg, \maxreg								; Copy to bottom reg
	add.w  PhysicsObj_BoundsHeight(\addrreg), \maxreg	; Add bounding box bottom
	endm

;==============================================================

PHYSICS_GROWBOUNDS: macro minreg,maxreg,sizereg
	sub.w \sizereg,\minreg
	add.w \sizereg,\maxreg
	swap  \minreg
	swap  \maxreg
	sub.w \sizereg,\minreg
	add.w \sizereg,\maxreg
	swap  \minreg
	swap  \maxreg
	endm
	
;==============================================================

PHYSICS_HITFACINGWALL: macro objaddr
	move.b #0x0, d0
	cmp.w  #0x0, PhysicsObj_AccelX(\objaddr)
	beq    @HeadingNowhere\@
	bgt    @HeadingRight\@
	cmp.b  #PhysicsObjHitWallLeft, PhysicsObj_HitWall(\objaddr)
	beq    @HitWall\@
	bra    @EndWallTest\@
	@HeadingRight\@:
	cmp.b  #PhysicsObjHitWallRight, PhysicsObj_HitWall(\objaddr)
	bne    @EndWallTest\@
	@HitWall\@:
	move.b #0x1, d0
	@HeadingNowhere\@:
	@EndWallTest\@:
	endm
	
	; Play SFX
PLAYSFX: macro sfxAddr
	IFND DEBUG
	PUSHL a0
	move.l \sfxaddr, a0
	jsr   SND_PlaySFX
	POPL  a0
	ENDIF
	endm
	
;==============================================================
	
	; Save byte
SAVEB: macro reg
    move.b \reg, (a3)+
	addi.l #0x3, a3
    endm
	
	; Save word
SAVEW: macro reg
    move.w \reg, (a3)+
	addi.l #0x2, a3
    endm
	
	; Save long
SAVEL: macro reg
    move.l \reg, (a3)+
    endm
	
	; Load byte
LOADB: macro reg
    move.b (a3)+, \reg
	addi.l #0x3, a3
    endm
	
	; Load word
LOADW: macro reg
    move.w (a3)+, \reg
	addi.l #0x2, a3
    endm
	
	; Load long
LOADL: macro reg
    move.l (a3)+, \reg
    endm
	