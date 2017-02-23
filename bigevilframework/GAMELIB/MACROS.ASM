;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   SEGA Genesis Framework (c) Matt Phillips 2016
;==============================================================
;   macros.asm - Utility macros
;==============================================================

ENTITY_GETCENTREX: macro destreg,addrreg
	clr.l   \destreg
	move.w  Entity_Width(\addrreg), \destreg
	lsl.l   #0x7, \destreg	; To subpixels + div/2
	add.l   Entity_WorldPosX(\addrreg), \destreg
	endm
	
ENTITY_GETCENTREY: macro destreg,addrreg
	clr.l   \destreg
	move.w  Entity_Height(\addrreg), \destreg
	lsl.l   #0x7, \destreg	; To subpixels + div/2
	add.l   Entity_WorldPosY(\addrreg), \destreg
	endm
	
ENTITY_GETCENTREVEC2: macro destreg,tmpreg,addrreg
	clr.l   \destreg
	clr.l   \tmpreg
	move.w  Entity_Width(\addrreg), \destreg	; Get width/height in pixels
	move.w  Entity_Height(\addrreg), \tmpreg
	lsl.l   #0x7, \destreg						; To subpixels + div/2
	lsl.l   #0x7, \tmpreg
	add.l   Entity_WorldPosX(\addrreg), \destreg; Add world pos
	add.l   Entity_WorldPosY(\addrreg), \tmpreg
	lsr.l   #0x8, \destreg						; To pixels
	lsr.l   #0x8, \tmpreg
	swap    \destreg							; Assemble vector
	move.w  \tmpreg, \destreg
	endm

ENTITY_GETLEFT: macro destreg,addrreg
	move.l   Entity_WorldPosX(\addrreg), \destreg
	endm
	
ENTITY_GETRIGHT: macro destreg,addrreg
	clr.l   \destreg
	move.w  Entity_Width(\addrreg), \destreg
	mulu    #SubpixelsPerPixel, \destreg
	add.l   Entity_WorldPosX(\addrreg), \destreg
	endm
	
ENTITY_GETTOP: macro destreg,addrreg
	move.l   Entity_WorldPosY(\addrreg), \destreg
	endm
	
ENTITY_GETBOTTOM: macro destreg,addrreg
	clr.l   \destreg
	move.w  Entity_Height(\addrreg), \destreg
	mulu    #SubpixelsPerPixel, \destreg
	add.l   Entity_WorldPosY(\addrreg), \destreg
	endm
	
ENTITY_GETBOUNDS: macro topleftreg,bottomrightreg,tempreg,addrreg
	; Obj 1 min X
	move.l Entity_WorldPosX(\addrreg), \topleftreg	; X
	lsr.l  #0x8, \topleftreg						; To screen space
	move.w \topleftreg, \bottomrightreg				; Copy for max
	swap   \topleftreg								; In upper word d1
	
	; Obj 1 max X
	move.w Entity_Width(\addrreg), \tempreg			; Width
	add.w  \tempreg, \bottomrightreg				; Object X max
	swap   \bottomrightreg							; In upper word d2
	
	; Obj 1 min Y
	move.l Entity_WorldPosY(\addrreg), \tempreg		; Y
	lsr.l  #0x8, \tempreg							; To screen space
	move.w \tempreg, \bottomrightreg				; Copy for max
	move.w \tempreg, \topleftreg					; In lower word d1
	
	; Obj 1 max Y
	move.w Entity_Height(\addrreg), \tempreg		; Height
	add.w  \tempreg, \bottomrightreg				; Object Y max
	endm
	
;==============================================================

	; Gets min/max collision XY bounds (pixel space) from a PhysicsObj
PHYSICS_GETBOUNDS: macro minreg,maxreg,tmpreg,addrreg
	move.l Entity_WorldPosX(\addrreg), \minreg			; Get X world position
	lsr.l  #0x8, \minreg								; To pixel space
	add.w  PhysicsObj_BoundsLeft(\addrreg), \minreg		; Add bounding box X offset
	move.w \minreg, \maxreg								; Copy to right reg
	add.w  PhysicsObj_BoundsWidth(\addrreg), \maxreg	; Add bounding box right
	
	swap   \minreg
	swap   \maxreg
	
	move.l Entity_WorldPosY(\addrreg), \tmpreg			; Get Y world position
	lsr.l  #0x8, \tmpreg								; To pixel space
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
	
	; Play SFX non-excusively (won't play if already playing or sound system busy)
PLAYSFX_LOWPRIO: macro sfxAddr
	IFND DEBUG
	PUSHL a0/d0-d1
	jsr   SND_GetSFXBusy
	cmp.b #0x0, d0
	bne   @BUSY\@
	move.b #0x0, d0		; Non-exclusive
	move.l \sfxAddr, a0
	jsr   SND_PlaySFX
	@BUSY\@:
	POPL  a0/d0-d1
	ENDIF
	endm
	
	; Play SFX exclusively (replaces current SFX)
PLAYSFX_HIGHPRIO: macro sfxAddr
	IFND DEBUG
	PUSHL a0/d0-d1
	move.b #0x0, d0		; Non-exclusive
	move.l \sfxAddr, a0
	jsr   SND_PlaySFX
	POPL  a0/d0-d1
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
	