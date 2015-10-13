Anim_SonicIdle:
	dc.b 0x0
Anim_SonicIdle_End
Anim_SonicIdle_SizeB: equ (Anim_SonicIdle_End-Anim_SonicIdle)
Anim_SonicIdle_Speed: equ 0x0

	Even

Anim_SonicWalk:
	dc.b 0x1, 0x2, 0x3, 0x4, 0x5, 0x6
Anim_SonicWalk_End
Anim_SonicWalk_SizeB: equ (Anim_SonicWalk_End-Anim_SonicWalk)
Anim_SonicWalk_Speed: equ 0x18

	Even
	
Anim_SonicRun:
	dc.b 0x1, 0x2, 0x3, 0x4, 0x5, 0x6
Anim_SonicRun_End
Anim_SonicRun_SizeB: equ (Anim_SonicRun_End-Anim_SonicRun)
Anim_SonicRun_Speed: equ 0x28

	Even
	
Anim_SonicJump:
	dc.b 0x7, 0x8, 0x9, 0xA
Anim_SonicJump_End
Anim_SonicJump_SizeB: equ (Anim_SonicJump_End-Anim_SonicJump)
Anim_SonicJump_Speed: equ 0x40

	Even
	
Anim_SonicHang:
	dc.b 0xB
Anim_SonicHang_End
Anim_SonicHang_SizeB: equ (Anim_SonicHang_End-Anim_SonicHang)
Anim_SonicHang_Speed: equ 0x40

	Even
	
Anim_SonicPush:
	dc.b 0xC, 0xD, 0xE, 0xF
Anim_SonicPush_End
Anim_SonicPush_SizeB: equ (Anim_SonicPush_End-Anim_SonicPush)
Anim_SonicPush_Speed: equ 0x10

	Even
	
Anim_SonicSwitch:
	dc.b 0x10, 0x11
Anim_SonicSwitch_End
Anim_SonicSwitch_SizeB: equ (Anim_SonicSwitch_End-Anim_SonicSwitch)
Anim_SonicSwitch_Speed: equ 0x10

	Even
