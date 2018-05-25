;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   SEGA Genesis Framework (c) Matt Phillips 2018
;==============================================================
;   atgames.asm - Utils for wrangling AtGames machines
;==============================================================
;   Big big thanks to Esrael from sonicretro.org!
;==============================================================

atgames_addr_reg_latch		equ 0x00000000
atgames_addr_psg_freq		equ 0x00B00018
atgames_addr_fm_freq		equ 0x00B01054
atgames_addr_fm_clk			equ 0x00B01055

atgames_latch_on			equ 0xFFFF
atgames_latch_off			equ 0xFFF7

atgames_psg_freq			equ 0x78
atgames_fm_freq				equ 0x26
atgames_fm_clk				equ 0x20

atgames_default_psg_freq	equ 0x00
atgames_default_fm_freq		equ 0x30
atgames_default_fm_clk		equ 0x20

	; Configures AtGames Firecore audio
SYS_Init_AtGames_Firecore:
	; ---------------------------------------------------------------------------------------------------------
	; SYS_Init_AtGames_Firecore
	; ---------------------------------------------------------------------------------------------------------
	; Configures an AtGames Firecore FM frequency, FM clock, PSG clock, and disabled SSG-EG
	; ---------------------------------------------------------------------------------------------------------

	move.w #atgames_latch_on, atgames_addr_reg_latch	; Latch 0x0000
	move.b #atgames_psg_freq, atgames_addr_psg_freq		; Write new PSG frequency
	move.b #atgames_fm_freq, atgames_addr_fm_freq		; Write new FM frequency
	move.b #atgames_fm_clk, atgames_addr_fm_clk			; Write new FM clock
	move.w #atgames_latch_off, atgames_addr_reg_latch	; Un-latch

	; Disable SSG-EG
	jsr    SND_DisableSSGEG

	rts
