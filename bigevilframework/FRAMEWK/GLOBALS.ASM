;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   SEGA Genesis Framework (c) Matt Phillips 2014
;==============================================================
;   globals.asm - Framework globals
;==============================================================

; ************************************
; Constants
; ************************************
num_palettes			equ 0x4

screen_width     		equ 0x0140 ; 320 (H40 mode)
screen_height	        equ 0x00E0 ; 224 (V28 mode)

; ************************************
; Sizes
; ************************************
size_byte:			equ 0x01
size_word:			equ 0x02
size_long:			equ 0x04
size_address		equ 0x04
size_spritedesc:	equ 0x08

size_palette_n:		equ (size_palette_b*2)
size_palette_b:		equ 0x20
size_palette_w:		equ (size_palette_b/size_word)

size_tile_b			equ 0x20
size_tile_n			equ (size_tile_b*2)

size_screen_n:		equ (screen_width*screen_height)	;  Size in nybbles/pixels
size_screen_b:		equ (size_screen_n/2)   			;  Size in bytes
size_screen_w:		equ (size_screen_b/size_word)		;  Size in words
size_screen_l:		equ (size_screen_b/size_long)		;  Size in longs
size_screen_t:		equ (size_screen_b/size_tile_b)		;  Size in tiles

size_plane_t:		equ (vdp_plane_width*vdp_plane_height)
size_plane_b:		equ (size_plane_t*size_tile_b)

; ************************************
; RAM
; ************************************
size_ram_b				equ 0x0000FFFF
size_ram_w				equ (size_ram_b/2)
size_ram_l				equ (size_ram_b/4)
ram_start				equ 0x00FF0000
ram_end					equ (ram_start+size_ram_b)
stack_top				equ 0x00FFE000

; ************************************
; System
; ************************************
hardware_ver_address	equ 0x00A10001
tmss_address			equ 0x00A14000
tmss_signature			equ 'SEGA'
reset_exp				equ 0x00A10008
reset_button			equ 0x00A1000C

; ************************************
; Z80
; ************************************
z80_bus_request			equ 0x00A11100
z80_bus_reset			equ 0x00A11200
z80_ram_start			equ 0x00A00000

; ************************************
; VDP
; ************************************
vdp_plane_width         equ 0x0040 ; 64 tiles X
vdp_plane_height        equ 0x0020 ; 32 tiles Y
vdp_plane_border_x      equ (vdp_plane_width-(screen_width/8))/2
vdp_plane_border_y      equ (vdp_plane_height-(screen_height/8))/2

vdp_num_registers		equ 0x18

vdp_control             equ 0x00C00004
vdp_data                equ 0x00C00000

; **************************************************************************************************************
; To make VDP command:
; **************************************************************************************************************
; - Add VRAM address (vram_addr_*) to dest address
; - Shift address longword left 2 bits (moves bits 14/15 into bits 16/17), shift the lower word back, swap words
; - OR in VDP memory access command (vdp_cmd_*)
; - Write longword to vdp_control
; (TODO: Could do with a macro)
; **************************************************************************************************************

; VDP memory access commands
vdp_cmd_vram_write		equ 0x40000000
vdp_cmd_vram_read		equ 0x00000000
vdp_cmd_cram_write		equ 0xC0000000
vdp_cmd_cram_read		equ 0x00000020
vdp_cmd_vsram_write		equ 0x40000010
vdp_cmd_vsram_read		equ 0x00000010

; VDP memory access commands (DMA)
vdp_cmd_dma_vram_write  equ 0x40000080
vdp_cmd_dma_cram_write  equ 0xC0000080

; VDP DMA modes
vdp_dma_mode_write		equ 0x00
vdp_dma_mode_copy		equ 0xC0
vdp_dma_mode_fill		equ 0x80

; VDP DMA top byte address masks
vdp_dma_addr_mask_write equ 0x7F
vdp_dma_addr_mask_copy  equ 0x3F
vdp_dma_addr_mask_fill  equ 0x3F

; VRAM addresses (must match registers)
vram_addr_tiles			equ 0x0000
vram_addr_plane_a		equ 0xC000
vram_addr_plane_b		equ 0xE000
vram_addr_sprite_table	equ 0xF000
vram_addr_hscroll		equ 0xFC00

; CRAM addreses
cram_addr_pal_0			equ 0x0000

; VDP status register bits
vdp_status_fifoempty       equ 0x9    ; FIFO Empty
vdp_status_fifofull        equ 0x8    ; FIFO Full
vdp_status_vintpending     equ 0x7    ; Vertical interrupt pending
vdp_status_spriteoverflow  equ 0x6    ; Sprite overflow on current scan line
vdp_status_spritecollision equ 0x5    ; Sprite collision
vdp_status_oddframe        equ 0x4    ; Odd frame
vdp_status_vblank          equ 0x3    ; Vertical blanking
vdp_status_hblank          equ 0x2    ; Horizontal blanking
vdp_status_dma             equ 0x1    ; DMA in progress
vdp_status_pal             equ 0x0    ; PAL mode flag

; ************************************
; PSG
; ************************************
psg_control             equ 0x00C00011

; ************************************
; Gamepad ports
; ************************************
pad_data_a              equ 0x00A10003
pad_data_b              equ 0x00A10005
pad_data_c              equ 0x00A10007
pad_ctrl_a              equ 0x00A10009
pad_ctrl_b              equ 0x00A1000B
pad_ctrl_c              equ 0x00A1000D

pad_byte_latch			equ 0x40

pad_button_up           equ 0x0
pad_button_down         equ 0x1
pad_button_left         equ 0x2
pad_button_right        equ 0x3
pad_button_a            equ 0xC
pad_button_b            equ 0x4
pad_button_c            equ 0x5
pad_button_start        equ 0xD

; ************************************
; Mega-CD
; ************************************

; BIOS addresses for various MegaCD types
mcd_bios_addr_1 equ 0x00415800 ; SEGA Model 1
mcd_bios_addr_2 equ 0x00416000 ; SEGA Model 2
mcd_bios_addr_3 equ 0x00416000 ; WonderMega/X'Eye
mcd_bios_addr_4 equ 0x0041AD00 ; LaserActive

; Offset into BIOS to find signature
mcd_sig_offset equ 0x6D

; ************************************
; Terrain/collision bits
; ************************************
col_bit_floor 	  equ 0x0
col_bit_ledge_rhs equ 0x1
col_bit_ledge_lhs equ 0x2
col_bit_wall  	  equ 0x3



; ************************************
; Legacy VDP write longs - do not use
; ************************************
vdp_write_register		equ 0x00008000 ; Legacy, do not use
vdp_write_palettes		equ 0xC0000000 ; Legacy, do not use
vdp_write_tiles			equ 0x40000000 ; Legacy, do not use
vdp_write_plane_a		equ 0x40000003 ; Legacy, do not use
vdp_write_sprite_table	equ 0x70000003 ; Legacy, do not use
vdp_write_hscroll       equ 0x7C000003 ; Legacy, do not use
vdp_write_vscroll       equ 0x40000010 ; Legacy, do not use

vdp_read_palettes		equ 0x00000020 ; Legacy, do not use
vdp_read_tiles          equ 0x00000000 ; Legacy, do not use
vdp_read_plane_a		equ 0x00000003 ; Legacy, do not use
vdp_read_sprite_table   equ 0x30000003 ; Legacy, do not use
vdp_read_vscroll        equ 0x00000010 ; Legacy, do not use