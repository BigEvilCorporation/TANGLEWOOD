;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   scnanim.asm - Scene (background tile/stamp) animation
;==============================================================

	rsset (AnimObj_Struct_Size)
;--------------------------------

;--------------------------------
SceneAnim_Struct_Pad       rs.b 0
SceneAnim_Struct_Size      rs.b 0

;==============================================================

SceneAnimInit:
	; a0 --- AnimObj addr
	; a1 --- Level addr

	; Base init
	jsr    AnimObjInit

	; Set update/draw routines
	move.l #AnimObjUpdate, Entity_UpdateRoutine(a0)
	move.l #AnimObjDraw, Entity_RenderRoutine(a0)

	; Add to update and render lists
	jsr    EntityAddToUpdateList
	jsr    EntityAddToRenderList

	; Not technically a sprite, always in view
	move.b #0x1, AnimObj_UpdateOutOfView(a0)

	; Always active
	move.b #0x1, Entity_Active(a0)

	rts

SceneAnimLoadStampAnim:
	; a0 --- AnimObj addr
	; a1 --- Level addr
	; a2 --- Tileset address
	; d0 (w) VRAM address
	; d1 (w) Num tiles

	andi.l #0x0000FFFF, d0

	; Set tileset/VRAM address/size
	move.l a2, SpriteObj_TilesetAddr(a0)
	move.l d0, SpriteObj_VRAMAddr(a0)
	move.w d1, SpriteObj_TilesetSize(a0)

	; Not a sprite
	move.b #0x0, SpriteObj_Visible(a0)

	rts