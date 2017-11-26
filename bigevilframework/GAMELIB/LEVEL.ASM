;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2015
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   level.asm - Level struct and load routines
;==============================================================

	rsset 0
;---------------------------------
Level_Name					rs.l 1
Level_UserData				rs.l 1
Level_TilesAddr       		rs.l 1
Level_BlocksAddr    		rs.l 1
Level_BlockMapAddr    		rs.l 1
Level_ColTilesAddr    		rs.l 1
Level_ColMapBlocksAddr		rs.l 1
Level_ColMapBlockMapAddr	rs.l 1
Level_TerrainDescAddr		rs.l 1
Level_PalettesAddr			rs.l 1
Level_InitRoutine			rs.l 1
Level_UpdateRoutine			rs.l 1
Level_SerialiseRoutine		rs.l 1
Level_LoadGameObjsRoutine	rs.l 1
Level_EndRoutine			rs.l 1
Level_NextLevel				rs.l 1
Level_Gravity				rs.l 1
Level_MapWidth				rs.w 1
Level_MapHeight				rs.w 1
Level_MapWidthBlocks		rs.w 1
Level_MapHeightBlocks		rs.w 1
Level_ColMapWidth			rs.w 1
Level_ColMapHeight			rs.w 1
Level_ColMapLeft			rs.w 1
Level_ColMapTop				rs.w 1
Level_ColMapWidthBlocks		rs.w 1
Level_ColMapHeightBlocks	rs.w 1
Level_NumTiles				rs.w 1
Level_NumTerrainDescs		rs.w 1
Level_BgColour				rs.b 1
Level_Index					rs.b 1
;---------------------------------
	RS_ALIGN
Level_Struct_Size			rs.b 0
