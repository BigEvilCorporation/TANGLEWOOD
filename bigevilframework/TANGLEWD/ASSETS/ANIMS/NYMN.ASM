Anim_NymnIdle:
	dc.b 0x0
Anim_NymnIdle_End
Anim_NymnIdle_SizeB: equ (Anim_NymnIdle_End-Anim_NymnIdle)
Anim_NymnIdle_Speed: equ 0x0

	Even

Anim_NymnWalk:
	dc.b 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8
Anim_NymnWalk_End
Anim_NymnWalk_SizeB: equ (Anim_NymnWalk_End-Anim_NymnWalk)
Anim_NymnWalk_Speed: equ 0x20

	Even
	
Anim_NymnRun:
	dc.b 0x9, 0xA, 0xB, 0xC, 0xD
Anim_NymnRun_End
Anim_NymnRun_SizeB: equ (Anim_NymnRun_End-Anim_NymnRun)
Anim_NymnRun_Speed: equ 0x30

	Even
	
Anim_NymnWalkToRun:
	dc.b 0xE
Anim_NymnWalkToRun_End
Anim_NymnWalkToRun_SizeB: equ (Anim_NymnWalkToRun_End-Anim_NymnWalkToRun)
Anim_NymnWalkToRun_Speed: equ 0x30

	Even
	
Anim_NymnJump:
	dc.b 0x0F, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16
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
	dc.b 0x17, 0x18, 0x19, 0x1A, 0x1B, 0x1C, 0x1D, 0x1E
Anim_NymnPush_End
Anim_NymnPush_SizeB: equ (Anim_NymnPush_End-Anim_NymnPush)
Anim_NymnPush_Speed: equ 0x20

	Even
	
Anim_NymnSwitch:
	dc.b 0x1F, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26
Anim_NymnSwitch_End
Anim_NymnSwitch_SizeB: equ (Anim_NymnSwitch_End-Anim_NymnSwitch)
Anim_NymnSwitch_Speed: equ 0x20

	Even

Anim_NymnGlide:
	dc.b 0x27, 0x28, 0x29, 0x2A
Anim_NymnGlide_End
Anim_NymnGlide_SizeB: equ (Anim_NymnGlide_End-Anim_NymnGlide)
Anim_NymnGlide_Speed: equ 0x30

	Even
	
Anim_NymnDead:
	dc.b 0x17, 0x2B
Anim_NymnDead_End
Anim_NymnDead_SizeB: equ (Anim_NymnDead_End-Anim_NymnDead)
Anim_NymnDead_Speed: equ 0x20

	Even
	