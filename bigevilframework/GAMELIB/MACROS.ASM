;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   SEGA Genesis Framework (c) Matt Phillips 2016
;==============================================================
;   macros.asm - Utility macros
;==============================================================

ENTITY_GETBYNAME: macro typename,name,addrreg
	move.l (EntityPoolStart_\typename), \addrreg
	addi.l #(\name\_idx*\typename\_Struct_Size), \addrreg
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

ENTITY_GETDRAWPOSVEC2: macro destreg,tmpreg1,tmpreg2,addrreg
	move.w Entity_WorldPosX(\addrreg), \destreg			; Top word = integer part
	add.w  SpriteObj_DrawOffsetX(\addrreg), \destreg	; Apply draw offset (animation, etc)
	move.w (WorldScrollX), \tmpreg1						; Get camera pos X (incl. camera shake + peek offset)
														; Top word = integer part
	sub.w  \tmpreg1, \destreg							; Apply camera pos

	move.w Entity_WorldPosY(\addrreg), \tmpreg2			; Top word = integer part
	add.w  SpriteObj_DrawOffsetY(\addrreg), \tmpreg2	; Apply draw offset (animation, etc)
	move.w (WorldScrollY), \tmpreg1						; Get camera Y (incl. camera shake + peek offset)
														; Top word = integer part
	sub.w  \tmpreg1, \tmpreg2							; Apply camera pos

	swap   \destreg
	move.w \tmpreg2, \destreg
	endm
	
ENTITY_GETCENTREVEC2: macro destreg,tmpreg,addrreg
	clr.l   \destreg
	clr.l   \tmpreg
	move.w  Entity_Width(\addrreg), \destreg	; Get width/height in pixels
	move.w  Entity_Height(\addrreg), \tmpreg
	lsr.w   #0x1, \destreg						; div/2
	lsr.w   #0x1, \tmpreg
	add.w   Entity_WorldPosX(\addrreg), \destreg; Add world pos	; Top word = integer part
	add.w   Entity_WorldPosY(\addrreg), \tmpreg
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
	move.w Entity_WorldPosX(\addrreg), \topleftreg	; X (top word = integer part)
	move.w \topleftreg, \bottomrightreg				; Copy for max
	swap   \topleftreg								; In upper word d1
	
	; Obj 1 max X
	move.w Entity_Width(\addrreg), \tempreg			; Width
	add.w  \tempreg, \bottomrightreg				; Object X max
	swap   \bottomrightreg							; In upper word d2
	
	; Obj 1 min Y
	move.w Entity_WorldPosY(\addrreg), \tempreg		; Y (top word = integer part)
	move.w \tempreg, \bottomrightreg				; Copy for max
	move.w \tempreg, \topleftreg					; In lower word d1
	
	; Obj 1 max Y
	move.w Entity_Height(\addrreg), \tempreg		; Height
	add.w  \tempreg, \bottomrightreg				; Object Y max
	endm

;==============================================================

CAMERA_GETSCREENBOUNDS: macro topleftreg,bottomrightreg,tempreg
	; Left/right
	move.w (CameraWorldPosX), \topleftreg			; X centre (top word = integer part)
	move.w \topleftreg, \bottomrightreg
	sub.w  #(screen_width/2), \topleftreg			; Left border
	add.w  #(screen_width/2), \bottomrightreg		; Right border

	add.w  #vdp_sprite_border_x, \topleftreg
	add.w  #vdp_sprite_border_x, \bottomrightreg

	swap   \topleftreg								; X to upper word
	swap   \bottomrightreg
	
	; Top/bottom
	move.w (CameraWorldPosY), \tempreg				; Y centre (top word = integer part)
	move.w \tempreg, \topleftreg
	move.w \tempreg, \bottomrightreg
	sub.w  #(screen_height/2), \topleftreg			; Top border
	add.w  #(screen_height/2), \bottomrightreg		; Bottom border

	add.w  #vdp_sprite_border_y, \topleftreg
	add.w  #vdp_sprite_border_y, \bottomrightreg

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
	POPM   d0-d5/a0-a2
	endm

	; Load sprite from shared VRAM
SPRITE_LOAD_SHARED: macro spritesheet,palette,prio
	PUSHM  d0-d5/a0-a2
	cmp.w  #0x0, SharedVRAM_\spritesheet
	bne    @AlreadyAllocd\@
	SPRITE_LOAD_DEFAULT \spritesheet,\palette,\prio
	move.w SpriteObj_VRAMAddr(a0), SharedVRAM_\spritesheet
	bra    @End\@
	@AlreadyAllocd\@:
	lea    spritesheets_\spritesheet, a1
	lea    sprite_\spritesheet\_subsprite_dimensions_bits, a2
	lea    sprite_\spritesheet\_subsprite_pos_offsets, a3
	lea    sprite_\spritesheet\_numtiles_per_subsprite, a4
	move.w SharedVRAM_\spritesheet, d0
	move.l #sprite_\spritesheet\_size_t, d1
	move.b #sprite_\spritesheet\_size_subsprites, d2
	move.w #sprite_\spritesheet\_widthheight_subsprites, d3
	move.b #\palette, d4
	move.b #\prio, d5
	jsr    SpriteObjLoadShared
	@End\@:
	POPM   d0-d5/a0-a2
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

ANIM_LOAD_MANUALCONTROL: macro sheetname,animname,arrayoffset,index
	PUSHL  a0
	add.l  #\arrayoffset, a0
	add.l  #(Animation_Struct_Size*\index), a0
	move.w #spritesheet_\sheetname\_frameoffset, Animation_FirstFrameOffset(a0)
	move.l #spriteanim_\animname\_track_frames, Animation_AnimTrackSpriteFrame(a0)
	move.l #0x0, Animation_AnimTrackPositionX(a0)
	move.l #0x0, Animation_AnimTrackPositionY(a0)
	move.l #0x0, Animation_AnimTrackSFX(a0)
	move.w #0x0, Animation_Speed(a0)
	move.b #spriteanim_\animname\_numframes, Animation_Length(a0)
	move.b #0x1, Animation_Looping(a0)
	move.b #0x0, Animation_ZeroVelocity(a0)
	move.b #0x0, Animation_NoReplay(a0)
	POPL   a0
	endm
	
;==============================================================

	; Gets min/max collision XY bounds (pixel space) from a PhysicsObj
PHYSICS_GETBOUNDS: macro minreg,maxreg,tmpreg,addrreg
	move.w Entity_WorldPosX(\addrreg), \minreg			; Get X world position (top word = integer part)
	add.w  PhysicsObj_BoundsLeft(\addrreg), \minreg		; Add bounding box X offset
	move.w \minreg, \maxreg								; Copy to right reg
	add.w  PhysicsObj_BoundsWidth(\addrreg), \maxreg	; Add bounding box right
	
	swap   \minreg
	swap   \maxreg
	
	move.w Entity_WorldPosY(\addrreg), \tmpreg			; Get Y world position (top word = integer part)
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
	move.b PhysicsObj_HitWall(\objaddr), d1
	andi.b #PhysicsObjHitWallLeft, d1
	bne    @HitWall\@
	bra    @EndWallTest\@
	@HeadingRight\@:
	move.b PhysicsObj_HitWall(\objaddr), d1
	andi.b #PhysicsObjHitWallRight, d1
	beq    @EndWallTest\@
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
	