Anim_NymnIdle:
	dc.b 0x0
Anim_NymnIdle_End
Anim_NymnIdle_SizeB: equ (Anim_NymnIdle_End-Anim_NymnIdle)
Anim_NymnIdle_Speed: equ 0x0

	Even

Anim_NymnWalk:
	dc.b 0x1, 0x2, 0x3, 0x4, 0x5, 0x6
Anim_NymnWalk_End
Anim_NymnWalk_SizeB: equ (Anim_NymnWalk_End-Anim_NymnWalk)
Anim_NymnWalk_Speed: equ 0x18

	Even
	
Anim_NymnRun:
	dc.b 0x1, 0x2, 0x3, 0x4, 0x5, 0x6
Anim_NymnRun_End
Anim_NymnRun_SizeB: equ (Anim_NymnRun_End-Anim_NymnRun)
Anim_NymnRun_Speed: equ 0x28

	Even
	
Anim_NymnJump:
	dc.b 0x7, 0x8, 0x9, 0xA
Anim_NymnJump_End
Anim_NymnJump_SizeB: equ (Anim_NymnJump_End-Anim_NymnJump)
Anim_NymnJump_Speed: equ 0x40

	Even
	
Anim_NymnHang:
	dc.b 0xB
Anim_NymnHang_End
Anim_NymnHang_SizeB: equ (Anim_NymnHang_End-Anim_NymnHang)
Anim_NymnHang_Speed: equ 0x40

	Even
	
Anim_NymnPush:
	dc.b 0xC, 0xD, 0xE, 0xF
Anim_NymnPush_End
Anim_NymnPush_SizeB: equ (Anim_NymnPush_End-Anim_NymnPush)
Anim_NymnPush_Speed: equ 0x10

	Even
	
Anim_NymnSwitch:
	dc.b 0x10, 0x11
Anim_NymnSwitch_End
Anim_NymnSwitch_SizeB: equ (Anim_NymnSwitch_End-Anim_NymnSwitch)
Anim_NymnSwitch_Speed: equ 0x10

	Even
