;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   echo.asm - Nymn's little brother
;==============================================================

; Constants
EchoHowlDelay				equ 0x0030	; Delay between Nymn and Echo howling

; Animations
EchoAnimIdx_JumpToNymn    	equ 0
EchoAnimIdx_MountNymn    	equ 1
; -------------------------------
EchoAnimIdx_Max       		equ 2

; Mount/ride Nymn state
EchoMountNymn_Inactive		equ 0
EchoMountNymn_Jumping		equ 1
EchoMountNymn_Mounting		equ 2
EchoMountNymn_Riding		equ 3

; ************************************
; Struct
; ************************************
	rsset (Player_Struct_Size)
;---------------------------------
Echo_Animations	   			rs.b (Animation_Struct_Size*EchoAnimIdx_Max)
Echo_HowlTimer				rs.w 1
Echo_MountedState			rs.b 1
;---------------------------------
Echo_Struct_Pad      		rs.b 1
Echo_Struct_Size     		rs.b 0

; ************************************
; Subroutines
; ************************************
EchoInit:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Base functionality
	jsr    PlayerInit
	
	; Set update and render routines
	move.l #EchoUpdate, Entity_UpdateRoutine(a0)
	move.l #CharacterDraw, Entity_RenderRoutine(a0)
	
	; Add to update and render lists
	jsr EntityAddToUpdateList
	jsr EntityAddToRenderList
	
	;==============================================================
	
	; Setup default state
	move.w #0x0, Echo_HowlTimer(a0)
	move.b #EchoMountNymn_Inactive, Echo_MountedState(a0)
	
	; Setup interaction routines
	move.l #PlayerStartInteract, Character_InteractStart(a0)
	move.l #PlayerCancelInteract, Character_InteractCancel(a0)
	
	;==============================================================
	
	; Setup default SFX
	IFND DEBUG
	move.l a0, a2
	add.l  #Character_SFX, a2
	
	; Land
	move.l a2, a3
	add.l  #CharacterSFXIdx_Land, a3
	move.l #SFX_Land, (a3)
	ENDIF
	
	;==============================================================

	; Setup default character animations
	move.l a0, a2
	add.l  #Character_Animations, a2

	; Idle
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_Idle), a3
	move.w #spritesheet_Echo_idle_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_Echo_idle_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_Echo_idle_speed, Animation_Speed(a3)
	move.b #spriteanim_Echo_idle_numframes, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)
	
	; Dead
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_Dead), a3
	;move.w #spritesheet_Echo_death_frameoffset, Animation_FirstFrameOffset(a3)
	;move.l #spriteanim_Echo_death_track_frames, Animation_AnimTrackSpriteFrame(a3)
	;move.l #spriteanim_Echo_death_track_posx, Animation_AnimTrackPositionX(a3)
	;move.l #spriteanim_Echo_death_track_posy, Animation_AnimTrackPositionY(a3)
	;move.b #spriteanim_Echo_death_speed, Animation_Speed(a3)
	;move.b #spriteanim_Echo_death_numframes, Animation_Length(a3)
	;move.b #0x0, Animation_Looping(a3)
	;move.b #0x1, Animation_ZeroVelocity(a3)
	move.w #spritesheet_Echo_idle_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_Echo_idle_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_Echo_idle_speed, Animation_Speed(a3)
	move.b #spriteanim_Echo_idle_numframes, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)
	
	; Run
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_Run), a3
	move.w #spritesheet_Echo_run_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_Echo_run_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_Echo_run_speed, Animation_Speed(a3)
	move.b #spriteanim_Echo_run_numframes, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)

	; Walk
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_Walk), a3
	move.w #spritesheet_Echo_walk_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_Echo_walk_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_Echo_walk_speed, Animation_Speed(a3)
	move.b #spriteanim_Echo_walk_numframes, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)

	; Walk to run transition
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_WalkToRun), a3
	move.w #spritesheet_Echo_walktorun_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_Echo_walktorun_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_Echo_walktorun_speed, Animation_Speed(a3)
	move.b #spriteanim_Echo_walktorun_numframes, Animation_Length(a3)
	move.b #0x0, Animation_Looping(a3)

	; Jump
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_Jump), a3
	move.w #spritesheet_Echo_jump_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_Echo_jump_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_Echo_jump_speed, Animation_Speed(a3)
	move.b #spriteanim_Echo_jump_numframes, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)
	
	; Fall
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_Fall), a3
	;move.w #spritesheet_Echo_fall_frameoffset, Animation_FirstFrameOffset(a3)
	;move.l #spriteanim_Echo_fall_track_frames, Animation_AnimTrackSpriteFrame(a3)
	;move.l #0x0, Animation_AnimTrackPositionX(a3)
	;move.l #0x0, Animation_AnimTrackPositionY(a3)
	;move.b #spriteanim_Echo_fall_speed, Animation_Speed(a3)
	;move.b #spriteanim_Echo_fall_numframes, Animation_Length(a3)
	;move.b #0x1, Animation_Looping(a3)
	move.w #spritesheet_Echo_idle_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_Echo_idle_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_Echo_idle_speed, Animation_Speed(a3)
	move.b #spriteanim_Echo_idle_numframes, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)

	; Hang
	;move.l a2, a3
	;add.l  #(Animation_Struct_Size*CharacterAnimIdx_Hang), a3
	;move.l #Anim_EchoHang, Animation_AnimTrackSpriteFrame(a3)
	;move.l #0x0, Animation_AnimTrackPositionX(a3)
	;move.l #0x0, Animation_AnimTrackPositionY(a3)
	;move.b #Anim_EchoHang_Speed, Animation_Speed(a3)
	;move.b #Anim_EchoHang_SizeB, Animation_Length(a3)
	;move.b #0x1, Animation_Looping(a3)
	
	; Water wade
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_WaterWade), a3
	;move.w #spritesheet_Echo_wade_frameoffset, Animation_FirstFrameOffset(a3)
	;move.l #spriteanim_Echo_wade_track_frames, Animation_AnimTrackSpriteFrame(a3)
	;move.l #0x0, Animation_AnimTrackPositionX(a3)
	;move.l #0x0, Animation_AnimTrackPositionY(a3)
	;move.b #spriteanim_Echo_wade_speed, Animation_Speed(a3)
	;move.b #spriteanim_Echo_wade_numframes, Animation_Length(a3)
	;move.b #0x1, Animation_Looping(a3)
	move.w #spritesheet_Echo_idle_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_Echo_idle_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_Echo_idle_speed, Animation_Speed(a3)
	move.b #spriteanim_Echo_idle_numframes, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)
	
	; Glide
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_Glide), a3
	;move.w #spritesheet_Echo_glide_frameoffset, Animation_FirstFrameOffset(a3)
	;move.l #spriteanim_Echo_glide_track_frames, Animation_AnimTrackSpriteFrame(a3)
	;move.l #0x0, Animation_AnimTrackPositionX(a3)
	;move.l #0x0, Animation_AnimTrackPositionY(a3)
	;move.b #spriteanim_Echo_glide_speed, Animation_Speed(a3)
	;move.b #spriteanim_Echo_glide_numframes, Animation_Length(a3)
	;move.b #0x1, Animation_Looping(a3)
	move.w #spritesheet_Echo_idle_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_Echo_idle_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_Echo_idle_speed, Animation_Speed(a3)
	move.b #spriteanim_Echo_idle_numframes, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)

	; Ride
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_RideTrot), a3
	;move.w #spritesheet_Echo_ridedjakk_frameoffset, Animation_FirstFrameOffset(a3)
	;move.l #spriteanim_Echo_ridedjakk_track_frames, Animation_AnimTrackSpriteFrame(a3)
	;move.l #spriteanim_Echo_ridedjakk_track_posx, Animation_AnimTrackPositionX(a3)
	;move.l #spriteanim_Echo_ridedjakk_track_posy, Animation_AnimTrackPositionY(a3)
	;move.b #spriteanim_Echo_ridedjakk_speed, Animation_Speed(a3)
	;move.b #spriteanim_Echo_ridedjakk_numframes, Animation_Length(a3)
	;move.b #0x1, Animation_Looping(a3)
	;move.b #0x0, Animation_ZeroVelocity(a3)
	move.w #spritesheet_Echo_idle_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_Echo_idle_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_Echo_idle_speed, Animation_Speed(a3)
	move.b #spriteanim_Echo_idle_numframes, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)

	; Push (light object)
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_Push), a3
	;move.w #spritesheet_Echo_push_frameoffset, Animation_FirstFrameOffset(a3)
	;move.l #spriteanim_Echo_push_track_frames, Animation_AnimTrackSpriteFrame(a3)
	;move.l #0x0, Animation_AnimTrackPositionX(a3)
	;move.l #0x0, Animation_AnimTrackPositionY(a3)
	;move.b #spriteanim_Echo_push_speed, Animation_Speed(a3)
	;move.b #spriteanim_Echo_push_numframes, Animation_Length(a3)
	;move.b #0x1, Animation_Looping(a3)
	move.w #spritesheet_Echo_idle_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_Echo_idle_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_Echo_idle_speed, Animation_Speed(a3)
	move.b #spriteanim_Echo_idle_numframes, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)
	
	; Push (heavy object)
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_PushHeavy), a3
	;move.w #spritesheet_Echo_pushheavy_frameoffset, Animation_FirstFrameOffset(a3)
	;move.l #spriteanim_Echo_pushheavy_track_frames, Animation_AnimTrackSpriteFrame(a3)
	;move.l #0x0, Animation_AnimTrackPositionX(a3)
	;move.l #0x0, Animation_AnimTrackPositionY(a3)
	;move.b #spriteanim_Echo_pushheavy_speed, Animation_Speed(a3)
	;move.b #spriteanim_Echo_pushheavy_numframes, Animation_Length(a3)
	;move.b #0x1, Animation_Looping(a3)
	move.w #spritesheet_Echo_idle_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_Echo_idle_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_Echo_idle_speed, Animation_Speed(a3)
	move.b #spriteanim_Echo_idle_numframes, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)
	
	;==============================================================
	
	; Setup player animations
	move.l a0, a2
	add.l  #Player_Animations, a2
	
	; Colour switch
	move.l a2, a3
	add.l  #(Animation_Struct_Size*PlayerAnimIdx_Switch), a3
	move.w #spritesheet_Echo_colourswitch_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_Echo_colourswitch_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_Echo_colourswitch_speed, Animation_Speed(a3)
	move.b #spriteanim_Echo_colourswitch_numframes, Animation_Length(a3)
	move.b #0x0, Animation_Looping(a3)
	move.b #0x1, Animation_ZeroVelocity(a3)
	
	; Sleep
	move.l a2, a3
	add.l  #(Animation_Struct_Size*PlayerAnimIdx_Sleep), a3
	;move.w #spritesheet_Echo_sleep_frameoffset, Animation_FirstFrameOffset(a3)
	;move.l #spriteanim_Echo_sleep_track_frames, Animation_AnimTrackSpriteFrame(a3)
	;move.l #spriteanim_Echo_sleep_track_posx, Animation_AnimTrackPositionX(a3)
	;move.l #spriteanim_Echo_sleep_track_posy, Animation_AnimTrackPositionY(a3)
	;move.b #spriteanim_Echo_sleep_speed, Animation_Speed(a3)
	;move.b #spriteanim_Echo_sleep_numframes, Animation_Length(a3)
	;move.b #0x1, Animation_Looping(a3)
	;move.b #0x1, Animation_ZeroVelocity(a3)
	move.w #spritesheet_Echo_idle_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_Echo_idle_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_Echo_idle_speed, Animation_Speed(a3)
	move.b #spriteanim_Echo_idle_numframes, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)
	
	; Lay down
	move.l a2, a3
	add.l  #(Animation_Struct_Size*PlayerAnimIdx_LieDown), a3
	;move.w #spritesheet_Echo_laydown_frameoffset, Animation_FirstFrameOffset(a3)
	;move.l #spriteanim_Echo_laydown_track_frames, Animation_AnimTrackSpriteFrame(a3)
	;move.l #spriteanim_Echo_laydown_track_posx, Animation_AnimTrackPositionX(a3)
	;move.l #spriteanim_Echo_laydown_track_posy, Animation_AnimTrackPositionY(a3)
	;move.b #spriteanim_Echo_laydown_speed, Animation_Speed(a3)
	;move.b #spriteanim_Echo_laydown_numframes, Animation_Length(a3)
	;move.b #0x0, Animation_Looping(a3)
	;move.b #0x1, Animation_ZeroVelocity(a3)
	move.w #spritesheet_Echo_idle_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_Echo_idle_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_Echo_idle_speed, Animation_Speed(a3)
	move.b #spriteanim_Echo_idle_numframes, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)
	
	; Wake up
	move.l a2, a3
	add.l  #(Animation_Struct_Size*PlayerAnimIdx_Wake), a3
	;move.w #spritesheet_Echo_laydown_frameoffset, Animation_FirstFrameOffset(a3)
	;move.l #spriteanim_Echo_wake_track_frames, Animation_AnimTrackSpriteFrame(a3)
	;move.l #spriteanim_Echo_wake_track_posx, Animation_AnimTrackPositionX(a3)
	;move.l #spriteanim_Echo_wake_track_posy, Animation_AnimTrackPositionY(a3)
	;move.b #spriteanim_Echo_wake_speed, Animation_Speed(a3)
	;move.b #spriteanim_Echo_wake_numframes, Animation_Length(a3)
	;move.b #0x0, Animation_Looping(a3)
	;move.b #0x1, Animation_ZeroVelocity(a3)
	move.w #spritesheet_Echo_idle_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_Echo_idle_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_Echo_idle_speed, Animation_Speed(a3)
	move.b #spriteanim_Echo_idle_numframes, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)
	
	; Raise head then back to sleep
	move.l a2, a3
	add.l  #(Animation_Struct_Size*PlayerAnimIdx_wakesleep), a3
	;move.w #spritesheet_Echo_laydown_frameoffset, Animation_FirstFrameOffset(a3)
	;move.l #spriteanim_Echo_wakesleep_track_frames, Animation_AnimTrackSpriteFrame(a3)
	;move.l #spriteanim_Echo_wakesleep_track_posx, Animation_AnimTrackPositionX(a3)
	;move.l #spriteanim_Echo_wakesleep_track_posy, Animation_AnimTrackPositionY(a3)
	;move.b #spriteanim_Echo_wakesleep_speed, Animation_Speed(a3)
	;move.b #spriteanim_Echo_wakesleep_numframes, Animation_Length(a3)
	;move.b #0x0, Animation_Looping(a3)
	;move.b #0x1, Animation_ZeroVelocity(a3)
	move.w #spritesheet_Echo_idle_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_Echo_idle_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_Echo_idle_speed, Animation_Speed(a3)
	move.b #spriteanim_Echo_idle_numframes, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)
	
	; Nervous look back
	move.l a2, a3
	add.l  #(Animation_Struct_Size*PlayerAnimIdx_IdleLookBack), a3
	;move.w #spritesheet_Echo_lookback_frameoffset, Animation_FirstFrameOffset(a3)
	;move.l #spriteanim_Echo_lookback_track_frames, Animation_AnimTrackSpriteFrame(a3)
	;move.l #0x0, Animation_AnimTrackPositionX(a3)
	;move.l #0x0, Animation_AnimTrackPositionY(a3)
	;move.b #spriteanim_Echo_lookback_speed, Animation_Speed(a3)
	;move.b #spriteanim_Echo_lookback_numframes, Animation_Length(a3)
	;move.b #0x0, Animation_Looping(a3)
	;move.b #0x1, Animation_ZeroVelocity(a3)
	move.w #spritesheet_Echo_idle_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_Echo_idle_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_Echo_idle_speed, Animation_Speed(a3)
	move.b #spriteanim_Echo_idle_numframes, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)

	; Howl
	move.l a2, a3
	add.l  #(Animation_Struct_Size*PlayerAnimIdx_Howl), a3
	move.w #spritesheet_echo_calllong_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_echo_calllong_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_echo_calllong_speed, Animation_Speed(a3)
	move.b #spriteanim_echo_calllong_numframes, Animation_Length(a3)
	move.b #0x0, Animation_Looping(a3)
	move.b #0x1, Animation_ZeroVelocity(a3)
	
	;==============================================================
	
	; Setup Echo specific animations
	move.l a0, a2
	add.l  #Echo_Animations, a2
	
	; Jump up to Nymn (same anim as Jump but non-looping)
	move.l a2, a3
	add.l  #(Animation_Struct_Size*EchoAnimIdx_JumpToNymn), a3
	move.w #spritesheet_echo_jump_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_echo_jumptonymn_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #spriteanim_echo_jumptonymn_track_posx, Animation_AnimTrackPositionX(a3)
	move.l #spriteanim_echo_jumptonymn_track_posy, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_echo_jumptonymn_speed, Animation_Speed(a3)
	move.b #spriteanim_echo_jumptonymn_numframes, Animation_Length(a3)
	move.b #0x0, Animation_Looping(a3)
	move.b #0x1, Animation_ZeroVelocity(a3)
	
	; Mount Nymn
	move.l a2, a3
	add.l  #(Animation_Struct_Size*EchoAnimIdx_MountNymn), a3
	move.w #spritesheet_echo_mountnymn_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_echo_mountnymn_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #spriteanim_echo_mountnymn_track_posx, Animation_AnimTrackPositionX(a3)
	move.l #spriteanim_echo_mountnymn_track_posy, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_echo_mountnymn_speed, Animation_Speed(a3)
	move.b #spriteanim_echo_mountnymn_numframes, Animation_Length(a3)
	move.b #0x0, Animation_Looping(a3)
	move.b #0x1, Animation_ZeroVelocity(a3)
	
	rts

EchoLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	PUSHL  a1

	; Alloc VRAM
	move.w #sprite_echo_size_b, d0
	jsr    VRAM_PoolAlloc

	; Load sprite sheet
	lea    spritesheets_echo, a1
	lea    sprite_echo_subsprite_dimensions_bits, a2
	lea    sprite_echo_subsprite_pos_offsets, a3
	lea    sprite_echo_numtiles_per_subsprite, a4
	move.l #sprite_echo_size_t, d1
	move.b #sprite_echo_size_subsprites, d2
	move.w #sprite_echo_widthheight_subsprites, d3
	move.b #PaletteID_Player, d4
	move.b #0x0, d5
	jsr    SpriteObjLoad

	POPL   a1

	rts
	
EchoUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; If mounting Nymn
	move.b Echo_MountedState(a0), d0
	cmp.b #EchoMountNymn_Inactive, d0
	beq   @NotMounted
	
	; If jumping up to Nymn
	cmp.b #EchoMountNymn_Jumping, d0
	beq   @Jumping
	
	; If landing on Nymn
	cmp.b #EchoMountNymn_Mounting, d0
	beq   @Landing
	
	; Finished mounting sequence
	bra   @Riding
	
	;==============================================================
	
	@Jumping:
	
	; Wait for anim to finish
	cmp.b #0x0, AnimObj_Playing(a0)
	bne   @InSequence
	
	; Snap to Nymn's position
	move.l #Player1, a3
	move.l Entity_WorldPosX(a3), Entity_WorldPosX(a0)
	move.l Entity_WorldPosY(a3), Entity_WorldPosY(a0)
	
	; Set mounting anim
	PUSHL  a1
	move.l a0, a1
	add.l  #Echo_Animations, a1
	move.l #(EchoAnimIdx_MountNymn*Animation_Struct_Size), d1
	add.l  d1, a1
	jsr    AnimObjSetAnimation
	POPL   a1
	
	; Set mounting state
	move.b #EchoMountNymn_Mounting, Echo_MountedState(a0)
	
	bra   @InSequence
	
	;==============================================================
	
	@Landing:
	
	; Wait for anim to finish
	cmp.b #0x0, AnimObj_Playing(a0)
	bne   @InSequence
	
	; Set riding state
	move.b #EchoMountNymn_Riding, Echo_MountedState(a0)
	
	;==============================================================
	
	@Riding:
	
	; Lock to Nymn's position
	move.l #Player1, a3
	move.l Entity_WorldPosX(a3), Entity_WorldPosX(a0)
	move.l Entity_WorldPosY(a3), Entity_WorldPosY(a0)
	
	; Sync direction
	move.b SpriteObj_FlippedX(a3), SpriteObj_FlippedX(a0)
	
	;==============================================================
	
	; Set matching animation
	move.b Character_AnimIdx(a3), d0
	move.b Character_AnimIdx(a0), d1
	cmp.b  d0, d1
	beq    @MatchingAnim
	
	move.b d0, Character_AnimIdx(a0)
	
	; Get anim struct address from character
	move.l a1, -(sp)
	move.l a0, a1
	add.l  #Character_Animations, a1
	move.b Character_AnimIdx(a0), d1
	andi.l #0xFF, d0
	mulu   #Animation_Struct_Size, d1
	add.l  d1, a1
	
	; Apply animation
	jsr    AnimObjSetAnimation
	
	move.l (sp)+, a1
	
	@MatchingAnim:
	
	;==============================================================
	
	; If anim frame changed
	move.l AnimObj_AnimSubFrame(a3), d0
	move.l AnimObj_AnimSubFrame(a0), d1
	cmp.l  d0, d1
	beq    @AnimSynced
	
	; Sync animation frame, mark as dirty
	move.l d0, AnimObj_AnimSubFrame(a0)
	move.b #0x1, AnimObj_Dirty(a0)
	
	@InSequence:
	@AnimSynced:
	
	; Update animation only
	jsr    AnimObjUpdate
	
	bra    @Carried
	
	;==============================================================
	
	@NotMounted:
	
	; Default update
	jsr PlayerUpdate

	; Update howl timer
	move.w Echo_HowlTimer(a0), d0
	cmp.w  #0x0, d0
	beq    @TimerNotRunning
	sub.w  #0x1, d0
	move.w d0, Echo_HowlTimer(a0)
	cmp.w  #0x0, d0
	bne    @TimerStillRunning
	jsr    EchoHowl
	@TimerStillRunning:
	@TimerNotRunning:
	
	@Carried:
	
	rts
	
EchoBeginCarried:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Cancel velocity and acceleration
	move.w #0x0, PhysicsObj_VelX(a0)
	move.w #0x0, PhysicsObj_VelY(a0)
	move.w #0x0, PhysicsObj_AccelX(a0)
	move.w #0x0, PhysicsObj_AccelY(a0)

	; Swap out idle and walk anims for carried versions
	move.l a0, a2
	add.l  #Character_Animations, a2
	
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_idle), a3
	move.w #spritesheet_Echo_carriedidle_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_Echo_carriedidle_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #spriteanim_echo_carriedidle_track_posx, Animation_AnimTrackPositionX(a3)
	move.l #spriteanim_echo_carriedidle_track_posy, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_Echo_carriedidle_speed, Animation_Speed(a3)
	move.b #spriteanim_Echo_carriedidle_numframes, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)
	
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_Walk), a3
	move.w #spritesheet_Echo_carriedwalk_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_Echo_carriedwalk_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #spriteanim_echo_carriedwalk_track_posx, Animation_AnimTrackPositionX(a3)
	move.l #spriteanim_echo_carriedwalk_track_posy, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_Echo_carriedwalk_speed, Animation_Speed(a3)
	move.b #spriteanim_Echo_carriedwalk_numframes, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)
	
	; Snap to Nymn's direction
	move.l #Player1, a3
	move.b SpriteObj_FlippedX(a3), SpriteObj_FlippedX(a0)
	
	; Set jumping-to-Nymn anim
	PUSHL  a1
	move.l a0, a1
	add.l  #Echo_Animations, a1
	move.l #(EchoAnimIdx_JumpToNymn*Animation_Struct_Size), d1
	add.l  d1, a1
	jsr    AnimObjSetAnimation
	POPL   a1
	
	; Start mounting sequence
	move.b #EchoMountNymn_Jumping, Echo_MountedState(a0)

	rts
	
EchoEndCarried:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Cancel velocity and acceleration
	move.w #0x0, PhysicsObj_VelX(a0)
	move.w #0x0, PhysicsObj_VelY(a0)
	move.w #0x0, PhysicsObj_AccelX(a0)
	move.w #0x0, PhysicsObj_AccelY(a0)

	; Restore default idle and walk anims
	move.l a0, a2
	add.l  #Character_Animations, a2
	
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_Idle), a3
	move.w #spritesheet_Echo_idle_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_Echo_idle_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_Echo_idle_speed, Animation_Speed(a3)
	move.b #spriteanim_Echo_idle_numframes, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)
	
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_Walk), a3
	;move.w #spritesheet_Echo_walk_frameoffset, Animation_FirstFrameOffset(a3)
	;move.l #spriteanim_Echo_run_track_frames, Animation_AnimTrackSpriteFrame(a3)
	;move.l #0x0, Animation_AnimTrackPositionX(a3)
	;move.l #0x0, Animation_AnimTrackPositionY(a3)
	;move.b #spriteanim_Echo_walk_speed, Animation_Speed(a3)
	;move.b #spriteanim_Echo_run_numframes, Animation_Length(a3)
	;move.b #0x1, Animation_Looping(a3)
	move.w #spritesheet_Echo_idle_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_Echo_idle_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_Echo_idle_speed, Animation_Speed(a3)
	move.b #spriteanim_Echo_idle_numframes, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)
	
	; Jump off
	jsr    CharacterStartJump
	
	; No longer mounting
	move.b #EchoMountNymn_Inactive, Echo_MountedState(a0)

	rts

EchoStartHowlTimer:
	; a0 --- GameObj addr
	; a1 --- Level addr
	move.w #EchoHowlDelay, Echo_HowlTimer(a0)	
	rts

EchoHowl:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Set howling anim
	PUSHL  a1
	move.l a0, a1
	add.l  #Player_Animations, a1
	move.l #(PlayerAnimIdx_Howl*Animation_Struct_Size), d1
	add.l  d1, a1
	jsr    AnimObjSetAnimation
	POPL   a1

	rts