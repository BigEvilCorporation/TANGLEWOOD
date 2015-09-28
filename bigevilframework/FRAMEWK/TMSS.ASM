;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   SEGA Genesis Framework (c) Matt Phillips 2014
;==============================================================
;   tmss.asm - TMSS checks and initialisation
;==============================================================

InitTMSS:

	move.b hardware_ver_address, d0 ; Move Megadrive hardware version to d0
	andi.b #0x0F, d0             ; The version is stored in last four bits, so mask it with 0F
	beq @Skip                    ; If version is equal to 0, skip TMSS signature
	move.l #tmss_signature, tmss_address ; Move the string "SEGA" to 0xA14000
	@Skip:

	; Check VDP
	move.w vdp_control, d0     ; Read VDP status register (hangs if no access)
	
	rts