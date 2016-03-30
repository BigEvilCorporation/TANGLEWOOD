Anim_NymnIdle:
	dc.b AnimFrame_NymnIdle
Anim_NymnIdle_End
Anim_NymnIdle_SizeB: equ (Anim_NymnIdle_End-Anim_NymnIdle)
Anim_NymnIdle_Speed: equ 0x0

	Even

Anim_NymnWalk:
	dc.b AnimFrame_NymnWalk+0
	dc.b AnimFrame_NymnWalk+1
	dc.b AnimFrame_NymnWalk+2
	dc.b AnimFrame_NymnWalk+3
	dc.b AnimFrame_NymnWalk+4
	dc.b AnimFrame_NymnWalk+5
	dc.b AnimFrame_NymnWalk+6
	dc.b AnimFrame_NymnWalk+7
Anim_NymnWalk_End
Anim_NymnWalk_SizeB: equ (Anim_NymnWalk_End-Anim_NymnWalk)
Anim_NymnWalk_Speed: equ 0x20

	Even
	
Anim_NymnRun:
	dc.b AnimFrame_NymnRun+0
	dc.b AnimFrame_NymnRun+1
	dc.b AnimFrame_NymnRun+2
	dc.b AnimFrame_NymnRun+3
	dc.b AnimFrame_NymnRun+4
Anim_NymnRun_End
Anim_NymnRun_SizeB: equ (Anim_NymnRun_End-Anim_NymnRun)
Anim_NymnRun_Speed: equ 0x30

	Even
	
Anim_NymnWalkToRun:
	dc.b AnimFrame_NymnWalkToRun
Anim_NymnWalkToRun_End
Anim_NymnWalkToRun_SizeB: equ (Anim_NymnWalkToRun_End-Anim_NymnWalkToRun)
Anim_NymnWalkToRun_Speed: equ 0x30

	Even
	
Anim_NymnJump:
	dc.b AnimFrame_NymnJump+0
	dc.b AnimFrame_NymnJump+1
	dc.b AnimFrame_NymnJump+2
	dc.b AnimFrame_NymnJump+3
	dc.b AnimFrame_NymnJump+4
	dc.b AnimFrame_NymnJump+5
	dc.b AnimFrame_NymnJump+6
	dc.b AnimFrame_NymnJump+7
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
	dc.b AnimFrame_NymnPush+0
	dc.b AnimFrame_NymnPush+1
	dc.b AnimFrame_NymnPush+2
	dc.b AnimFrame_NymnPush+3
	dc.b AnimFrame_NymnPush+4
	dc.b AnimFrame_NymnPush+5
	dc.b AnimFrame_NymnPush+6
	dc.b AnimFrame_NymnPush+7
Anim_NymnPush_End
Anim_NymnPush_SizeB: equ (Anim_NymnPush_End-Anim_NymnPush)
Anim_NymnPush_Speed: equ 0x20

	Even
	
Anim_NymnSwitch:
	dc.b AnimFrame_NymnSwitch+0
	dc.b AnimFrame_NymnSwitch+1
	dc.b AnimFrame_NymnSwitch+2
	dc.b AnimFrame_NymnSwitch+3
	dc.b AnimFrame_NymnSwitch+4
	dc.b AnimFrame_NymnSwitch+5
	dc.b AnimFrame_NymnSwitch+6
	dc.b AnimFrame_NymnSwitch+7
	dc.b AnimFrame_NymnSwitch+8
	dc.b AnimFrame_NymnSwitch+9
	dc.b AnimFrame_NymnSwitch+10
	dc.b AnimFrame_NymnSwitch+11
	dc.b AnimFrame_NymnSwitch+12
Anim_NymnSwitch_End
Anim_NymnSwitch_SizeB: equ (Anim_NymnSwitch_End-Anim_NymnSwitch)
Anim_NymnSwitch_Speed: equ 0x20

	Even

Anim_NymnGlide:
	dc.b AnimFrame_NymnGlide+0
	dc.b AnimFrame_NymnGlide+1
	dc.b AnimFrame_NymnGlide+2
	dc.b AnimFrame_NymnGlide+3
Anim_NymnGlide_End
Anim_NymnGlide_SizeB: equ (Anim_NymnGlide_End-Anim_NymnGlide)
Anim_NymnGlide_Speed: equ 0x30

	Even
	
Anim_NymnDeath_Default:
	dc.b AnimFrame_NymnDead+0
	dc.b AnimFrame_NymnDead+1
	dc.b AnimFrame_NymnDead+2
	dc.b AnimFrame_NymnDead+3
	dc.b AnimFrame_NymnDead+4
	dc.b AnimFrame_NymnDead+5
	dc.b AnimFrame_NymnDead+6
	dc.b AnimFrame_NymnDead+7
	dc.b AnimFrame_NymnDead+8
	dc.b AnimFrame_NymnDead+9
	dc.b AnimFrame_NymnDead+10
	dc.b AnimFrame_NymnDead+11
	dc.b AnimFrame_NymnDead+12
	dc.b AnimFrame_NymnDead+13
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
	
Anim_NymnSleep:
	dc.b AnimFrame_NymnDead+0
	dc.b AnimFrame_NymnDead+1
	dc.b AnimFrame_NymnDead+2
	dc.b AnimFrame_NymnDead+3
	dc.b AnimFrame_NymnDead+4
	dc.b AnimFrame_NymnDead+5
	dc.b AnimFrame_NymnDead+6
	dc.b AnimFrame_NymnDead+7
	dc.b AnimFrame_NymnDead+8
	dc.b AnimFrame_NymnDead+9
	dc.b AnimFrame_NymnDead+10
	dc.b AnimFrame_NymnDead+11
	dc.b AnimFrame_NymnDead+12
	dc.b AnimFrame_NymnDead+13
Anim_NymnSleep_End
Anim_NymnSleep_PosX:
	dc.b 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00
Anim_NymnSleep_SizeB: equ (Anim_NymnSleep_End-Anim_NymnSleep)
Anim_NymnSleep_Speed: equ 0x20

	Even
	