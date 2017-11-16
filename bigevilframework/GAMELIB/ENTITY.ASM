;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2015
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   entity.asm - Basic positional entity
;==============================================================

ENTITY_DEBUG_WORLDGRID equ 0

EntityWorldGridFlag_GridUpdates		equ 0x0	; Object uses world grid for updating
EntityWorldGridFlag_GridRenders		equ 0x1	; Object uses world grid for rendering
EntityWorldGridFlag_InUpdateList	equ 0x2	; Object is in update list
EntityWorldGridFlag_InRenderList	equ 0x3	; Object is in render list

	rsset 0
;-----------------------------
	IFND FINAL
Entity_DebugName        rs.b entity_name_length ; Debug name string
	ENDIF
;-----------------------------
Entity_TypeBits           rs.l 1 ; Entity type bits
;-----------------------------
Entity_UpdateRoutine      rs.l 1 ; Update subroutine address
Entity_RenderRoutine      rs.l 1 ; Render subroutine address
Entity_SerialiseRoutine   rs.l 1 ; Save/load subroutine address
;-----------------------------
	LINKED_LIST_NODE EntityWorldGrid ; Next in world grid linked list
	LINKED_LIST_NODE EntityUpdate ; Next in update linked list
	LINKED_LIST_NODE EntityRender ; Next in render linked list
	LINKED_LIST_NODE EntitySerialise ; Next in serialise linked list
;-----------------------------
Entity_WorldPosX          rs.l 1 ; Position X (world space)
Entity_WorldPosY          rs.l 1 ; Position Y (world space)
Entity_Width              rs.w 1 ; Width (pixels)
Entity_Height             rs.w 1 ; Height(pixels)
Entity_WorldGridIdx       rs.w 1 ; World grid index
Entity_WorldGridFlags     rs.b 1 ; Current state in update/render grid (EntityGridFlag_*)
Entity_Active             rs.b 1 ; Active flag
;-----------------------------
Entity_Struct_Pad         rs.b 2
Entity_Struct_Size        rs.b 0

EntityInit:
	; a0 --- SpriteObj addr
	; a1 --- Level addr
	
	move.l #0x0, Entity_TypeBits(a0)
	move.l #0x0, Entity_UpdateRoutine(a0)
	move.l #0x0, Entity_RenderRoutine(a0)
	move.l #0x0, Entity_SerialiseRoutine(a0)
	move.l #0x0, Entity_WorldPosX(a0)
	move.l #0x0, Entity_WorldPosY(a0)
	move.w #0x0, Entity_Width(a0)
	move.w #0x0, Entity_Height(a0)
	move.w #0x0, Entity_WorldGridIdx(a0)
	move.b #0x0, Entity_Active(a0)

	move.l #0x0, List_EntityUpdate_Next(a0)
	move.l #0x0, List_EntityRender_Next(a0)
	move.l #0x0, List_EntitySerialise_Next(a0)
	
	rts

;==============================================================
; Game object update/render lists
;==============================================================

EntityAddToUpdateList:
	; a0 --- Entity addr
	LIST_APPEND_TAIL EntityUpdate,a0,a3
	rts

EntityAddToRenderList:
	; a0 --- Entity addr
	LIST_APPEND_TAIL EntityRender,a0,a3
	rts
	
EntityAddToSerialiseList:
	; a0 --- Entity addr
	LIST_APPEND_TAIL EntitySerialise,a0,a3
	rts
	
EntityRemoveFromUpdateList:
	; a0 --- Entity addr
	LIST_REMOVE EntityUpdate,a0,a4,a3
	rts
	
EntityRemoveFromRenderList:
	; a0 --- Entity addr
	LIST_REMOVE EntityRender,a0,a4,a3
	rts
	
EntityRemoveFromSerialiseList:
	; a0 --- Entity addr
	LIST_REMOVE EntitySerialise,a0,a4,a3
	rts
	
EntityClearUpdateList:
	LIST_CLEAR EntityUpdate,a4,a3
	rts
	
EntityClearRenderList:
	LIST_CLEAR EntityRender,a4,a3
	rts
	
EntityClearSerialiseList:
	LIST_CLEAR EntitySerialise,a4,a3
	rts

;==============================================================
; World grid
;==============================================================
EntityInitWorldGrid:
	LIST_CLEAR EntityWorldGrid,a4,a3
	move.w #-1, CameraWorldGridIndexTL
	rts
	
EntityAddToWorldGrid:
	; a0 --- Entity address

	; Add to world grid list
	LIST_APPEND_TAIL EntityWorldGrid,a0,a3

	; Set flags
	bset   #EntityWorldGridFlag_GridRenders, Entity_WorldGridFlags(a0)

	; Calculate initial grid index
	jsr    EntityUpdateWorldGridIndex

	rts

EntityUpdateWorldGridIndex:
	; a0 --- Entity address

	; Get original grid index
	move.w Entity_WorldGridIdx(a0), d0

	; Calc new grid index
	moveq  #0x0, d6
	move.b Entity_WorldPosY(a0), d6		; Get Y grid coord (cells are 256x256, so just read pos as byte)
	lsl.w  #0x8, d6						; World grid is 256 cells wide
	move.b Entity_WorldPosX(a0), d6		; Add X offset

	; If index changed
	cmp.w  d0, d6
	beq    @NoChange

	; Set new
	move.w d6, Entity_WorldGridIdx(a0)

	;==============================================================

	; If grid index matches any camera viewport cells
	move.w CameraWorldGridIndexTL, d0
	move.w d0, d5				; Backup for X reset

	; Loop rows
	move.w #worldgrid_viewport_height-1, d1
	@ViewportCellYLp:

	; Loop cols
	move.b d5, d0				; Reset X
	move.w #worldgrid_viewport_width-1, d2
	@ViewportCellXLp:

	cmp.w  d0, d6
	beq    @InView

	addi.b #0x1, d0				; +1 X
	dbra   d2, @ViewportCellXLp

	addi.w #0x0100, d0			; +1 Y
	dbra   d1, @ViewportCellYLp

	bra    @OutOfView

	;==============================================================

	@InView:

	; If no render flag set
	btst   #EntityWorldGridFlag_InRenderList, Entity_WorldGridFlags(a0)
	bne    @NoChange

	; Add entity to render list
	LIST_APPEND_TAIL EntityRender,a0,a3

	; Set render flag
	bset   #EntityWorldGridFlag_InRenderList, Entity_WorldGridFlags(a0)
	
	bra    @End

	; else
	@OutOfView:

	; If render flag set
	btst   #EntityWorldGridFlag_InRenderList, Entity_WorldGridFlags(a0)
	beq    @NoChange
	
	; Remove entity from render list
	LIST_REMOVE EntityRender,a0,a4,a3

	; Clear render flag
	bclr   #EntityWorldGridFlag_InRenderList, Entity_WorldGridFlags(a0)

	@NoChange:
	@End:

	rts

EntityUpdateWorldGrid:

	; Get camera centred on 4x2 grid section
	move.w WorldScrollX, d1
	addi.w #vdp_sprite_border_x, d1
	addi.w #(screen_width/2), d1
	tst.w  d1
	bge    @NoClampY
	move.w #0x0, d1				; Clamp to 0
	@NoClampY:

	move.w WorldScrollY, d0
	addi.w #vdp_sprite_border_y, d0
	addi.w #(screen_height/2), d0
	tst.w  d0
	bge    @NoClampX
	move.w #0x0, d0				; Clamp to 0
	@NoClampX:

	; To grid index
	lsr.w  #0x8, d1									; X / 256 (low byte)
	subi.w #(worldgrid_viewport_height/2)<<8, d0	; Centre viewport X
	subi.b #(worldgrid_viewport_width/2), d1		; Centre viewport Y
	move.b d1, d0									; Y / 256 (top byte)

	IF ENTITY_DEBUG_WORLDGRID
	PUSHALL
	move.l #((8*8)<<16)|(5*8), d1
	jsr    DBG_DrawWord
	move.l List_EntityUpdate_Size, d0
	move.l #((8*8)<<16)|(6*8), d1
	jsr    DBG_DrawWord
	move.l List_EntityRender_Size, d0
	move.l #((8*8)<<16)|(7*8), d1
	jsr    DBG_DrawWord

	move.l (EntityPoolStart_Fuzzl), a0
	moveq  #0x0, d0
	moveq  #0x0, d1
	move.w #0x10, d3
	@RowLp:
	move.w #0x10, d4
	@ColLp:
	PUSHM  d0-d4
	move.w d0, Entity_WorldPosX(a0)
	move.w d1, Entity_WorldPosY(a0)
	CAMERA_GETSCREENBOUNDS d2,d3,d4,d5
	jsr    SpriteObjDraw
	POPM   d0-d4
	addi.w #0x0100, d0
	dbra   d4, @ColLp
	move.w #0x0, d0
	addi.w #0x0100, d1
	dbra   d3, @RowLp
	POPALL
	ENDIF

	; If changed
	cmp.w  CameraWorldGridIndexTL, d0
	beq    @NoChange
	
		; Set new top-left index
		move.w d0, CameraWorldGridIndexTL
		move.w d0, d4

		; For all entities in world grid list
		LIST_GET_HEAD EntityWorldGrid,a0	; Get list head
		@EntityLp:							; For all entities in list
		cmp.l  #0x0, a0
		beq    @ListEnd

			; Get entity grid index
			move.w Entity_WorldGridIdx(a0), d6

			; If grid index matches any camera viewport cells
			move.w d4, d0
			move.w d0, d5				; Backup for X reset

			; Loop rows
			move.w #worldgrid_viewport_height-1, d1
			@ViewportCellYLp:

			; Loop cols
			move.b d5, d0				; Reset X
			move.w #worldgrid_viewport_width-1, d2
			@ViewportCellXLp:

			cmp.w  d0, d6
			beq    @InView

			addi.b #0x1, d0				; +1 X
			dbra   d2, @ViewportCellXLp

			addi.w #0x0100, d0			; +1 Y
			dbra   d1, @ViewportCellYLp

			bra    @OutOfView

			@InView:
				; If no render flag set
				btst   #EntityWorldGridFlag_InRenderList, Entity_WorldGridFlags(a0)
				bne    @NextEntity

				; Add entity to render list
				LIST_APPEND_TAIL EntityRender,a0,a3

				; Set render flag
				bset   #EntityWorldGridFlag_InRenderList, Entity_WorldGridFlags(a0)
				
				bra    @NextEntity

			; else
			@OutOfView:

				; If render flag set
				btst   #EntityWorldGridFlag_InRenderList, Entity_WorldGridFlags(a0)
				beq    @NextEntity
				
				; Remove entity from render list
				LIST_REMOVE EntityRender,a0,a4,a3

				; Clear render flag
				bclr   #EntityWorldGridFlag_InRenderList, Entity_WorldGridFlags(a0)

		@NextEntity:
		LIST_GET_NEXT EntityWorldGrid,a0,a0	; Get next ptr
		bra    @EntityLp					; Loop
		@ListEnd:

	@NoChange:

	rts
	
EntityUpdateAll:
	; a1 --- Level address
	
	IFD DEBUG
	lea Str_Entities, a0
	jsr DBG_Profile_PushScope
	ENDIF

	LIST_GET_HEAD EntityUpdate,a0		; Get list head
	@EntityLp:							; For all entities in list
	cmp.l  #0x0, a0
	beq    @ListEnd
	move.l Entity_UpdateRoutine(a0), a2 ; Get update routine
	jsr    (a2)							; Execute update routine
	LIST_GET_NEXT EntityUpdate,a0,a0	; Get next ptr
	bra    @EntityLp					; Loop
	@ListEnd:

	IFD DEBUG
	jsr DBG_Profile_PopScope
	ENDIF
	
	rts
	
EntityRenderAll:
	; a1 --- Level address

	CAMERA_GETSCREENBOUNDS d2,d3,d4,d5
	
	LIST_GET_HEAD EntityRender,a0		; Get list head
	@EntityLp:							; For all entities in list
	cmp.l  #0x0, a0
	beq    @ListEnd
	move.l Entity_RenderRoutine(a0), a2 ; Get Render routine
	jsr    (a2)							; Execute Render routine
	LIST_GET_NEXT EntityRender,a0,a0	; Get next ptr
	bra    @EntityLp					; Loop
	@ListEnd:
	
	rts

	
EntitySerialiseAll:
	; a1 --- Level address
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	LIST_GET_HEAD EntitySerialise,a0		; Get list head
	@EntityLp:								; For all entities in list
	cmp.l  #0x0, a0
	beq    @ListEnd
	move.l Entity_SerialiseRoutine(a0), a2	; Get Serialise routine
	jsr    (a2)								; Execute Serialise routine
	LIST_GET_NEXT EntitySerialise,a0,a0		; Get next ptr
	bra    @EntityLp						; Loop
	@ListEnd:
	
	rts
	