;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   errors.asm - Error codes for RAISE_EXCEPTION macro
;==============================================================

error_out_of_vram			equ 0x90
error_out_of_sprites		equ 0x91

error_dma_queue_full		equ 0xA0
error_vdp_queue_full		equ 0xA1

error_obj_already_in_list	equ 0xB0
error_obj_not_in_list		equ 0xB1