;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2015
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   entity.asm - Basic positional entity
;==============================================================

ENTITY_DEBUG_WORLDGRID_COUNTS equ 0
ENTITY_DEBUG_WORLDGRID_BOUNDS equ 0

EntityWorldGridFlag_GridUpdates		equ 0x0	; Object uses world grid for updating
EntityWorldGridFlag_GridRenders		equ 0x1	; Object uses world grid for rendering
EntityWorldGridFlag_GridPhysics		equ 0x2	; Object uses world grid for physics step
EntityWorldGridFlag_InUpdateList	equ 0x3	; Object is in update list
EntityWorldGridFlag_InRenderList	equ 0x4	; Object is in render list
EntityWorldGridFlag_InPhysicsList	equ 0x5	; Object is in render list
EntityWorldGridFlag_InWorldGrid		equ 0x6	; Object is in world grid list

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
Entity_WorldGridIdxTL     rs.w 1 ; World grid index (top-left corner)
Entity_WorldGridIdxBR     rs.w 1 ; World grid index (bottom-right corner)
Entity_WorldGridFlags     rs.b 1 ; Current state in update/render grid (EntityGridFlag_*)
Entity_WorldGridOrder     rs.b 1 ; Order to insert into world grid, for removal/reinserting
Entity_Active             rs.b 1 ; Active flag
;-----------------------------
	RS_ALIGN
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
	move.w #0x0, Entity_WorldGridIdxTL(a0)
	move.w #0x0, Entity_WorldGridIdxBR(a0)
	move.b #0x0, Entity_WorldGridFlags(a0)
	move.b #0x0, Entity_WorldGridOrder(a0)
	move.b #0x0, Entity_Active(a0)

	move.l #0x0, List_EntityUpdate_Next(a0)
	move.l #0x0, List_EntityRender_Next(a0)
	move.l #0x0, List_EntitySerialise_Next(a0)

	; Set index
	move.b EntityCount, Entity_WorldGridOrder(a0)
	addi.b #0x1, EntityCount
	
	rts

EntitySerialise:
	; a1 --- Level address
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)

	PUSHM d1/a1

	cmp.b #serialise_dir_in, d1
	beq   @Loading
	
	;==============================================================
	
	@Saving:
	
	SAVEL Entity_WorldPosX(a0)
	SAVEL Entity_WorldPosY(a0)
	SAVEW Entity_WorldGridIdxTL(a0)
	SAVEW Entity_WorldGridIdxBR(a0)
	SAVEB Entity_WorldGridOrder(a0)
	SAVEB Entity_WorldGridFlags(a0)
	
	bra  @End
	
	;==============================================================
	
	@Loading:
	
	LOADL Entity_WorldPosX(a0)
	LOADL Entity_WorldPosY(a0)
	LOADW Entity_WorldGridIdxTL(a0)
	LOADW Entity_WorldGridIdxBR(a0)
	LOADB Entity_WorldGridOrder(a0)
	LOADB d0	; World grid flags
	
	PUSHL  a3
	
	; Insert/remove from update list
	PUSHW  d0
	btst   #EntityWorldGridFlag_GridUpdates, d0
	beq    @EndUpdates
	btst   #EntityWorldGridFlag_InUpdateList, d0
	beq    @AddToUpdateList
	jsr    EntityRemoveFromUpdateList
	bra    @EndUpdates
	@AddToUpdateList:
	jsr    EntityAddToUpdateList
	@EndUpdates:
	POPW   d0

	; Insert/remove from render list
	PUSHW  d0
	btst   #EntityWorldGridFlag_GridRenders, d0
	beq    @EndRenders
	btst   #EntityWorldGridFlag_InRenderList, d0
	beq    @AddToRenderList
	jsr    EntityRemoveFromRenderList
	bra    @EndRenders
	@AddToRenderList:
	jsr    EntityAddToRenderList
	@EndRenders:
	POPW   d0

	; Insert/remove from physics list
	PUSHW  d0
	btst   #EntityWorldGridFlag_GridPhysics, d0
	beq    @EndPhysics
	btst   #EntityWorldGridFlag_InPhysicsList, d0
	beq    @AddToPhysicList
	jsr    PhysicsWorldRemoveObject
	bra    @EndPhysics
	@AddToPhysicList:
	jsr    PhysicsWorldAddObject
	@EndPhysics:
	POPW   d0

	; Mask out list flags, keep grid flags
	move.b Entity_WorldGridFlags(a0), d1
	andi.b #(1<<EntityWorldGridFlag_GridUpdates)|(1<<EntityWorldGridFlag_GridRenders)|(1<<EntityWorldGridFlag_GridPhysics), d0
	andi.b #~(1<<EntityWorldGridFlag_GridUpdates)|(1<<EntityWorldGridFlag_GridRenders)|(1<<EntityWorldGridFlag_GridPhysics), d1
	or.b   d1, d0
	move.b d0, Entity_WorldGridFlags(a0)
	
	POPL   a3
	
	;==============================================================
	
	@End:

	POPM  d1/a1

	rts

;==============================================================
; Game object update/render lists
;==============================================================

EntityAddToUpdateList:
	; a0 --- Entity addr

	; Add to update list if not already present
	btst.b #EntityWorldGridFlag_InUpdateList, Entity_WorldGridFlags(a0)
	bne    @InUpdateList
	LIST_APPEND_TAIL EntityUpdate,a0,a3
	bset.b #EntityWorldGridFlag_InUpdateList, Entity_WorldGridFlags(a0)
	@InUpdateList:

	; If in world grid, also set world grid update flag
	btst.b #EntityWorldGridFlag_InWorldGrid, Entity_WorldGridFlags(a0)
	beq    @NotInWorldGrid
	bset.b #EntityWorldGridFlag_GridUpdates, Entity_WorldGridFlags(a0)
	@NotInWorldGrid:

	rts

EntityAddToRenderList:
	; a0 --- Entity addr
	
	; Add to render list if not already present
	btst.b #EntityWorldGridFlag_InRenderList, Entity_WorldGridFlags(a0)
	bne    @InRenderList
	LIST_APPEND_TAIL EntityRender,a0,a3
	bset.b #EntityWorldGridFlag_InRenderList, Entity_WorldGridFlags(a0)
	@InRenderList:

	; If in world grid, also set world grid render flag
	btst.b #EntityWorldGridFlag_InWorldGrid, Entity_WorldGridFlags(a0)
	beq    @NotInWorldGrid
	bset.b #EntityWorldGridFlag_GridRenders, Entity_WorldGridFlags(a0)
	@NotInWorldGrid:

	rts
	
EntityAddToSerialiseList:
	; a0 --- Entity addr
	LIST_APPEND_TAIL EntitySerialise,a0,a3
	rts
	
EntityRemoveFromUpdateList:
	; a0 --- Entity addr

	; Remove from update list if present
	btst.b #EntityWorldGridFlag_InUpdateList, Entity_WorldGridFlags(a0)
	beq    @NotInUpdateList
	LIST_REMOVE EntityUpdate,a0,a4,a3
	bclr.b #EntityWorldGridFlag_InUpdateList, Entity_WorldGridFlags(a0)
	@NotInUpdateList:

	; Remove from world grid updates
	bclr.b #EntityWorldGridFlag_GridUpdates, Entity_WorldGridFlags(a0)

	rts
	
EntityRemoveFromRenderList:
	; a0 --- Entity addr

	; Remove from render list if present
	btst.b #EntityWorldGridFlag_InRenderList, Entity_WorldGridFlags(a0)
	beq    @NotInRenderList
	LIST_REMOVE EntityRender,a0,a4,a3
	bclr.b #EntityWorldGridFlag_InRenderList, Entity_WorldGridFlags(a0)
	@NotInRenderList:

	; Remove from world grid renders
	bclr.b #EntityWorldGridFlag_GridRenders, Entity_WorldGridFlags(a0)

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
	move.b #0x0, EntityCount
	move.w #-1, CameraWorldGridIndexTL
	rts
	
EntityAddToWorldGrid:
	; a0 --- Entity address
	; d0 (b) Flags (EntityWorldGridFlag_Grid*)
	
	btst.b #EntityWorldGridFlag_InWorldGrid, Entity_WorldGridFlags(a0)
	bne    @InWorldGrid

	; Add to world grid list
	LIST_APPEND_TAIL EntityWorldGrid,a0,a3

	@InWorldGrid:

	; Set flags
	bset   #EntityWorldGridFlag_InWorldGrid, d0
	or.b   d0, Entity_WorldGridFlags(a0)

	; Calculate initial grid index
	move.b #0x1, d1
	jsr    EntityUpdateWorldGridIndex

	rts

EntityRemoveFromWorldGrid:
	; a0 --- Entity addr

	; Remove from world grid list if present
	btst.b #EntityWorldGridFlag_InWorldGrid, Entity_WorldGridFlags(a0)
	beq    @NotInWorldGrid
	LIST_REMOVE EntityWorldGrid,a0,a4,a3
	bclr   #EntityWorldGridFlag_InWorldGrid, Entity_WorldGridFlags(a0)
	@NotInWorldGrid:

	rts

EntityUpdateWorldGridIndex:
	; a0 --- Entity address
	; d1 (b) Force check

	; Get original grid indices
	move.w Entity_WorldGridIdxTL(a0), d0
	move.w Entity_WorldGridIdxBR(a0), d2

	; Calc new grid indices
	moveq  #0x0, d6						; Top-left index
	moveq  #0x0, d7						; Bottom-right index
	move.w Entity_WorldPosX(a0), d3		; Get X
	move.w Entity_WorldPosY(a0), d7		; Get Y

	; Top-left index
	move.w d7, d6						; Y grid coord in upper byte (cells are 256x256)
	move.w d3, d4						; X grid coord in upper byte (cells are 256x256)
	lsr.w  #0x8, d4						; X grid coord to lower byte
	move.b d4, d6						; Add X offset

	; Bottom-right index
	add.w  Entity_Height(a0), d7		; Y grid coord in upper byte (cells are 256x256)
	add.w  Entity_Width(a0), d3			; X grid coord in upper byte (cells are 256x256)
	lsr.w  #0x8, d3						; X grid coord to lower byte
	move.b d3, d7						; Add X offset

	; If force check
	tst.b  d1
	bne    @ForceCheck

	; If index changed
	cmp.w  d0, d6						; Top-left
	beq    @Changed
	cmp.w  d2, d7						; Bottom-right
	beq    @NoChange
	@Changed:

	@ForceCheck:

	; Set new indices
	move.w d6, Entity_WorldGridIdxTL(a0)
	move.w d7, Entity_WorldGridIdxBR(a0)

	;==============================================================

	; If grid indices match any camera viewport cells
	move.w CameraWorldGridIndexTL, d0
	move.w d0, d5				; Backup for X reset

	; Loop rows
	move.w #worldgrid_viewport_height-1, d1
	@ViewportCellYLp:

	; Loop cols
	move.b d5, d0				; Reset X
	move.w #worldgrid_viewport_width-1, d2
	@ViewportCellXLp:

	cmp.w  d0, d6				; Check match top-left
	beq    @InView

	cmp.w  d0, d7				; Check match top-right
	beq    @InView

	addi.b #0x1, d0				; +1 X
	dbra   d2, @ViewportCellXLp

	addi.w #0x0100, d0			; +1 Y
	dbra   d1, @ViewportCellYLp

	bra    @OutOfView

	;==============================================================

	@InView:

	; Get flags
	move.b Entity_WorldGridFlags(a0), d0

	; Get order
	move.b Entity_WorldGridOrder(a0), d1

	; Add entity to update list
	btst   #EntityWorldGridFlag_GridUpdates, d0		; If entity uses grid to update
	beq    @EndAddUpdateList
	btst   #EntityWorldGridFlag_InUpdateList, d0	; If not already in update list
	bne    @EndAddUpdateList
	LIST_INSERT_ORDERED EntityUpdate,a0,a3,a4,Entity_WorldGridOrder,d1	; Add to update list
	bset   #EntityWorldGridFlag_InUpdateList, d0	; Set flag
	@EndAddUpdateList:

	; Add entity to render list
	btst   #EntityWorldGridFlag_GridRenders, d0		; If entity uses grid to render
	beq    @EndAddRenderList
	btst   #EntityWorldGridFlag_InRenderList, d0	; If not already in render list
	bne    @EndAddRenderList
	LIST_INSERT_ORDERED EntityRender,a0,a3,a4,Entity_WorldGridOrder,d1	; Add to render list
	bset   #EntityWorldGridFlag_InRenderList, d0	; Set flag
	@EndAddRenderList:

	; Add entity to physics list
	btst   #EntityWorldGridFlag_GridPhysics, d0		; If entity uses grid to step physics
	beq    @EndAddPhysicsList
	btst   #EntityWorldGridFlag_InPhysicsList, d0	; If not already in physics list
	bne    @EndAddPhysicsList
	lea    PhysicsWorld, a3
	LIST_INSERT_ORDERED PhysicsObjs,a0,a3,a4,Entity_WorldGridOrder,d1	; Add to physics list
	bset   #EntityWorldGridFlag_InPhysicsList, d0	; Set flag
	@EndAddPhysicsList:

	; Set flags
	move.b d0, Entity_WorldGridFlags(a0)
	
	bra    @End

	; else
	@OutOfView:

	; Get flags
	move.b Entity_WorldGridFlags(a0), d0

	; Remove entity from Update list
	btst   #EntityWorldGridFlag_GridUpdates, d0		; If entity uses grid to update
	beq    @EndRemoveUpdateList
	btst   #EntityWorldGridFlag_InUpdateList, d0	; If in update list
	beq    @EndRemoveUpdateList
	LIST_REMOVE EntityUpdate,a0,a4,a3				; Remove from update list
	bclr   #EntityWorldGridFlag_InUpdateList, d0	; Clear flag
	@EndRemoveUpdateList:

	; Remove entity from render list
	btst   #EntityWorldGridFlag_GridRenders, d0		; If entity uses grid to render
	beq    @EndRemoveRenderList
	btst   #EntityWorldGridFlag_InRenderList, d0	; If in render list
	beq    @EndRemoveRenderList
	LIST_REMOVE EntityRender,a0,a4,a3				; Remove from render list
	bclr   #EntityWorldGridFlag_InRenderList, d0	; Clear flag
	@EndRemoveRenderList:

	; Remove entity from physics list
	btst   #EntityWorldGridFlag_GridPhysics, d0		; If entity uses grid to step physics
	beq    @EndRemovePhysicsList
	btst   #EntityWorldGridFlag_InPhysicsList, d0	; If in physics list
	beq    @EndRemovePhysicsList
	LIST_REMOVE PhysicsObjs,a0,a2,a4				; Remove from physics list
	bclr   #EntityWorldGridFlag_InPhysicsList, d0	; Clear flag
	@EndRemovePhysicsList:

	; Set flags
	move.b d0, Entity_WorldGridFlags(a0)

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

	IF ENTITY_DEBUG_WORLDGRID_COUNTS
	PUSHALL
	move.l #((8*8)<<16)|(5*8), d1
	jsr    DBG_DrawWord
	move.w List_EntityUpdate_Size, d0
	move.l #((8*8)<<16)|(6*8), d1
	jsr    DBG_DrawWord
	move.w List_EntityRender_Size, d0
	move.l #((8*8)<<16)|(7*8), d1
	jsr    DBG_DrawWord
	move.w List_PhysicsObjs_Size, d0
	move.l #((8*8)<<16)|(8*8), d1
	jsr    DBG_DrawWord
	POPALL
	ENDIF

	IF ENTITY_DEBUG_WORLDGRID_BOUNDS
	PUSHALL
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
		cmpa.w #0x0, a0
		beq    @ListEnd

			; Get entity grid indices
			move.w Entity_WorldGridIdxTL(a0), d6
			move.w Entity_WorldGridIdxBR(a0), d7

			; If grid indices match any camera viewport cells
			move.w d4, d0
			move.w d0, d5				; Backup for X reset

			; Loop rows
			move.w #worldgrid_viewport_height-1, d1
			@ViewportCellYLp:

			; Loop cols
			move.b d5, d0				; Reset X
			move.w #worldgrid_viewport_width-1, d2
			@ViewportCellXLp:

			cmp.w  d0, d6				; Check match top-left
			beq    @InView

			cmp.w  d0, d7				; Check match top-right
			beq    @InView

			addi.b #0x1, d0				; +1 X
			dbra   d2, @ViewportCellXLp

			addi.w #0x0100, d0			; +1 Y
			dbra   d1, @ViewportCellYLp

			bra    @OutOfView

			@InView:
				
				; Get flags
				move.b Entity_WorldGridFlags(a0), d1

				; Get order
				move.b Entity_WorldGridOrder(a0), d2

				; Add entity to update list
				btst   #EntityWorldGridFlag_GridUpdates, d1		; If entity uses grid to update
				beq    @EndAddUpdateList
				btst   #EntityWorldGridFlag_InUpdateList, d1	; If not already in update list
				bne    @EndAddUpdateList
				LIST_INSERT_ORDERED EntityUpdate,a0,a3,a4,Entity_WorldGridOrder,d2	; Add to update list
				bset   #EntityWorldGridFlag_InUpdateList, d1	; Set flag
				@EndAddUpdateList:

				; Add entity to render list
				btst   #EntityWorldGridFlag_GridRenders, d1		; If entity uses grid to render
				beq    @EndAddRenderList
				btst   #EntityWorldGridFlag_InRenderList, d1	; If not already in render list
				bne    @EndAddRenderList
				LIST_INSERT_ORDERED EntityRender,a0,a3,a4,Entity_WorldGridOrder,d2	; Add to render list
				bset   #EntityWorldGridFlag_InRenderList, d1	; Set flag
				@EndAddRenderList:

				; Add entity to physics list
				btst   #EntityWorldGridFlag_GridPhysics, d1		; If entity uses grid to step physics
				beq    @EndAddPhysicsList
				btst   #EntityWorldGridFlag_InPhysicsList, d1	; If not already in physics list
				bne    @EndAddPhysicsList
				lea    PhysicsWorld, a3
				LIST_INSERT_ORDERED PhysicsObjs,a0,a3,a4,Entity_WorldGridOrder,d2	; Add to physics list
				bset   #EntityWorldGridFlag_InPhysicsList, d1	; Set flag
				@EndAddPhysicsList:

				; Set flags
				move.b d1, Entity_WorldGridFlags(a0)
				
				bra    @NextEntity

			; else
			@OutOfView:

				; Get flags
				move.b Entity_WorldGridFlags(a0), d1

				; Remove entity from Update list
				btst   #EntityWorldGridFlag_GridUpdates, d1		; If entity uses grid to update
				beq    @EndRemoveUpdateList
				btst   #EntityWorldGridFlag_InUpdateList, d1	; If in update list
				beq    @EndRemoveUpdateList
				move.l List_EntityUpdate_Next(a0), a4
				LIST_REMOVE EntityUpdate,a0,a4,a3				; Remove from update list
				bclr   #EntityWorldGridFlag_InUpdateList, d1	; Clear flag
				@EndRemoveUpdateList:

				; Remove entity from render list
				btst   #EntityWorldGridFlag_GridRenders, d1		; If entity uses grid to render
				beq    @EndRemoveRenderList
				btst   #EntityWorldGridFlag_InRenderList, d1	; If in render list
				beq    @EndRemoveRenderList
				LIST_REMOVE EntityRender,a0,a4,a3				; Remove from render list
				bclr   #EntityWorldGridFlag_InRenderList, d1	; Clear flag
				@EndRemoveRenderList:

				; Remove entity from physics list
				btst   #EntityWorldGridFlag_GridPhysics, d1		; If entity uses grid to step physics
				beq    @EndRemovePhysicsList
				btst   #EntityWorldGridFlag_InPhysicsList, d1	; If in physics list
				beq    @EndRemovePhysicsList
				LIST_REMOVE PhysicsObjs,a0,a2,a4,				; Remove from physics list
				bclr   #EntityWorldGridFlag_InPhysicsList, d1	; Clear flag
				@EndRemovePhysicsList:

				; Set flags
				move.b d1, Entity_WorldGridFlags(a0)

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

	IF ENTITY_DEBUG_SLOW
	move.l vblank_counter, d7
	divu   #ENTITY_DEBUG_SLOW, d7
	swap   d7
	tst.w  d7
	bne    @NoUpdate
	ENDIF

	LIST_GET_HEAD EntityUpdate,a0		; Get list head
	@EntityLp:							; For all entities in list
	cmpa.w #0x0, a0
	beq    @ListEnd
	move.l Entity_UpdateRoutine(a0), a2 ; Get update routine
	jsr    (a2)							; Execute update routine
	LIST_GET_NEXT EntityUpdate,a0,a0	; Get next ptr
	bra    @EntityLp					; Loop
	@ListEnd:

	@NoUpdate:

	IFD DEBUG
	jsr DBG_Profile_PopScope
	ENDIF
	
	rts
	
EntityRenderAll:
	; a1 --- Level address

	CAMERA_GETSCREENBOUNDS d2,d3,d4,d5
	
	LIST_GET_HEAD EntityRender,a0		; Get list head
	@EntityLp:							; For all entities in list
	cmpa.w #0x0, a0
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
	cmpa.w #0x0, a0
	beq    @ListEnd
	move.l Entity_SerialiseRoutine(a0), a2	; Get Serialise routine
	jsr    (a2)								; Execute Serialise routine
	ENTITY_SERIALISE_CHECK
	LIST_GET_NEXT EntitySerialise,a0,a0		; Get next ptr
	bra    @EntityLp						; Loop
	@ListEnd:
	
	rts
