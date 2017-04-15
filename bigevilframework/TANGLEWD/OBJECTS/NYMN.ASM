;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   nymn.asm - The star of the show
;==============================================================

; Animations
NymnAnimIdx_PickupEcho    	equ 0
; -------------------------------
NymnAnimIdx_Max       		equ 1

; Carry Echo state
NymnCarryEcho_Inactive		equ 0
NymnCarryEcho_Catching		equ 1
NymnCarryEcho_Carrying		equ 2

; ************************************
; Struct
; ************************************
	rsset (Player_Struct_Size)
;---------------------------------
Nymn_Animations	   			rs.b (Animation_Struct_Size*NymnAnimIdx_Max)
Nymn_CarryEchoState			rs.b 1
;---------------------------------
Nymn_Struct_Pad      		rs.b 3
Nymn_Struct_Size     		rs.b 0

; ************************************
; Subroutines
; ************************************
NymnInit:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Base functionality
	jsr    PlayerInit
	
	; Set update and render routines
	move.l #NymnUpdate, Entity_UpdateRoutine(a0)
	move.l #CharacterDraw, Entity_RenderRoutine(a0)
	
	; Add to update and render lists
	jsr EntityAddToUpdateList
	jsr EntityAddToRenderList
	
	;==============================================================
	
	; Setup default state
	move.b #NymnCarryEcho_Inactive, Nymn_CarryEchoState(a0)
	
	; Setup interaction routines
	move.l #NymnStartInteract, Character_InteractStart(a0)
	move.l #NymnCancelInteract, Character_InteractCancel(a0)
	
	;==============================================================
	
	; Setup default SFX
	IFND DEBUG
	move.l a0, a2
	add.l  #Character_SFX, a2
	
	; Land
	move.l a2, a3
	add.l  #CharacterSFXIdx_Land*size_long, a3
	move.l #SFX_Land, (a3)

	; Water splash
	move.l a2, a3
	add.l  #CharacterSFXIdx_WaterSplash*size_long, a3
	move.l #SFX_Water_Splash1, (a3)

	; Water Jump
	move.l a2, a3
	add.l  #CharacterSFXIdx_WaterJump*size_long, a3
	move.l #SFX_Water_Jump, (a3)
	ENDIF
	
	;==============================================================

	; Setup default character animations
	; TODO: Export Animation structs from editor, use LOAD_ANIMATION macro
	move.l a0, a2
	add.l  #Character_Animations, a2

	; Idle
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_Idle), a3
	move.w #spritesheet_nymn_idle_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_nymn_idle_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_nymn_idle_speed, Animation_Speed(a3)
	move.b #spriteanim_nymn_idle_numframes, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)
	
	; Dead
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_Dead), a3
	move.w #spritesheet_nymn_death_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_nymn_death_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #spriteanim_nymn_death_track_posx, Animation_AnimTrackPositionX(a3)
	move.l #spriteanim_nymn_death_track_posy, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_nymn_death_speed, Animation_Speed(a3)
	move.b #spriteanim_nymn_death_numframes, Animation_Length(a3)
	move.b #0x0, Animation_Looping(a3)
	move.b #0x1, Animation_ZeroVelocity(a3)
	
	; Run
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_Run), a3
	move.w #spritesheet_nymn_run_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_nymn_run_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.l #spriteanim_nymn_run_track_sfx, Animation_AnimTrackSFX(a3)
	move.b #spriteanim_nymn_run_speed, Animation_Speed(a3)
	move.b #spriteanim_nymn_run_numframes, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)

	; Walk
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_Walk), a3
	move.w #spritesheet_nymn_walk_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_nymn_run_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_nymn_walk_speed, Animation_Speed(a3)
	move.b #spriteanim_nymn_run_numframes, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)
	
	; Walk to run transition
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_WalkToRun), a3
	move.w #spritesheet_nymn_walktorun_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_nymn_walktorun_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_nymn_walktorun_speed, Animation_Speed(a3)
	move.b #spriteanim_nymn_walktorun_numframes, Animation_Length(a3)
	move.b #0x0, Animation_Looping(a3)

	; Jump
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_Jump), a3
	move.w #spritesheet_nymn_jump_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_nymn_jump_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_nymn_jump_speed, Animation_Speed(a3)
	move.b #spriteanim_nymn_jump_numframes, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)
	
	; Fall
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_Fall), a3
	move.w #spritesheet_nymn_fall_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_nymn_fall_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_nymn_fall_speed, Animation_Speed(a3)
	move.b #spriteanim_nymn_fall_numframes, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)

	; Hang
	;move.l a2, a3
	;add.l  #(Animation_Struct_Size*CharacterAnimIdx_Hang), a3
	;move.l #Anim_NymnHang, Animation_AnimTrackSpriteFrame(a3)
	;move.l #0x0, Animation_AnimTrackPositionX(a3)
	;move.l #0x0, Animation_AnimTrackPositionY(a3)
	;move.b #Anim_NymnHang_Speed, Animation_Speed(a3)
	;move.b #Anim_NymnHang_SizeB, Animation_Length(a3)
	;move.b #0x1, Animation_Looping(a3)
	
	; Water wade
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_WaterWade), a3
	move.w #spritesheet_nymn_wade_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_nymn_wade_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #spriteanim_nymn_wade_track_sfx, Animation_AnimTrackSFX(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_nymn_wade_speed, Animation_Speed(a3)
	move.b #spriteanim_nymn_wade_numframes, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)
	
	; Glide
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_Glide), a3
	move.w #spritesheet_nymn_glide_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_nymn_glide_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_nymn_glide_speed, Animation_Speed(a3)
	move.b #spriteanim_nymn_glide_numframes, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)

	; Ride (trot)
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_RideTrot), a3
	move.w #spritesheet_nymn_ridedjakk_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_nymn_ridedjakk_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #spriteanim_nymn_ridedjakk_track_posx, Animation_AnimTrackPositionX(a3)
	move.l #spriteanim_nymn_ridedjakk_track_posy, Animation_AnimTrackPositionY(a3)
	move.b #0x0, Animation_Speed(a3)
	move.b #spriteanim_nymn_ridedjakk_numframes, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)
	move.b #0x0, Animation_ZeroVelocity(a3)

	; Ride (gallop)
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_RideGallop), a3
	move.w #spritesheet_nymn_ridedjakkrun_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_nymn_ridedjakkrun_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #spriteanim_nymn_ridedjakkrun_track_posx, Animation_AnimTrackPositionX(a3)
	move.l #spriteanim_nymn_ridedjakkrun_track_posy, Animation_AnimTrackPositionY(a3)
	move.b #0x0, Animation_Speed(a3)
	move.b #spriteanim_nymn_ridedjakkrun_numframes, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)
	move.b #0x0, Animation_ZeroVelocity(a3)

	; Ride (jump)
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_RideJump), a3
	move.w #spritesheet_nymn_ridedjakkjump_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_nymn_ridedjakkjump_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #spriteanim_nymn_ridedjakkjump_track_posx, Animation_AnimTrackPositionX(a3)
	move.l #spriteanim_nymn_ridedjakkjump_track_posy, Animation_AnimTrackPositionY(a3)
	move.b #0x0, Animation_Speed(a3)
	move.b #spriteanim_nymn_ridedjakkjump_numframes, Animation_Length(a3)
	move.b #0x0, Animation_Looping(a3)
	move.b #0x0, Animation_ZeroVelocity(a3)

	; Push (light object)
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_Push), a3
	move.w #spritesheet_nymn_push_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_nymn_push_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_nymn_push_speed, Animation_Speed(a3)
	move.b #spriteanim_nymn_push_numframes, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)
	
	; Push (heavy object)
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_PushHeavy), a3
	move.w #spritesheet_nymn_pushheavy_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_nymn_pushheavy_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_nymn_pushheavy_speed, Animation_Speed(a3)
	move.b #spriteanim_nymn_pushheavy_numframes, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)
	
	;==============================================================
	
	; Setup player animations
	; TODO: Export Animation structs from editor, use LOAD_ANIMATION macro
	move.l a0, a2
	add.l  #Player_Animations, a2
	
	; Colour switch
	move.l a2, a3
	add.l  #(Animation_Struct_Size*PlayerAnimIdx_Switch), a3
	move.w #spritesheet_nymn_colourswitch_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_nymn_colourswitch_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #spriteanim_nymn_colourswitch_track_posx, Animation_AnimTrackPositionX(a3)
	move.l #spriteanim_nymn_colourswitch_track_posy, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_nymn_colourswitch_speed, Animation_Speed(a3)
	move.b #spriteanim_nymn_colourswitch_numframes, Animation_Length(a3)
	move.b #0x0, Animation_Looping(a3)
	move.b #0x1, Animation_ZeroVelocity(a3)
	
	; Sleep
	move.l a2, a3
	add.l  #(Animation_Struct_Size*PlayerAnimIdx_Sleep), a3
	move.w #spritesheet_nymn_sleep_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_nymn_sleep_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #spriteanim_nymn_sleep_track_posx, Animation_AnimTrackPositionX(a3)
	move.l #spriteanim_nymn_sleep_track_posy, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_nymn_sleep_speed, Animation_Speed(a3)
	move.b #spriteanim_nymn_sleep_numframes, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)
	move.b #0x1, Animation_ZeroVelocity(a3)
	
	; Lay down
	move.l a2, a3
	add.l  #(Animation_Struct_Size*PlayerAnimIdx_LieDown), a3
	move.w #spritesheet_nymn_laydown_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_nymn_laydown_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #spriteanim_nymn_laydown_track_posx, Animation_AnimTrackPositionX(a3)
	move.l #spriteanim_nymn_laydown_track_posy, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_nymn_laydown_speed, Animation_Speed(a3)
	move.b #spriteanim_nymn_laydown_numframes, Animation_Length(a3)
	move.b #0x0, Animation_Looping(a3)
	move.b #0x1, Animation_ZeroVelocity(a3)
	
	; Wake up
	move.l a2, a3
	add.l  #(Animation_Struct_Size*PlayerAnimIdx_Wake), a3
	move.w #spritesheet_nymn_laydown_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_nymn_wake_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #spriteanim_nymn_wake_track_posx, Animation_AnimTrackPositionX(a3)
	move.l #spriteanim_nymn_wake_track_posy, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_nymn_wake_speed, Animation_Speed(a3)
	move.b #spriteanim_nymn_wake_numframes, Animation_Length(a3)
	move.b #0x0, Animation_Looping(a3)
	move.b #0x1, Animation_ZeroVelocity(a3)
	
	; Raise head then back to sleep
	move.l a2, a3
	add.l  #(Animation_Struct_Size*PlayerAnimIdx_wakesleep), a3
	move.w #spritesheet_nymn_laydown_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_nymn_wakesleep_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #spriteanim_nymn_wakesleep_track_posx, Animation_AnimTrackPositionX(a3)
	move.l #spriteanim_nymn_wakesleep_track_posy, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_nymn_wakesleep_speed, Animation_Speed(a3)
	move.b #spriteanim_nymn_wakesleep_numframes, Animation_Length(a3)
	move.b #0x0, Animation_Looping(a3)
	move.b #0x1, Animation_ZeroVelocity(a3)
	
	; Nervous look back
	move.l a2, a3
	add.l  #(Animation_Struct_Size*PlayerAnimIdx_IdleLookBack), a3
	move.w #spritesheet_nymn_lookback_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_nymn_lookback_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_nymn_lookback_speed, Animation_Speed(a3)
	move.b #spriteanim_nymn_lookback_numframes, Animation_Length(a3)
	move.b #0x0, Animation_Looping(a3)
	move.b #0x1, Animation_ZeroVelocity(a3)
	
	; Mount a Djakk
	move.l a2, a3
	add.l  #(Animation_Struct_Size*PlayerAnimIdx_Mount), a3
	move.w #spritesheet_nymn_mountdjakk_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_nymn_mountdjakk_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #spriteanim_nymn_mountdjakk_track_posx, Animation_AnimTrackPositionX(a3)
	move.l #spriteanim_nymn_mountdjakk_track_posy, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_nymn_mountdjakk_speed, Animation_Speed(a3)
	move.b #spriteanim_nymn_mountdjakk_numframes, Animation_Length(a3)
	move.b #0x0, Animation_Looping(a3)
	move.b #0x1, Animation_ZeroVelocity(a3)

	; Howl
	move.l a2, a3
	add.l  #(Animation_Struct_Size*PlayerAnimIdx_Howl), a3
	move.w #spritesheet_nymn_calllong_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_nymn_calllong_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.l #spriteanim_nymn_calllong_track_sfx, Animation_AnimTrackSFX(a3)
	move.b #spriteanim_nymn_calllong_speed, Animation_Speed(a3)
	move.b #spriteanim_nymn_calllong_numframes, Animation_Length(a3)
	move.b #0x0, Animation_Looping(a3)
	move.b #0x1, Animation_ZeroVelocity(a3)
	
	;==============================================================
	
	; Setup Nymn specific animations
	; TODO: Export Animation structs from editor, use LOAD_ANIMATION macro
	move.l a0, a2
	add.l  #Nymn_Animations, a2
	
	; Pick up Echo
	move.l a2, a3
	add.l  #(Animation_Struct_Size*NymnAnimIdx_PickupEcho), a3
	move.w #spritesheet_nymn_pickupecho_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_nymn_pickupecho_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_nymn_pickupecho_speed, Animation_Speed(a3)
	move.b #spriteanim_nymn_pickupecho_numframes, Animation_Length(a3)
	move.b #0x0, Animation_Looping(a3)
	move.b #0x1, Animation_ZeroVelocity(a3)
	
	rts

NymnLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	PUSHL  a1

	; Alloc VRAM
	move.w #sprite_nymn_size_b, d0
	jsr    VRAM_PoolAlloc
	
	; Load sprite
	lea    spritesheets_nymn, a1
	lea    sprite_nymn_subsprite_dimensions_bits, a2
	lea    sprite_nymn_subsprite_pos_offsets, a3
	lea    sprite_nymn_numtiles_per_subsprite, a4
	move.l #sprite_nymn_size_t, d1
	move.b #sprite_nymn_size_subsprites, d2
	move.w #sprite_nymn_widthheight_subsprites, d3
	move.b #PaletteID_Player, d4
	move.b #0x0, d5
	jsr    SpriteObjLoad

	POPL   a1

	rts
	
NymnUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Determine if carrying Echo
	move.b Nymn_CarryEchoState(a0), d0
	cmp.b  #NymnCarryEcho_Inactive, d0
	beq    @NotCarrying
	
	; If carrying echo
	cmp.b  #NymnCarryEcho_Carrying, d0
	beq    @Carrying
	
	;==============================================================
	
	; Wait for Echo to begin landing
	move.l #Player2, a2
	cmp.b  #EchoMountNymn_Mounting, Echo_MountedState(a2)
	bne    @WaitingToCatch
	
	;==============================================================
	
	; Echo has landed, play catch animation
	PUSHL  a1
	move.l a0, a1
	add.l  #Nymn_Animations, a1
	move.l #(NymnAnimIdx_PickupEcho*Animation_Struct_Size), d1
	add.l  d1, a1
	jsr    AnimObjSetAnimation
	POPL   a1
	
	; Set carrying state
	move.b #NymnCarryEcho_Carrying, Nymn_CarryEchoState(a0)
	
	;==============================================================
	
	@NotCarrying:
	@Carrying:
	@WaitingToCatch:
	
	; Base functionality
	jsr PlayerUpdate
	
	rts
	
NymnStartInteract:
	; a0 --- GameObj addr
	; NB: Gamepad state in d0-d1, leave alone
	
	move.l d0, -(sp)
	move.l d1, -(sp)

	IFND TANGLWD_INCLUDE_ECHO

	; Base functionality
	jsr    PlayerStartInteract

	ELSE ; TANGLWD_INCLUDE_ECHO
	
	; Check if already interacting
	cmp.b  #Player_Interaction_None, Player_InteractionType(a0)
	bne    @AlreadyInteracting
	
	; Check if player dead
	cmp.b  #0x1, Character_Dead(a0)
	beq    @Dead
	
	; Bounds test with Echo
	move.l #Player2, a2
	PHYSICS_GETBOUNDS d1,d2,d5,a0
	PHYSICS_GETBOUNDS d3,d4,d5,a2
	jsr    PHYS_TestBoxIntersectBox
	cmp.b  #0x0, d0
	beq    @EchoNotFound
	
	; Near Echo, begin carry sequence
	jsr    NymnBeginCarryEcho
	
	PUSHL  a0
	move.l #Player2, a0
	jsr    EchoBeginCarried
	POPL   a0
	
	bra    @EchoFound
	
	@EchoNotFound:
	
	; Base functionality
	jsr    PlayerStartInteract

	; If no interaction started
	cmp.b  #Player_Interaction_None, Player_InteractionType(a0)
	bne    @AlreadyInteracting

	; If at zero velocity
	cmp.l  #0x0, PhysicsObj_VelX(a0)
	bne    @Moving
	cmp.l  #0x0, PhysicsObj_VelY(a0)
	bne    @Moving

	; If in idle state and not waiting on another anim
	cmp.b  #CharacterAnimIdx_Idle, Character_AnimIdx(a0)
	bne    @NotIdle
	move.l AnimObj_CurrentAnim(a0), a2
	cmp.b  #0x0, Animation_Looping(a2), d0
	beq    @NotIdle

	; Howl
	jsr    NymnHowl

	@Moving:
	@NotIdle:

	@AlreadyInteracting:
	@Dead:
	@EchoFound:

	ENDIF ; TANGLWD_INCLUDE_ECHO
	
	move.l (sp)+, d1
	move.l (sp)+, d0
	
	rts
	
NymnCancelInteract:
	; a0 --- GameObj addr
	; NB: Gamepad state in d0-d1, leave alone
	
	move.l d0, -(sp)
	move.l d1, -(sp)

	IFND TANGLWD_INCLUDE_ECHO

	; Base functionality
	jsr    PlayerCancelInteract

	ELSE ; TANGLWD_INCLUDE_ECHO
	
	; If carrying Echo
	cmp.b  #NymnCarryEcho_Inactive, Nymn_CarryEchoState(a0)
	beq    @NotCarryingEcho
	
	; Put him down
	jsr    NymnEndCarryEcho
	
	PUSHL  a0
	move.l #Player2, a0
	jsr    EchoEndCarried
	POPL   a0
	
	bra    @CarryingEcho
	
	@NotCarryingEcho:
	
	; Base functionality
	jsr    PlayerCancelInteract
	
	@CarryingEcho:

	ENDIF ; TANGLWD_INCLUDE_ECHO
	
	move.l (sp)+, d1
	move.l (sp)+, d0
	
	rts
	
NymnBeginCarryEcho:
	; a0 --- GameObj addr
	; a1 --- Level addr

	IFD TANGLWD_INCLUDE_ECHO
	
	; Cancel velocity and acceleration
	move.l #0x0, PhysicsObj_VelX(a0)
	move.l #0x0, PhysicsObj_VelY(a0)
	move.w #0x0, PhysicsObj_AccelX(a0)
	move.w #0x0, PhysicsObj_AccelY(a0)

	; Swap out idle and walk anims for carry versions
	move.l a0, a2
	add.l  #Character_Animations, a2
	
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_Idle), a3
	move.w #spritesheet_nymn_carryechoidle_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_nymn_carryechoidle_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_nymn_carryechoidle_speed, Animation_Speed(a3)
	move.b #spriteanim_nymn_carryechoidle_numframes, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)
	move.b #0x0, Animation_ZeroVelocity(a3)
	
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_Walk), a3
	move.w #spritesheet_nymn_carryechowalk_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_nymn_carryechowalk_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_nymn_carryechowalk_speed, Animation_Speed(a3)
	move.b #spriteanim_nymn_carryechowalk_numframes, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)
	move.b #0x0, Animation_ZeroVelocity(a3)
	
	; Begin catching/carrying sequence
	move.b #NymnCarryEcho_Catching, Nymn_CarryEchoState(a0)
	
	; Set interaction type
	move.b #Player_Interaction_Custom, Player_InteractionType(a0)
	
	; Can't run
	jsr    CharacterCancelRun
	move.l #Player1MaxVelXWalk, Character_MaxVelXRun(a0)

	ENDIF ; TANGLWD_INCLUDE_ECHO

	rts
	
NymnEndCarryEcho:
	; a0 --- GameObj addr
	; a1 --- Level addr

	IFD TANGLWD_INCLUDE_ECHO
	
	; Cancel velocity and acceleration
	move.l #0x0, PhysicsObj_VelX(a0)
	move.l #0x0, PhysicsObj_VelY(a0)
	move.w #0x0, PhysicsObj_AccelX(a0)
	move.w #0x0, PhysicsObj_AccelY(a0)

	; Restore default idle and walk anims
	move.l a0, a2
	add.l  #Character_Animations, a2
	
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_Idle), a3
	move.w #spritesheet_nymn_idle_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_nymn_idle_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_nymn_idle_speed, Animation_Speed(a3)
	move.b #spriteanim_nymn_idle_numframes, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)
	
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_Walk), a3
	move.w #spritesheet_nymn_walk_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_nymn_run_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_nymn_walk_speed, Animation_Speed(a3)
	move.b #spriteanim_nymn_run_numframes, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)
	
	; No longer carrying
	move.b #NymnCarryEcho_Inactive, Nymn_CarryEchoState(a0)
	
	; No longer interacting
	move.b #Player_Interaction_None, Player_InteractionType(a0)
	
	; Can run
	jsr    CharacterStartRun
	move.l #Player1MaxVelXRun, Character_MaxVelXRun(a0)

	ENDIF ; TANGLWD_INCLUDE_ECHO

	rts

NymnHowl:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Start howling anim
	PUSHL  a1
	move.l a0, a1
	add.l  #Player_Animations, a1
	move.l #(PlayerAnimIdx_Howl*Animation_Struct_Size), d1
	add.l  d1, a1
	jsr    AnimObjSetAnimation
	POPL   a1

	IFD TANGLWD_INCLUDE_ECHO

	; Start Echo's howl timer
	PUSHL  a0
	move.l #Player2, a0
	jsr    EchoStartHowlTimer
	POPL   a0

	ENDIF ; TANGLWD_INCLUDE_ECHO

	rts