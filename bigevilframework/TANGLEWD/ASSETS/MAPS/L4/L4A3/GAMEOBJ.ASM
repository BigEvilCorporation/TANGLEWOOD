; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   **AUTOGENERATED WITH BEEHIVE** - the complete art tool for SEGA Mega Drive
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   http://www.bigevilcorporation.co.uk
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   Beehive and SEGA Genesis Framework (c) Matt Phillips 2015
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==


L4A3_Leaf_count equ 0x0

L4A3_Demon_count equ 0x0

L4A3_Swarm_count equ 0x0

L4A3_Djubb_count equ 0x3
L4A3_Djubb_16_idx	equ 0x0
L4A3_Djubb_21_idx	equ 0x1
L4A3_Djubb_20_idx	equ 0x2

	IFND FINAL
L4A3_Djubb_16_name	dc.b "L4A3_Djubb_16",0
L4A3_Djubb_21_name	dc.b "L4A3_Djubb_21",0
L4A3_Djubb_20_name	dc.b "L4A3_Djubb_20",0
	even
	ENDIF

L4A3_Trap_count equ 0x3
L4A3_Trap1_idx	equ 0x0
L4A3_Trap2_idx	equ 0x1
L4A3_Trap3_idx	equ 0x2

	IFND FINAL
L4A3_Trap1_name	dc.b "L4A3_Trap1",0
L4A3_Trap2_name	dc.b "L4A3_Trap2",0
L4A3_Trap3_name	dc.b "L4A3_Trap3",0
	even
	ENDIF

L4A3_Nymn_count equ 0x1
L4A3_Nymn_1_idx	equ 0x0

	IFND FINAL
L4A3_Nymn_1_name	dc.b "L4A3_Nymn_1",0
	even
	ENDIF

L4A3_Echo_count equ 0x1
L4A3_Echo_2_idx	equ 0x0

	IFND FINAL
L4A3_Echo_2_name	dc.b "L4A3_Echo_2",0
	even
	ENDIF

L4A3_BouncePlant_count equ 0x0

L4A3_DjakkCage_count equ 0x0

L4A3_Log_count equ 0x0

L4A3_Borgus_count equ 0x1
L4A3_Borgus_idx	equ 0x0

	IFND FINAL
L4A3_Borgus_name	dc.b "L4A3_Borgus",0
	even
	ENDIF

L4A3_Boulder_count equ 0x1
L4A3_Boulder1_idx	equ 0x0

	IFND FINAL
L4A3_Boulder1_name	dc.b "L4A3_Boulder1",0
	even
	ENDIF

L4A3_Monster_count equ 0x0

L4A3_Firefly_count equ 0x8
L4A3_Firefly_74_idx	equ 0x0
L4A3_Firefly_75_idx	equ 0x1
L4A3_Firefly_76_idx	equ 0x2
L4A3_Firefly_77_idx	equ 0x3
L4A3_Firefly_78_idx	equ 0x4
L4A3_Firefly_79_idx	equ 0x5
L4A3_Firefly_80_idx	equ 0x6
L4A3_Firefly_81_idx	equ 0x7

	IFND FINAL
L4A3_Firefly_74_name	dc.b "L4A3_Firefly_74",0
L4A3_Firefly_75_name	dc.b "L4A3_Firefly_75",0
L4A3_Firefly_76_name	dc.b "L4A3_Firefly_76",0
L4A3_Firefly_77_name	dc.b "L4A3_Firefly_77",0
L4A3_Firefly_78_name	dc.b "L4A3_Firefly_78",0
L4A3_Firefly_79_name	dc.b "L4A3_Firefly_79",0
L4A3_Firefly_80_name	dc.b "L4A3_Firefly_80",0
L4A3_Firefly_81_name	dc.b "L4A3_Firefly_81",0
	even
	ENDIF

L4A3_FuzzlCage_count equ 0x0

L4A3_Fuzzl_count equ 0x4
L4A3_FuzzlBorgus_idx	equ 0x0
L4A3_Fuzzl_41_idx	equ 0x1
L4A3_Fuzzl_45_idx	equ 0x2
L4A3_Fuzzl_48_idx	equ 0x3

	IFND FINAL
L4A3_FuzzlBorgus_name	dc.b "L4A3_FuzzlBorgus",0
L4A3_Fuzzl_41_name	dc.b "L4A3_Fuzzl_41",0
L4A3_Fuzzl_45_name	dc.b "L4A3_Fuzzl_45",0
L4A3_Fuzzl_48_name	dc.b "L4A3_Fuzzl_48",0
	even
	ENDIF

L4A3_Stone_count equ 0x2
L4A3_Stone_42_idx	equ 0x0
L4A3_Stone_46_idx	equ 0x1

	IFND FINAL
L4A3_Stone_42_name	dc.b "L4A3_Stone_42",0
L4A3_Stone_46_name	dc.b "L4A3_Stone_46",0
	even
	ENDIF

L4A3_Raft_count equ 0x0

L4A3_Nest_count equ 0x1
L4A3_Nest_54_idx	equ 0x0

	IFND FINAL
L4A3_Nest_54_name	dc.b "L4A3_Nest_54",0
	even
	ENDIF

L4A3_Flue_count equ 0x0

L4A3_TriggerBox_count equ 0x5
L4A3_TriggerBorgus_idx	equ 0x0
L4A3_TriggerCargoLift_idx	equ 0x1
L4A3_TriggerLoadLift_idx	equ 0x2
L4A3_TriggerLevelEnd_idx	equ 0x3
L4A3_Trigger_TOD_Night_idx	equ 0x4

	IFND FINAL
L4A3_TriggerBorgus_name	dc.b "L4A3_TriggerBorgus",0
L4A3_TriggerCargoLift_name	dc.b "L4A3_TriggerCargoLift",0
L4A3_TriggerLoadLift_name	dc.b "L4A3_TriggerLoadLift",0
L4A3_TriggerLevelEnd_name	dc.b "L4A3_TriggerLevelEnd",0
L4A3_Trigger_TOD_Night_name	dc.b "L4A3_Trigger_TOD_Night",0
	even
	ENDIF

L4A3_WaterBody_count equ 0x4
L4A3_WaterBody_64_idx	equ 0x0
L4A3_WaterBody_83_idx	equ 0x1
L4A3_WaterBody_82_idx	equ 0x2
L4A3_WaterBody_84_idx	equ 0x3

	IFND FINAL
L4A3_WaterBody_64_name	dc.b "L4A3_WaterBody_64",0
L4A3_WaterBody_83_name	dc.b "L4A3_WaterBody_83",0
L4A3_WaterBody_82_name	dc.b "L4A3_WaterBody_82",0
L4A3_WaterBody_84_name	dc.b "L4A3_WaterBody_84",0
	even
	ENDIF

L4A3_Location_count equ 0x2
L4A3_LocationBoulderLiftStop1_idx	equ 0x0
L4A3_LocationBoulderLiftStop2_idx	equ 0x1

	IFND FINAL
L4A3_LocationBoulderLiftStop1_name	dc.b "L4A3_LocationBoulderLiftStop1",0
L4A3_LocationBoulderLiftStop2_name	dc.b "L4A3_LocationBoulderLiftStop2",0
	even
	ENDIF

L4A3_Deathbox_count equ 0x0

L4A3_Lift_count equ 0x2
L4A3_Lift1_idx	equ 0x0
L4A3_Lift2_idx	equ 0x1

	IFND FINAL
L4A3_Lift1_name	dc.b "L4A3_Lift1",0
L4A3_Lift2_name	dc.b "L4A3_Lift2",0
	even
	ENDIF

L4A3_Crate_count equ 0x0

L4A3_Generator_count equ 0x3
L4A3_Generator2_idx	equ 0x0
L4A3_Generator1_idx	equ 0x1
L4A3_Generator3_idx	equ 0x2

	IFND FINAL
L4A3_Generator2_name	dc.b "L4A3_Generator2",0
L4A3_Generator1_name	dc.b "L4A3_Generator1",0
L4A3_Generator3_name	dc.b "L4A3_Generator3",0
	even
	ENDIF

L4A3_Cogs_count equ 0x3
L4A3_Cogs2_idx	equ 0x0
L4A3_Cogs1_idx	equ 0x1
L4A3_Cogs3_idx	equ 0x2

	IFND FINAL
L4A3_Cogs2_name	dc.b "L4A3_Cogs2",0
L4A3_Cogs1_name	dc.b "L4A3_Cogs1",0
L4A3_Cogs3_name	dc.b "L4A3_Cogs3",0
	even
	ENDIF

L4A3_Button_count equ 0x2
L4A3_Button1_idx	equ 0x0
L4A3_Button2_idx	equ 0x1

	IFND FINAL
L4A3_Button1_name	dc.b "L4A3_Button1",0
L4A3_Button2_name	dc.b "L4A3_Button2",0
	even
	ENDIF

L4A3_Wyrm_count equ 0x0

L4A3_AIMarker_count equ 0x0

L4A3_Cart_count equ 0x0

L4A3_Winch_count equ 0x0

L4A3_Pillar_count equ 0x0

L4A3_WindFlue_count equ 0x0

L4A3_Lock_count equ 0x0

L4A3_Pool_count equ 0x0

L4A3_Stalactite_count equ 0x0

L4A3_CargoLift_count equ 0x1
L4A3_CargoLift_idx	equ 0x0

	IFND FINAL
L4A3_CargoLift_name	dc.b "L4A3_CargoLift",0
	even
	ENDIF

L4A3_Scrap_count equ 0x0

L4A3_Longboat_count equ 0x0

L4A3_Skivv_count equ 0x1
L4A3_SkivvEcho_idx	equ 0x0

	IFND FINAL
L4A3_SkivvEcho_name	dc.b "L4A3_SkivvEcho",0
	even
	ENDIF

L4A3_Ladder_count equ 0x0

L4A3_Scirus_count equ 0x0

L4A3_Hogg_count equ 0x0

L4A3_Bridge_count equ 0x1
L4A3_Bridge1_idx	equ 0x0

	IFND FINAL
L4A3_Bridge1_name	dc.b "L4A3_Bridge1",0
	even
	ENDIF

L4A3_Checkpoint_count equ 0x2
L4A3_Checkpoint_56_idx	equ 0x0
L4A3_Checkpoint_57_idx	equ 0x1

	IFND FINAL
L4A3_Checkpoint_56_name	dc.b "L4A3_Checkpoint_56",0
L4A3_Checkpoint_57_name	dc.b "L4A3_Checkpoint_57",0
	even
	ENDIF



L4A3_LoadGameObjects:



	PUSHL  a1
	RAMPOOL_ALLOC Pool_Entities, #(Djubb_Struct_Size*L4A3_Djubb_count)
	move.l a1, EntityPoolStart_Djubb
	move.l a1, a0
	POPL   a1

	jsr DjubbInit
	move.l #0x03280000, Entity_WorldPosX(a0)
	move.l #0x04000000, Entity_WorldPosY(a0)
	jsr DjubbLoadGfx
	IFND FINAL
	lea L4A3_Djubb_16_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0xd, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Djubb_Struct_Size, a0

	jsr DjubbInit
	move.l #0x01980000, Entity_WorldPosX(a0)
	move.l #0x03880000, Entity_WorldPosY(a0)
	jsr DjubbLoadGfx
	IFND FINAL
	lea L4A3_Djubb_21_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0xd, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Djubb_Struct_Size, a0

	jsr DjubbInit
	move.l #0x03900000, Entity_WorldPosX(a0)
	move.l #0x02a80000, Entity_WorldPosY(a0)
	jsr DjubbLoadGfx
	IFND FINAL
	lea L4A3_Djubb_20_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0xd, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Djubb_Struct_Size, a0


	PUSHL  a1
	RAMPOOL_ALLOC Pool_Entities, #(Trap_Struct_Size*L4A3_Trap_count)
	move.l a1, EntityPoolStart_Trap
	move.l a1, a0
	POPL   a1

	jsr TrapInit
	move.l #0x05300000, Entity_WorldPosX(a0)
	move.l #0x01980000, Entity_WorldPosY(a0)
	jsr TrapLoadGfx
	IFND FINAL
	lea L4A3_Trap1_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0xa, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Trap_Struct_Size, a0

	jsr TrapInit
	move.l #0x05a80000, Entity_WorldPosX(a0)
	move.l #0x01c80000, Entity_WorldPosY(a0)
	jsr TrapLoadGfx
	IFND FINAL
	lea L4A3_Trap2_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0xa, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Trap_Struct_Size, a0

	jsr TrapInit
	move.l #0x06200000, Entity_WorldPosX(a0)
	move.l #0x01980000, Entity_WorldPosY(a0)
	jsr TrapLoadGfx
	IFND FINAL
	lea L4A3_Trap3_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0xa, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Trap_Struct_Size, a0


	PUSHL  a1
	RAMPOOL_ALLOC Pool_Entities, #(Nymn_Struct_Size*L4A3_Nymn_count)
	move.l a1, EntityPoolStart_Nymn
	move.l a1, a0
	POPL   a1

	jsr NymnInit
	move.l #0x00e80000, Entity_WorldPosX(a0)
	move.l #0x01980000, Entity_WorldPosY(a0)
	jsr NymnLoadGfx
	IFND FINAL
	lea L4A3_Nymn_1_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0xb, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Nymn_Struct_Size, a0


	PUSHL  a1
	RAMPOOL_ALLOC Pool_Entities, #(Echo_Struct_Size*L4A3_Echo_count)
	move.l a1, EntityPoolStart_Echo
	move.l a1, a0
	POPL   a1

	jsr EchoInit
	move.l #0x00c00000, Entity_WorldPosX(a0)
	move.l #0x01980000, Entity_WorldPosY(a0)
	jsr EchoLoadGfx
	IFND FINAL
	lea L4A3_Echo_2_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0xb, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Echo_Struct_Size, a0





	PUSHL  a1
	RAMPOOL_ALLOC Pool_Entities, #(Borgus_Struct_Size*L4A3_Borgus_count)
	move.l a1, EntityPoolStart_Borgus
	move.l a1, a0
	POPL   a1

	jsr BorgusInit
	move.l #0x0fc00000, Entity_WorldPosX(a0)
	move.l #0x04f80000, Entity_WorldPosY(a0)
	move.b #0x1, SpriteObj_FlippedX(a0)
	jsr BorgusLoadGfx
	IFND FINAL
	lea L4A3_Borgus_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0xb, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Borgus_Struct_Size, a0


	PUSHL  a1
	RAMPOOL_ALLOC Pool_Entities, #(Boulder_Struct_Size*L4A3_Boulder_count)
	move.l a1, EntityPoolStart_Boulder
	move.l a1, a0
	POPL   a1

	jsr BoulderInit
	move.l #0x10b00000, Entity_WorldPosX(a0)
	move.l #0x05500000, Entity_WorldPosY(a0)
	jsr BoulderLoadGfx
	IFND FINAL
	lea L4A3_Boulder1_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0xd, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Boulder_Struct_Size, a0



	PUSHL  a1
	RAMPOOL_ALLOC Pool_Entities, #(Firefly_Struct_Size*L4A3_Firefly_count)
	move.l a1, EntityPoolStart_Firefly
	move.l a1, a0
	POPL   a1

	jsr FireflyInit
	move.l #0x06000000, Entity_WorldPosX(a0)
	move.l #0x01980000, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	IFND FINAL
	lea L4A3_Firefly_74_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0xf, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Firefly_Struct_Size, a0

	jsr FireflyInit
	move.l #0x03b80000, Entity_WorldPosX(a0)
	move.l #0x02600000, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	IFND FINAL
	lea L4A3_Firefly_75_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0xf, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Firefly_Struct_Size, a0

	jsr FireflyInit
	move.l #0x10b00000, Entity_WorldPosX(a0)
	move.l #0x00f80000, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	IFND FINAL
	lea L4A3_Firefly_76_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0xf, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Firefly_Struct_Size, a0

	jsr FireflyInit
	move.l #0x08d00000, Entity_WorldPosX(a0)
	move.l #0x00b80000, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	IFND FINAL
	lea L4A3_Firefly_77_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0xf, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Firefly_Struct_Size, a0

	jsr FireflyInit
	move.l #0x0e800000, Entity_WorldPosX(a0)
	move.l #0x01a80000, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	IFND FINAL
	lea L4A3_Firefly_78_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0xf, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Firefly_Struct_Size, a0

	jsr FireflyInit
	move.l #0x18d80000, Entity_WorldPosX(a0)
	move.l #0x02f00000, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	IFND FINAL
	lea L4A3_Firefly_79_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0xf, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Firefly_Struct_Size, a0

	jsr FireflyInit
	move.l #0x12f00000, Entity_WorldPosX(a0)
	move.l #0x03a00000, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	IFND FINAL
	lea L4A3_Firefly_80_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0xf, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Firefly_Struct_Size, a0

	jsr FireflyInit
	move.l #0x05500000, Entity_WorldPosX(a0)
	move.l #0x03c00000, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	IFND FINAL
	lea L4A3_Firefly_81_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0xf, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Firefly_Struct_Size, a0



	PUSHL  a1
	RAMPOOL_ALLOC Pool_Entities, #(Fuzzl_Struct_Size*L4A3_Fuzzl_count)
	move.l a1, EntityPoolStart_Fuzzl
	move.l a1, a0
	POPL   a1

	jsr FuzzlInit
	move.l #0x0fe00000, Entity_WorldPosX(a0)
	move.l #0x04e00000, Entity_WorldPosY(a0)
	move.b #ColourYellow, Fuzzl_Colour(a0)
	jsr FuzzlLoadGfx
	IFND FINAL
	lea L4A3_FuzzlBorgus_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0x10, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Fuzzl_Struct_Size, a0

	jsr FuzzlInit
	move.l #0x05800000, Entity_WorldPosX(a0)
	move.l #0x01b80000, Entity_WorldPosY(a0)
	jsr FuzzlLoadGfx
	IFND FINAL
	lea L4A3_Fuzzl_41_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0xd, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Fuzzl_Struct_Size, a0

	jsr FuzzlInit
	move.l #0x08200000, Entity_WorldPosX(a0)
	move.l #0x00e80000, Entity_WorldPosY(a0)
	jsr FuzzlLoadGfx
	IFND FINAL
	lea L4A3_Fuzzl_45_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0xd, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Fuzzl_Struct_Size, a0

	jsr FuzzlInit
	move.l #0x18a00000, Entity_WorldPosX(a0)
	move.l #0x03100000, Entity_WorldPosY(a0)
	jsr FuzzlLoadGfx
	IFND FINAL
	lea L4A3_Fuzzl_48_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0xd, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Fuzzl_Struct_Size, a0


	PUSHL  a1
	RAMPOOL_ALLOC Pool_Entities, #(Stone_Struct_Size*L4A3_Stone_count)
	move.l a1, EntityPoolStart_Stone
	move.l a1, a0
	POPL   a1

	jsr StoneInit
	move.l #0x05e80000, Entity_WorldPosX(a0)
	move.l #0x01b80000, Entity_WorldPosY(a0)
	jsr StoneLoadGfx
	IFND FINAL
	lea L4A3_Stone_42_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0xd, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Stone_Struct_Size, a0

	jsr StoneInit
	move.l #0x0a780000, Entity_WorldPosX(a0)
	move.l #0x02100000, Entity_WorldPosY(a0)
	jsr StoneLoadGfx
	IFND FINAL
	lea L4A3_Stone_46_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0xd, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Stone_Struct_Size, a0



	PUSHL  a1
	RAMPOOL_ALLOC Pool_Entities, #(Nest_Struct_Size*L4A3_Nest_count)
	move.l a1, EntityPoolStart_Nest
	move.l a1, a0
	POPL   a1

	jsr NestInit
	move.l #0x0ba00000, Entity_WorldPosX(a0)
	move.l #0x05a80000, Entity_WorldPosY(a0)
	jsr NestLoadGfx
	IFND FINAL
	lea L4A3_Nest_54_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0xc, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Nest_Struct_Size, a0



	PUSHL  a1
	RAMPOOL_ALLOC Pool_Entities, #(TriggerBox_Struct_Size*L4A3_TriggerBox_count)
	move.l a1, EntityPoolStart_TriggerBox
	move.l a1, a0
	POPL   a1

	jsr TriggerBoxInit
	move.l #0x0b580000, Entity_WorldPosX(a0)
	move.l #0x05280000, Entity_WorldPosY(a0)
	move.l #l4a3_Trigger_BorgusReveal, TriggerBox_Routine(a0)
	move.b #0x1, TriggerBox_TriggerOnce(a0)
	move.b #0x1, TriggerBox_XOnly(a0)
	jsr TriggerBoxLoadGfx
	IFND FINAL
	lea L4A3_TriggerBorgus_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0x10, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #TriggerBox_Struct_Size, a0

	jsr TriggerBoxInit
	move.l #0x16900000, Entity_WorldPosX(a0)
	move.l #0x03380000, Entity_WorldPosY(a0)
	move.l #l4a3_Trigger_CargoLift, TriggerBox_Routine(a0)
	move.b #0x1, TriggerBox_EachFrame(a0)
	jsr TriggerBoxLoadGfx
	IFND FINAL
	lea L4A3_TriggerCargoLift_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0x10, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #TriggerBox_Struct_Size, a0

	jsr TriggerBoxInit
	move.l #0x13f00000, Entity_WorldPosX(a0)
	move.l #0x03300000, Entity_WorldPosY(a0)
	move.b #0x1, TriggerBox_TriggerOnce(a0)
	move.l #l4a3_Trigger_LoadLift, TriggerBox_Routine(a0)
	move.b #0x1, TriggerBox_XOnly(a0)
	jsr TriggerBoxLoadGfx
	IFND FINAL
	lea L4A3_TriggerLoadLift_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0x10, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #TriggerBox_Struct_Size, a0

	jsr TriggerBoxInit
	move.l #0x16900000, Entity_WorldPosX(a0)
	move.l #0x04d80000, Entity_WorldPosY(a0)
	move.l #l4a3_Trigger_End, TriggerBox_Routine(a0)
	move.b #0x1, TriggerBox_TriggerOnce(a0)
	jsr TriggerBoxLoadGfx
	IFND FINAL
	lea L4A3_TriggerLevelEnd_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0x10, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #TriggerBox_Struct_Size, a0

	jsr TriggerBoxInit
	move.l #0x01f00000, Entity_WorldPosX(a0)
	move.l #0x01680000, Entity_WorldPosY(a0)
	move.l #SetTimeOfDay, TriggerBox_Routine(a0)
	move.l #TimeOfDay_Night, TriggerBox_RegisterD0(a0)
	move.b #0x1, TriggerBox_TriggerOnce(a0)
	move.b #0x1, TriggerBox_XOnly(a0)
	move.l #0x1, TriggerBox_RegisterD1(a0)
	jsr TriggerBoxLoadGfx
	IFND FINAL
	lea L4A3_Trigger_TOD_Night_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0x10, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #TriggerBox_Struct_Size, a0


	PUSHL  a1
	RAMPOOL_ALLOC Pool_Entities, #(WaterBody_Struct_Size*L4A3_WaterBody_count)
	move.l a1, EntityPoolStart_WaterBody
	move.l a1, a0
	POPL   a1

	jsr WaterBodyInit
	move.l #0x0d900000, Entity_WorldPosX(a0)
	move.l #0x05900000, Entity_WorldPosY(a0)
	move.w #0x0200, Entity_Width(a0)
	move.w #0x0020, Entity_Height(a0)
	jsr WaterBodyLoadGfx
	IFND FINAL
	lea L4A3_WaterBody_64_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0x10, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #WaterBody_Struct_Size, a0

	jsr WaterBodyInit
	move.l #0x02580000, Entity_WorldPosX(a0)
	move.l #0x04000000, Entity_WorldPosY(a0)
	move.w #0x0438, Entity_Width(a0)
	move.w #0x0020, Entity_Height(a0)
	jsr WaterBodyLoadGfx
	IFND FINAL
	lea L4A3_WaterBody_83_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0x10, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #WaterBody_Struct_Size, a0

	jsr WaterBodyInit
	move.l #0x02e80000, Entity_WorldPosX(a0)
	move.l #0x02a80000, Entity_WorldPosY(a0)
	move.w #0x00f0, Entity_Width(a0)
	move.w #0x0020, Entity_Height(a0)
	jsr WaterBodyLoadGfx
	IFND FINAL
	lea L4A3_WaterBody_82_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0x10, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #WaterBody_Struct_Size, a0

	jsr WaterBodyInit
	move.l #0x00b80000, Entity_WorldPosX(a0)
	move.l #0x03880000, Entity_WorldPosY(a0)
	move.w #0x0130, Entity_Width(a0)
	move.w #0x0020, Entity_Height(a0)
	jsr WaterBodyLoadGfx
	IFND FINAL
	lea L4A3_WaterBody_84_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0x10, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #WaterBody_Struct_Size, a0


	PUSHL  a1
	RAMPOOL_ALLOC Pool_Entities, #(Location_Struct_Size*L4A3_Location_count)
	move.l a1, EntityPoolStart_Location
	move.l a1, a0
	POPL   a1

	jsr LocationInit
	move.l #0x0ce00000, Entity_WorldPosX(a0)
	move.l #0x04f00000, Entity_WorldPosY(a0)
	jsr LocationLoadGfx
	IFND FINAL
	lea L4A3_LocationBoulderLiftStop1_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0x10, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Location_Struct_Size, a0

	jsr LocationInit
	move.l #0x0fe80000, Entity_WorldPosX(a0)
	move.l #0x04c00000, Entity_WorldPosY(a0)
	jsr LocationLoadGfx
	IFND FINAL
	lea L4A3_LocationBoulderLiftStop2_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0x10, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Location_Struct_Size, a0



	PUSHL  a1
	RAMPOOL_ALLOC Pool_Entities, #(Lift_Struct_Size*L4A3_Lift_count)
	move.l a1, EntityPoolStart_Lift
	move.l a1, a0
	POPL   a1

	jsr LiftInit
	move.l #0x0cc80000, Entity_WorldPosX(a0)
	move.l #0x05780000, Entity_WorldPosY(a0)
	jsr LiftLoadGfx
	IFND FINAL
	lea L4A3_Lift1_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0xa, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Lift_Struct_Size, a0

	jsr LiftInit
	move.l #0x0fd00000, Entity_WorldPosX(a0)
	move.l #0x05780000, Entity_WorldPosY(a0)
	jsr LiftLoadGfx
	IFND FINAL
	lea L4A3_Lift2_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0xa, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Lift_Struct_Size, a0



	PUSHL  a1
	RAMPOOL_ALLOC Pool_Entities, #(Generator_Struct_Size*L4A3_Generator_count)
	move.l a1, EntityPoolStart_Generator
	move.l a1, a0
	POPL   a1

	jsr GeneratorInit
	move.l #0x06f80000, Entity_WorldPosX(a0)
	move.l #0x01f00000, Entity_WorldPosY(a0)
	jsr GeneratorLoadGfx
	IFND FINAL
	lea L4A3_Generator2_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0xf, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Generator_Struct_Size, a0

	jsr GeneratorInit
	move.l #0x03c80000, Entity_WorldPosX(a0)
	move.l #0x01d00000, Entity_WorldPosY(a0)
	jsr GeneratorLoadGfx
	IFND FINAL
	lea L4A3_Generator1_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0xf, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Generator_Struct_Size, a0

	jsr GeneratorInit
	move.l #0x14b00000, Entity_WorldPosX(a0)
	move.l #0x03980000, Entity_WorldPosY(a0)
	jsr GeneratorLoadGfx
	IFND FINAL
	lea L4A3_Generator3_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0xf, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Generator_Struct_Size, a0


	PUSHL  a1
	RAMPOOL_ALLOC Pool_Entities, #(Cogs_Struct_Size*L4A3_Cogs_count)
	move.l a1, EntityPoolStart_Cogs
	move.l a1, a0
	POPL   a1

	jsr CogsInit
	move.l #0x07100000, Entity_WorldPosX(a0)
	move.l #0x01800000, Entity_WorldPosY(a0)
	jsr CogsLoadGfx
	IFND FINAL
	lea L4A3_Cogs2_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0xa, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Cogs_Struct_Size, a0

	jsr CogsInit
	move.l #0x03e00000, Entity_WorldPosX(a0)
	move.l #0x01600000, Entity_WorldPosY(a0)
	jsr CogsLoadGfx
	IFND FINAL
	lea L4A3_Cogs1_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0xa, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Cogs_Struct_Size, a0

	jsr CogsInit
	move.l #0x14c80000, Entity_WorldPosX(a0)
	move.l #0x03280000, Entity_WorldPosY(a0)
	jsr CogsLoadGfx
	IFND FINAL
	lea L4A3_Cogs3_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0xa, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Cogs_Struct_Size, a0


	PUSHL  a1
	RAMPOOL_ALLOC Pool_Entities, #(Button_Struct_Size*L4A3_Button_count)
	move.l a1, EntityPoolStart_Button
	move.l a1, a0
	POPL   a1

	jsr ButtonInit
	move.l #0x0c780000, Entity_WorldPosX(a0)
	move.l #0x05800000, Entity_WorldPosY(a0)
	jsr ButtonLoadGfx
	IFND FINAL
	lea L4A3_Button1_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0xc, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Button_Struct_Size, a0

	jsr ButtonInit
	move.l #0x10480000, Entity_WorldPosX(a0)
	move.l #0x05800000, Entity_WorldPosY(a0)
	jsr ButtonLoadGfx
	IFND FINAL
	lea L4A3_Button2_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0xc, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Button_Struct_Size, a0











	PUSHL  a1
	RAMPOOL_ALLOC Pool_Entities, #(CargoLift_Struct_Size*L4A3_CargoLift_count)
	move.l a1, EntityPoolStart_CargoLift
	move.l a1, a0
	POPL   a1

	jsr CargoLiftInit
	move.l #0x16a80000, Entity_WorldPosX(a0)
	move.l #0x03500000, Entity_WorldPosY(a0)
	move.b #0x1, CargoLift_ManualGfxLoad(a0)
	jsr CargoLiftLoadGfx
	IFND FINAL
	lea L4A3_CargoLift_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0xe, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #CargoLift_Struct_Size, a0




	PUSHL  a1
	RAMPOOL_ALLOC Pool_Entities, #(Skivv_Struct_Size*L4A3_Skivv_count)
	move.l a1, EntityPoolStart_Skivv
	move.l a1, a0
	POPL   a1

	jsr SkivvInit
	move.l #0x01280000, Entity_WorldPosX(a0)
	move.l #0x01980000, Entity_WorldPosY(a0)
	jsr SkivvLoadGfx
	IFND FINAL
	lea L4A3_SkivvEcho_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0xe, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Skivv_Struct_Size, a0





	PUSHL  a1
	RAMPOOL_ALLOC Pool_Entities, #(Bridge_Struct_Size*L4A3_Bridge_count)
	move.l a1, EntityPoolStart_Bridge
	move.l a1, a0
	POPL   a1

	jsr BridgeInit
	move.l #0x02a00000, Entity_WorldPosX(a0)
	move.l #0x01e80000, Entity_WorldPosY(a0)
	move.b #Bridge_ModeRollDown, Bridge_Mode(a0)
	move.b #Bridge_StateOpen, Bridge_State(a0)
	jsr BridgeLoadGfx
	IFND FINAL
	lea L4A3_Bridge1_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0xc, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Bridge_Struct_Size, a0


	PUSHL  a1
	RAMPOOL_ALLOC Pool_Entities, #(Checkpoint_Struct_Size*L4A3_Checkpoint_count)
	move.l a1, EntityPoolStart_Checkpoint
	move.l a1, a0
	POPL   a1

	jsr CheckpointInit
	move.l #0x0a780000, Entity_WorldPosX(a0)
	move.l #0x04f80000, Entity_WorldPosY(a0)
	jsr CheckpointLoadGfx
	IFND FINAL
	lea L4A3_Checkpoint_56_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0x10, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Checkpoint_Struct_Size, a0

	jsr CheckpointInit
	move.l #0x11e80000, Entity_WorldPosX(a0)
	move.l #0x04780000, Entity_WorldPosY(a0)
	jsr CheckpointLoadGfx
	IFND FINAL
	lea L4A3_Checkpoint_57_name, a3
	move.l a0, a2
	add.l #Entity_DebugName, a2
	move.l #0x10, d0
	MEMCPYB a2,a3,d0
	ENDIF
	add.l #Checkpoint_Struct_Size, a0


	rts

