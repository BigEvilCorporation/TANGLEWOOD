Anim_NymnIdle:
	dc.b spritesheet_nymn_idle_frameoffset+0
	dc.b spritesheet_nymn_idle_frameoffset+0
	dc.b spritesheet_nymn_idle_frameoffset+0
	dc.b spritesheet_nymn_idle_frameoffset+0
	dc.b spritesheet_nymn_idle_frameoffset+1
	dc.b spritesheet_nymn_idle_frameoffset+2
	dc.b spritesheet_nymn_idle_frameoffset+3
	dc.b spritesheet_nymn_idle_frameoffset+4
	dc.b spritesheet_nymn_idle_frameoffset+5
Anim_NymnIdle_End
Anim_NymnIdle_SizeB: equ (Anim_NymnIdle_End-Anim_NymnIdle)
Anim_NymnIdle_Speed: equ 0x04

	Even

Anim_NymnWalk:
	dc.b spritesheet_nymn_walk_frameoffset+0
	dc.b spritesheet_nymn_walk_frameoffset+1
	dc.b spritesheet_nymn_walk_frameoffset+2
	dc.b spritesheet_nymn_walk_frameoffset+3
	dc.b spritesheet_nymn_walk_frameoffset+4
	dc.b spritesheet_nymn_walk_frameoffset+5
	dc.b spritesheet_nymn_walk_frameoffset+6
	dc.b spritesheet_nymn_walk_frameoffset+7
Anim_NymnWalk_End
Anim_NymnWalk_SizeB: equ (Anim_NymnWalk_End-Anim_NymnWalk)
Anim_NymnWalk_Speed: equ 0x20

	Even
	
Anim_NymnRun:
	dc.b spritesheet_nymn_run_frameoffset+0
	dc.b spritesheet_nymn_run_frameoffset+1
	dc.b spritesheet_nymn_run_frameoffset+2
	dc.b spritesheet_nymn_run_frameoffset+3
	dc.b spritesheet_nymn_run_frameoffset+4
Anim_NymnRun_End
Anim_NymnRun_SizeB: equ (Anim_NymnRun_End-Anim_NymnRun)
Anim_NymnRun_Speed: equ 0x30

	Even
	
Anim_NymnWalkToRun:
	dc.b spritesheet_nymn_walktorun_frameoffset+0
Anim_NymnWalkToRun_End
Anim_NymnWalkToRun_SizeB: equ (Anim_NymnWalkToRun_End-Anim_NymnWalkToRun)
Anim_NymnWalkToRun_Speed: equ 0x30

	Even
	
Anim_NymnJump:
	dc.b spritesheet_nymn_jump_frameoffset+0
	dc.b spritesheet_nymn_jump_frameoffset+1
	dc.b spritesheet_nymn_jump_frameoffset+2
	dc.b spritesheet_nymn_jump_frameoffset+3
	dc.b spritesheet_nymn_jump_frameoffset+4
	dc.b spritesheet_nymn_jump_frameoffset+5
	dc.b spritesheet_nymn_jump_frameoffset+6
	dc.b spritesheet_nymn_jump_frameoffset+7
Anim_NymnJump_End
Anim_NymnJump_SizeB: equ (Anim_NymnJump_End-Anim_NymnJump)
Anim_NymnJump_Speed: equ 0x40

	Even
	
Anim_NymnHang:
	dc.b 0x0
Anim_NymnHang_End
Anim_NymnHang_SizeB: equ (Anim_NymnHang_End-Anim_NymnHang)
Anim_NymnHang_Speed: equ 0x40

	Even
	
Anim_NymnPush:
	dc.b spritesheet_nymn_push_frameoffset+0
	dc.b spritesheet_nymn_push_frameoffset+1
	dc.b spritesheet_nymn_push_frameoffset+2
	dc.b spritesheet_nymn_push_frameoffset+3
	dc.b spritesheet_nymn_push_frameoffset+4
	dc.b spritesheet_nymn_push_frameoffset+5
	dc.b spritesheet_nymn_push_frameoffset+6
	dc.b spritesheet_nymn_push_frameoffset+7
Anim_NymnPush_End
Anim_NymnPush_SizeB: equ (Anim_NymnPush_End-Anim_NymnPush)
Anim_NymnPush_Speed: equ 0x20

	Even
	
Anim_NymnSwitch:
	dc.b spritesheet_nymn_colourswitch_frameoffset+0
	dc.b spritesheet_nymn_colourswitch_frameoffset+1
	dc.b spritesheet_nymn_colourswitch_frameoffset+2
	dc.b spritesheet_nymn_colourswitch_frameoffset+3
	dc.b spritesheet_nymn_colourswitch_frameoffset+4
	dc.b spritesheet_nymn_colourswitch_frameoffset+5
	dc.b spritesheet_nymn_colourswitch_frameoffset+6
	dc.b spritesheet_nymn_colourswitch_frameoffset+7
	dc.b spritesheet_nymn_colourswitch_frameoffset+8
	dc.b spritesheet_nymn_colourswitch_frameoffset+9
	dc.b spritesheet_nymn_colourswitch_frameoffset+10
	dc.b spritesheet_nymn_colourswitch_frameoffset+11
	dc.b spritesheet_nymn_colourswitch_frameoffset+12
Anim_NymnSwitch_End
Anim_NymnSwitch_SizeB: equ (Anim_NymnSwitch_End-Anim_NymnSwitch)
Anim_NymnSwitch_Speed: equ 0x20

	Even

Anim_NymnGlide:
	dc.b spritesheet_nymn_glide_frameoffset+0
	dc.b spritesheet_nymn_glide_frameoffset+1
	dc.b spritesheet_nymn_glide_frameoffset+2
	dc.b spritesheet_nymn_glide_frameoffset+3
Anim_NymnGlide_End
Anim_NymnGlide_SizeB: equ (Anim_NymnGlide_End-Anim_NymnGlide)
Anim_NymnGlide_Speed: equ 0x30

	Even
	
Anim_NymnDeath_Default:
	dc.b spritesheet_nymn_death_frameoffset+0
	dc.b spritesheet_nymn_death_frameoffset+1
	dc.b spritesheet_nymn_death_frameoffset+2
	dc.b spritesheet_nymn_death_frameoffset+3
	dc.b spritesheet_nymn_death_frameoffset+4
	dc.b spritesheet_nymn_death_frameoffset+5
	dc.b spritesheet_nymn_death_frameoffset+6
	dc.b spritesheet_nymn_death_frameoffset+7
	dc.b spritesheet_nymn_death_frameoffset+8
	dc.b spritesheet_nymn_death_frameoffset+9
	dc.b spritesheet_nymn_death_frameoffset+10
	dc.b spritesheet_nymn_death_frameoffset+11
	dc.b spritesheet_nymn_death_frameoffset+12
	dc.b spritesheet_nymn_death_frameoffset+13
Anim_NymnDeath_Default_End
Anim_NymnDeath_Default_PosX:
	dc.b 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00
Anim_NymnDeath_Default_SizeB: equ (Anim_NymnDeath_Default_End-Anim_NymnDeath_Default)
Anim_NymnDeath_Default_Speed: equ 0x20

	Even
	
Anim_NymnDeath_Fall:
	dc.b AnimFrame_NymnDead+7
	dc.b AnimFrame_NymnDead+8
	dc.b AnimFrame_NymnDead+9
	dc.b AnimFrame_NymnDead+10
	dc.b AnimFrame_NymnDead+11
	dc.b AnimFrame_NymnDead+12
	dc.b AnimFrame_NymnDead+13
Anim_NymnDeath_Fall_End
Anim_NymnDeath_Fall_SizeB: equ (Anim_NymnDeath_Fall_End-Anim_NymnDeath_Fall)
Anim_NymnDeath_Fall_Speed: equ 0x30

	Even
	
Anim_NymnLieDown:
	dc.b spritesheet_nymn_laydown_frameoffset+0
	dc.b spritesheet_nymn_laydown_frameoffset+1
	dc.b spritesheet_nymn_laydown_frameoffset+2
	dc.b spritesheet_nymn_laydown_frameoffset+3
	dc.b spritesheet_nymn_laydown_frameoffset+4
	dc.b spritesheet_nymn_laydown_frameoffset+5
	dc.b spritesheet_nymn_laydown_frameoffset+6
	dc.b spritesheet_nymn_laydown_frameoffset+7
	dc.b spritesheet_nymn_laydown_frameoffset+8
	dc.b spritesheet_nymn_laydown_frameoffset+9
	dc.b spritesheet_nymn_laydown_frameoffset+10
	dc.b spritesheet_nymn_laydown_frameoffset+11
	dc.b spritesheet_nymn_laydown_frameoffset+12
	dc.b spritesheet_nymn_laydown_frameoffset+13
	dc.b spritesheet_nymn_laydown_frameoffset+13
	dc.b spritesheet_nymn_laydown_frameoffset+13
	dc.b spritesheet_nymn_laydown_frameoffset+14
	dc.b spritesheet_nymn_laydown_frameoffset+15
	dc.b spritesheet_nymn_laydown_frameoffset+16
Anim_NymnLieDown_End
Anim_NymnLieDown_PosX:
	dc.b 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
Anim_NymnLieDown_SizeB: equ (Anim_NymnLieDown_End-Anim_NymnLieDown)
Anim_NymnLieDown_Speed: equ 0x18

	Even

Anim_NymnRest:
	dc.b AnimFrame_NymnLieDown+0
	dc.b AnimFrame_NymnLieDown+1
	dc.b AnimFrame_NymnLieDown+2
	dc.b AnimFrame_NymnLieDown+3
	dc.b AnimFrame_NymnLieDown+10
	dc.b AnimFrame_NymnLieDown+11
Anim_NymnRest_End
Anim_NymnRest_PosX:
	dc.b 0x08, 0x00, 0x00, 0x00, 0x00, 0x00
Anim_NymnRest_SizeB: equ (Anim_NymnRest_End-Anim_NymnRest)
Anim_NymnRest_Speed: equ 0x18

	Even
	
Anim_NymnRestToSleep:
	dc.b AnimFrame_NymnLieDown+15
	dc.b AnimFrame_NymnLieDown+16
	dc.b AnimFrame_NymnLieDown+17
Anim_NymnRestToSleep_End
Anim_NymnRestToSleep_SizeB: equ (Anim_NymnRestToSleep_End-Anim_NymnRestToSleep)
Anim_NymnRestToSleep_Speed: equ 0x18

	Even
	
Anim_NymnSleep:
	dc.b spritesheet_nymn_sleep_frameoffset+0
	dc.b spritesheet_nymn_sleep_frameoffset+0
	dc.b spritesheet_nymn_sleep_frameoffset+0
	dc.b spritesheet_nymn_sleep_frameoffset+0
	dc.b spritesheet_nymn_sleep_frameoffset+1
	dc.b spritesheet_nymn_sleep_frameoffset+2
	dc.b spritesheet_nymn_sleep_frameoffset+3
	dc.b spritesheet_nymn_sleep_frameoffset+4
	dc.b spritesheet_nymn_sleep_frameoffset+5
Anim_NymnSleep_End
Anim_NymnSleep_SizeB: equ (Anim_NymnSleep_End-Anim_NymnSleep)
Anim_NymnSleep_Speed: equ 0x0C

	Even
	