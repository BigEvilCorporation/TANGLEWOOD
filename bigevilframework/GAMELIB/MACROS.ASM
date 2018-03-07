;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   SEGA Genesis Framework (c) Matt Phillips 2016
;==============================================================
;   macros.asm - Utility macros
;==============================================================

DUMP_CODE_SIZES		equ 0
DUMP_ASSET_SIZES	equ 0

INCLUDE_CODE: macro path
code_start\@:
	include '\path'
code_end\@:
	IF DUMP_CODE_SIZES
	inform 0,"\path\: %d bytes (%dkb)", (code_end\@-code_start\@), (code_end\@-code_start\@)/1024
	ENDIF
	endm

INCLUDE_TEXT_ASSET: macro path
asset_start\@:
	include '\path'
asset_end\@:
	IF DUMP_ASSET_SIZES
	inform 0,"\path\: %d bytes (%dkb)", (asset_end\@-asset_start\@), (asset_end\@-asset_start\@)/1024
	ENDIF
	endm

INCLUDE_BIN_ASSET: macro assetlabel,path
assetlabel\@:
	incbin '\path'
asset_end\@:
	IF DUMP_ASSET_SIZES
	inform 0,"\path\: %d bytes (%dkb)", (asset_end\@-assetlabel\@), (asset_end\@-assetlabel\@)/1024
	ENDIF
	endm

;==============================================================

ENTITY_SERIALISE_CHECK_WRITE: macro
	SAVEL a3
	endm

ENTITY_SERIALISE_CHECK_READ: macro
	PUSHM  a1-a2
	move.l a3, a2
	LOADL  a1
	cmp.l  a1, a2
	beq    @Ok
	RAISE_EXCEPTION *
	@Ok:
	POPM   a1-a2
	endm

ENTITY_SERIALISE_CHECK: macro
	IFND FINAL
	cmp.b #serialise_dir_in, d1
	beq   @Loading\@
	@Saving\@:
	ENTITY_SERIALISE_CHECK_WRITE
	bra  @End\@
	@Loading\@:
	ENTITY_SERIALISE_CHECK_READ
	@End\@:
	ENDIF
	endm

;==============================================================

ENTITY_GETBYNAME: macro typename,name,addrreg
	move.l (EntityPoolStart_\typename), \addrreg
	addi.l #(\name\_idx*\typename\_Struct_Size), \addrreg
	endm

ENTITY_GETCENTREX: macro destreg,addrreg
	moveq #0x0,   \destreg
	move.w  Entity_Width(\addrreg), \destreg
	TOSUBPIXELS \destreg	; To subpixels
	lsr.l   #0x1, \destreg  ; div/2
	add.l   Entity_WorldPosX(\addrreg), \destreg
	endm
	
ENTITY_GETCENTREY: macro destreg,addrreg
	moveq #0x0,   \destreg
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
	moveq #0x0,   \destreg
	moveq #0x0,   \tmpreg
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
	moveq #0x0,   \destreg
	move.w  Entity_Width(\addrreg), \destreg
	TOSUBPIXELS \destreg
	add.l   Entity_WorldPosX(\addrreg), \destreg
	endm
	
ENTITY_GETTOP: macro destreg,addrreg
	move.l   Entity_WorldPosY(\addrreg), \destreg
	endm
	
ENTITY_GETBOTTOM: macro destreg,addrreg
	moveq #0x0,   \destreg
	move.w  Entity_Height(\addrreg), \destreg
	TOSUBPIXELS \destreg
	add.l   Entity_WorldPosY(\addrreg), \destreg
	endm

ENTITY_ALIGNCENTRE: macro destobj,sourceobj,tempreg1,tempreg2
	move.w Entity_WorldPosX(\sourceobj), \tempreg1	; Source obj X
	move.w Entity_Width(\sourceobj), \tempreg2		; Source obj width
	lsr.w  #0x1, \tempreg2							; / 2
	add.w  \tempreg2, \tempreg1						; Add to X
	move.w Entity_Width(\destobj), \tempreg2		; Dest obj width
	lsr.w  #0x1, \tempreg2							; / 2
	sub.w  \tempreg2, \tempreg1						; Sub from X
	move.w \tempreg1, Entity_WorldPosX(\destobj)	; Set new X

	move.w Entity_WorldPosY(\sourceobj), \tempreg1	; Source obj Y
	move.w Entity_Height(\sourceobj), \tempreg2		; Source obj height
	lsr.w  #0x1, \tempreg2							; / 2
	add.w  \tempreg2, \tempreg1						; Add to Y
	move.w Entity_Height(\destobj), \tempreg2		; Dest obj height
	lsr.w  #0x1, \tempreg2							; / 2
	sub.w  \tempreg2, \tempreg1						; Sub from Y
	move.w \tempreg1, Entity_WorldPosY(\destobj)	; Set new Y
	
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

CAMERA_GETSCREENBOUNDS: macro left,right,top,bottom
	move.w WorldScrollX, \left
	move.w \left, \right
	addi.w #vdp_sprite_border_x, \left
	addi.w #vdp_sprite_border_x+screen_width, \right
	move.w WorldScrollY, \top
	move.w \top, \bottom
	addi.w #vdp_sprite_border_y, \top
	addi.w #vdp_sprite_border_y+screen_height, \bottom
	endm

CAMERA_GETSCREENBOUNDS_VEC2: macro topleftreg,bottomrightreg,tempreg
	; Left/right
	move.w (CameraWorldPosX), \topleftreg			; X centre (top word = integer part)
	move.w \topleftreg, \bottomrightreg
	subi.w  #(screen_width/2), \topleftreg			; Left border
	addi.w #(screen_width/2), \bottomrightreg		; Right border

	addi.w #vdp_sprite_border_x, \topleftreg
	addi.w #vdp_sprite_border_x, \bottomrightreg

	swap   \topleftreg								; X to upper word
	swap   \bottomrightreg
	
	; Top/bottom
	move.w (CameraWorldPosY), \tempreg				; Y centre (top word = integer part)
	move.w \tempreg, \topleftreg
	move.w \tempreg, \bottomrightreg
	subi.w  #(screen_height/2), \topleftreg			; Top border
	addi.w #(screen_height/2), \bottomrightreg		; Bottom border

	addi.w #vdp_sprite_border_y, \topleftreg
	addi.w #vdp_sprite_border_y, \bottomrightreg

	endm

;==============================================================

	; Alloc VRAM and load sprite
SPRITE_LOAD_DEFAULT: macro actor,sheet,palette,paletteidx,prio
	PUSHM  d0-d5/a0-a2
	move.w #actor_\actor\_VRAM_size_b, d0
	jsr    VRAM_PoolAlloc
	lea    actor_\actor\_sheet_\sheet\_frame_0, a1
	lea    actor_\actor\_sheet_\sheet\_frame_0_subsprite_dimensions_bits, a2
	lea    actor_\actor\_sheet_\sheet\_frame_0_subsprite_pos_offsets, a3
	move.l #actor_\actor\_sheet_\sheet\_frame_0_size_t, d1
	move.b #actor_\actor\_sheet_\sheet\_frame_0_size_subsprites, d2
	move.b #\paletteidx, d4
	move.b #\prio, d5
	move.l #\palette, a5
	jsr    SpriteObjLoad
	POPM   d0-d5/a0-a2
	endm

	; Load sprite from shared VRAM
SPRITE_LOAD_SHARED: macro actor,sheet,palette,paletteidx,prio
	PUSHM  d0-d5/a0-a2
	tst.w  SharedVRAM_\actor
	bne    @AlreadyAllocd\@
	SPRITE_LOAD_DEFAULT \actor,\sheet,\palette,\paletteidx,\prio
	move.w SpriteObj_VRAMAddr(a0), SharedVRAM_\actor
	bra    @End\@
	@AlreadyAllocd\@:
	lea    actor_\actor\_sheet_\sheet\_frame_0, a1
	lea    actor_\actor\_sheet_\sheet\_frame_0_subsprite_dimensions_bits, a2
	lea    actor_\actor\_sheet_\sheet\_frame_0_subsprite_pos_offsets, a3
	move.w SharedVRAM_\actor, d0
	move.l #actor_\actor\_sheet_\sheet\_frame_0_size_t, d1
	move.b #actor_\actor\_sheet_\sheet\_frame_0_size_subsprites, d2
	move.b #\paletteidx, d4
	move.b #\prio, d5
	move.l #\palette, a5
	jsr    SpriteObjLoadShared
	@End\@:
	POPM   d0-d5/a0-a2
	endm

	; Use sprite sharing VRAM from existing object (doesn't load tiles)
SPRITE_LOAD_COPY: macro actor,sheet,palette,paletteidx,prio,sourceobjreg
	PUSHM  d0-d5/a0-a2
	move.w SpriteObj_VRAMAddr(\sourceobjreg), d0
	lea    actor_\actor\_sheet_\sheet\_frame_0, a1
	lea    actor_\actor\_sheet_\sheet\_frame_0_subsprite_dimensions_bits, a2
	lea    actor_\actor\_sheet_\sheet\_frame_0_subsprite_pos_offsets, a3
	move.l #actor_\actor\_sheet_\sheet\_frame_0_size_t, d1
	move.b #actor_\actor\_sheet_\sheet\_frame_0_size_subsprites, d2
	move.b #\paletteidx, d4
	move.b #\prio, d5
	move.l #\palette, a5
	jsr    SpriteObjLoadShared
	@End\@:
	POPM   d0-d5/a0-a2
	endm

	; Load sprite taking VRAM from existing object (loads tiles)
SPRITE_LOAD_SHARED_VRAM: macro actor,sheet,palette,paletteidx,prio,sourceobjreg
	PUSHM  d0-d5/a0-a2
	move.w SpriteObj_VRAMAddr(\sourceobjreg), d0
	lea    actor_\actor\_sheet_\sheet\_frame_0, a1
	lea    actor_\actor\_sheet_\sheet\_frame_0_subsprite_dimensions_bits, a2
	lea    actor_\actor\_sheet_\sheet\_frame_0_subsprite_pos_offsets, a3
	move.l #actor_\actor\_sheet_\sheet\_frame_0_size_t, d1
	move.b #actor_\actor\_sheet_\sheet\_frame_0_size_subsprites, d2
	move.b #\paletteidx, d4
	move.b #\prio, d5
	move.l #\palette, a5
	jsr    SpriteObjLoad
	POPM   d0-d5/a0-a2
	endm

ANIM_LOAD_DEFAULT: macro actor,sheet,animname,arrayoffset,index,loop,zerovel,noreplay
	PUSHM  a0/d0
	lea    (\arrayoffset+(Animation_Struct_Size*\index))(a0), a0
	move.l #actor_\actor\_sheet_\sheet\_anim_\animname\_track_frames, Animation_AnimTrackSpriteFrame(a0)
	move.l #actor_\actor\_sheet_\sheet\_anim_\animname\_track_posx, Animation_AnimTrackPositionX(a0)
	move.l #actor_\actor\_sheet_\sheet\_anim_\animname\_track_posy, Animation_AnimTrackPositionY(a0)
	move.l #actor_\actor\_sheet_\sheet\_anim_\animname\_track_sfx, Animation_AnimTrackSFX(a0)
	MOVE_NTSC_W actor_\actor\_sheet_\sheet\_anim_\animname\_speed, Animation_Speed(a0), d0
	move.b #actor_\actor\_sheet_\sheet\_anim_\animname\_numframes, Animation_Length(a0)
	move.b #\loop, Animation_Looping(a0)
	move.b #\zerovel, Animation_ZeroVelocity(a0)
	move.b #\noreplay, Animation_NoReplay(a0)
	POPM   a0/d0
	endm

ANIM_LOAD_MANUALCONTROL: macro actor,sheet,animname,arrayoffset,index
	PUSHL  a0
	lea    (\arrayoffset+(Animation_Struct_Size*\index))(a0), a0
	move.l #actor_\actor\_sheet_\sheet\_anim_\animname\_track_frames, Animation_AnimTrackSpriteFrame(a0)
	move.l #0x0, Animation_AnimTrackPositionX(a0)
	move.l #0x0, Animation_AnimTrackPositionY(a0)
	move.l #0x0, Animation_AnimTrackSFX(a0)
	move.w #0x0, Animation_Speed(a0)
	move.b #actor_\actor\_sheet_\sheet\_anim_\animname\_numframes, Animation_Length(a0)
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

PHYSICS_SHRINKBOUNDS: macro minreg,maxreg,sizereg
	add.w \sizereg,\minreg
	sub.w \sizereg,\maxreg
	swap  \minreg
	swap  \maxreg
	add.w \sizereg,\minreg
	sub.w \sizereg,\maxreg
	swap  \minreg
	swap  \maxreg
	endm
	
;==============================================================

PHYSICS_HITFACINGWALL: macro objaddr
	move.b #0x0, d0
	moveq  #0x0, d1
	move.w PhysicsObj_AccelX(\objaddr), d1
	ext.l  d1
	bne    @UseAccel\@
	move.l PhysicsObj_LastAppliedVelX(\objaddr), d1
	@UseAccel\@:
	tst.l  d1
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
	addq.l #0x1, a3		; Align
    endm
	
	; Save word
SAVEW: macro reg
    move.w \reg, (a3)+
    endm
	
	; Save long
SAVEL: macro reg
    move.l \reg, (a3)+
    endm
	
	; Load byte
LOADB: macro reg
    move.b (a3)+, \reg
	addq.l #0x1, a3		; Align
    endm
	
	; Load word
LOADW: macro reg
    move.w (a3)+, \reg
    endm
	
	; Load long
LOADL: macro reg
    move.l (a3)+, \reg
    endm

;==============================================================

MULU_NTSC_L: macro valuereg,destreg,tempreg
	IF FORCE_PAL_MODE
	move.l \valuereg, d0
	move.l #ntsc_to_pal_linear, d1
	jsr    Muls1616
	move.l d0, \destreg
	ELSEIF FORCE_NTSC_MODE
	move.l \valuereg, \destreg
	ELSE
	move.b hardware_ver_address, \tempreg
	btst   #hardware_ver_bit_pal, \tempreg
	beq    @NTSC\@
	move.l \valuereg, d0
	move.l #ntsc_to_pal_linear, d1
	jsr    Muls1616
	move.l d0, \destreg
	bra    @PAL\@
	@NTSC\@:
	move.l \valuereg, \destreg
	@PAL\@:
	ENDIF
	endm

MOVE_NTSC_L: macro value,dest,tempreg
	IF FORCE_PAL_MODE
	MULS1616_FIXED_L \value,ntsc_to_pal_linear,\dest
	ELSEIF FORCE_NTSC_MODE
	move.l #\value, \dest
	ELSE
	move.b hardware_ver_address, \tempreg
	btst   #hardware_ver_bit_pal, \tempreg
	beq    @NTSC\@
	MULS1616_FIXED_L \value,ntsc_to_pal_linear,\dest
	bra    @PAL\@
	@NTSC\@:
	move.l #\value, \dest
	@PAL\@:
	ENDIF
	endm

MOVE_NTSC_W: macro value,dest,tempreg
	IF FORCE_PAL_MODE
	MULS1616_FIXED_W \value,ntsc_to_pal_linear,\dest
	ELSEIF FORCE_NTSC_MODE
	move.w #\value, \dest
	ELSE
	move.b hardware_ver_address, \tempreg
	btst   #hardware_ver_bit_pal, \tempreg
	beq    @NTSC\@
	MULS1616_FIXED_W \value,ntsc_to_pal_linear,\dest
	bra    @PAL\@
	@NTSC\@:
	move.w #\value, \dest
	@PAL\@:
	ENDIF
	endm

MOVE_NTSC_ACCEL_L: macro value,dest,tempreg
	IF FORCE_PAL_MODE
	MULS1616_FIXED_L \value,ntsc_to_pal_linear_accel,\dest
	ELSEIF FORCE_NTSC_MODE
	move.l #\value, \dest
	ELSE
	move.b hardware_ver_address, \tempreg
	btst   #hardware_ver_bit_pal, \tempreg
	beq    @NTSC\@
	MULS1616_FIXED_L \value,ntsc_to_pal_linear_accel,\dest
	bra    @PAL\@
	@NTSC\@:
	move.l #\value, \dest
	@PAL\@:
	ENDIF
	endm

MOVE_NTSC_ACCEL_W: macro value,dest,tempreg
	IF FORCE_PAL_MODE
	MULS1616_FIXED_W \value,ntsc_to_pal_linear_accel,\dest
	ELSEIF FORCE_NTSC_MODE
	move.w #\value, \dest
	ELSE
	move.b hardware_ver_address, \tempreg
	btst   #hardware_ver_bit_pal, \tempreg
	beq    @NTSC\@
	MULS1616_FIXED_W \value,ntsc_to_pal_linear_accel,\dest
	bra    @PAL\@
	@NTSC\@:
	move.w #\value, \dest
	@PAL\@:
	ENDIF
	endm
