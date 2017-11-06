;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   sprsheet.asm - Sprite sheet descriptor
;==============================================================

	rsset 0
;-----------------------------------------
SpriteSheet_TileDataAddr			rs.l 1	; Base address of tile data
SpriteSheet_DimensionsArrAddr		rs.l 1	; Address of VDP dimentions per subsprite array
SpriteSheet_SubspriteOffsetArrAddr	rs.l 1	; Address of position offsets per subsprite array
SpriteSheet_WidthHeightTiles		rs.w 1	; Sprite object width/height in tiles (0xWWHH)
SpriteSheet_SizeTiles				rs.w 1	; Sprite object single frame size in tiles
SpriteSheet_SizeSubsprites			rs.b 1	; Sprite object single frame size in subsprites
SpriteSheet_PaletteId				rs.b 1	; Palette ID
SpriteSheet_Priority				rs.b 1	; Sprite draw priority (0/1)
;-----------------------------------------
SpriteSheet_Struct_Pad				rs.b 1
SpriteSheet_Struct_Size				rs.b 0
