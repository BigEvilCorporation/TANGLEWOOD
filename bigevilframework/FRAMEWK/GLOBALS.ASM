;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   SEGA Genesis Framework (c) Matt Phillips 2014
;==============================================================
;   globals.asm - Framework globals
;==============================================================

; ************************************
; Build #
; ************************************
build_date			dc.b '\#_day/\#_month/\#_year',0
	even

; ************************************
; Constants
; ************************************
num_palettes		equ 0x4

screen_width		equ 0x0140 ; 320 (H40 mode)
screen_height		equ 0x00E0 ; 224 (V28 mode)

frames_per_second_pal	equ 0x32
frames_per_second_ntsc	equ 0x3C

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
size_tile_w			equ (size_tile_b/size_word)
size_tile_n			equ (size_tile_b*2)

size_screen_n:		equ (screen_width*screen_height)	;  Size in nybbles/pixels
size_screen_b:		equ (size_screen_n/2)   			;  Size in bytes
size_screen_w:		equ (size_screen_b/size_word)		;  Size in words
size_screen_l:		equ (size_screen_b/size_long)		;  Size in longs
size_screen_t:		equ (size_screen_b/size_tile_b)		;  Size in tiles

size_plane_t:		equ (vdp_plane_width*vdp_plane_height)
size_plane_b:		equ (size_plane_t*size_tile_b)

size_collision_tile_b equ 0x8
size_collision_tile_w equ (size_tile_b/size_word)


; ************************************
; 16.16 precision
; ************************************
subpixels_per_pixel 	equ 0x00010000	; Uses bit shift to transform - don't change

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
; Status register
; ************************************
status_reg_trace		equ (1<<15)
status_reg_unused1		equ (1<<14)
status_reg_supervisor	equ (1<<13)
status_reg_unused2		equ (1<<12)
status_reg_unused3		equ (1<<11)
status_reg_int2			equ (1<<10)
status_reg_int1			equ (1<<9)
status_reg_int0			equ (1<<8)
status_reg_unused4		equ (1<<7)
status_reg_unused5		equ (1<<6)
status_reg_unused6		equ (1<<5)
status_reg_ccr_extend	equ (1<<4)
status_reg_ccr_negative	equ (1<<3)
status_reg_ccr_zero		equ (1<<2)
status_reg_ccr_overflow	equ (1<<1)
status_reg_ccr_carry	equ (1<<0)

status_reg_int_disable	equ (status_reg_int0|status_reg_int1|status_reg_int2)

	IFD DEBUG
status_reg_init			equ (status_reg_supervisor|status_reg_int0|status_reg_int1|status_reg_trace)
	ELSE
status_reg_init			equ (status_reg_supervisor|status_reg_int0|status_reg_int1)
	ENDIF

; ************************************
; Z80
; ************************************
z80_bus_request			equ 0x00A11100
z80_bus_reset			equ 0x00A11200
z80_ram_start			equ 0x00A00000

; ************************************
; Streaming
; ************************************
map_block_width			equ 0x4		; Uses shifts, don't change
map_block_height		equ 0x4		; Uses shifts, don't change

; ************************************
; VDP
; ************************************
vdp_plane_width			equ 0x0040 ; 64 tiles X
vdp_plane_height		equ 0x0020 ; 32 tiles Y
vdp_plane_width_blocks  equ (vdp_plane_width/map_block_width)
vdp_plane_height_blocks equ (vdp_plane_height/map_block_height)
vdp_plane_size_t		equ (vdp_plane_width*vdp_plane_height)
vdp_plane_size_b		equ (vdp_plane_size_t*size_word)
vdp_plane_border_x		equ (vdp_plane_width-(screen_width/8))/2
vdp_plane_border_y		equ (vdp_plane_height-(screen_height/8))/2
vdp_sprite_plane_width	equ 0x0200
vdp_sprite_plane_height	equ 0x0200
vdp_sprite_border_x		equ 0x0080
vdp_sprite_border_y		equ 0x0080
vdp_max_tiles			equ (0xC000/size_tile_b)
vdp_max_sprites			equ 0x40

vdp_num_registers		equ 0x18

vdp_control             equ 0x00C00004
vdp_data                equ 0x00C00000
vdp_hcounter			equ 0x00C00008

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
vdp_cmd_dma_vsram_write equ 0x40000090

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

; VDP general register bits
vdp_reg0_enablehint		   equ 0x10
vdp_reg1_enablevint		   equ 0x40
vdp_reg1_enabledisplay     equ 0x20

; ************************************
; HINT effects
; ************************************
hint_max_size			   equ 0x0100

; ************************************
; PSG
; ************************************
psg_control             equ 0x00C00011

; ************************************
; FM
; ************************************

fm_control				equ 0x00A04000
fm_data					equ 0x00A04001
fm_reg_timer_b			equ 0x26
fm_timer_b_ntsc			equ 0xC9
fm_timer_b_pal			equ 0xBD

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

pad_button_all			equ 0x303F

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
; Terrain/collision tile id/flags
; ************************************
col_tile_mask_flags	  	  equ 0xE000
col_tile_mask_tileid	  equ 0x1FFF
col_tile_flag_solid 	  equ (1<<13)	; Solid tile (wall/floor/ceiling)
col_tile_flag_hole	 	  equ (1<<14)	; Terrain can be ignored (for jumping down holes, etc)
col_tile_flag_special	  equ (1<<15)	; Specially marked terrain, gameplay specific

; ************************************
; Legacy VDP write longs - do not use
; ************************************
vdp_write_register		equ 0x00008000 ; Legacy, do not use
vdp_write_palettes		equ 0xC0000000 ; Legacy, do not use
vdp_write_tiles			equ 0x40000000 ; Legacy, do not use
vdp_write_plane_a		equ 0x40000003 ; Legacy, do not use
vdp_write_sprite_table	equ 0x70000003 ; Legacy, do not use
vdp_write_hscroll_a     equ 0x7C000003 ; Legacy, do not use
vdp_write_vscroll_a     equ 0x40000010 ; Legacy, do not use
vdp_write_hscroll_b     equ 0x7C020003 ; Legacy, do not use
vdp_write_vscroll_b     equ 0x40020010 ; Legacy, do not use

vdp_read_palettes		equ 0x00000020 ; Legacy, do not use
vdp_read_tiles          equ 0x00000000 ; Legacy, do not use
vdp_read_plane_a		equ 0x00000003 ; Legacy, do not use
vdp_read_sprite_table   equ 0x30000003 ; Legacy, do not use
vdp_read_vscroll        equ 0x00000010 ; Legacy, do not use

	inform 0,""
	inform 0,"-----------------------------------"
	inform 0,"BIG EVIL FRAMEWORK"
	inform 0,"Matt Phillips (c) 2015"
	inform 0,"http://www.bigevilcorporation.co.uk"
	inform 0,"-----------------------------------"
	inform 0,""
	inform 0,"-----------------------------------"
	IFD DEBUG
	inform 0,"Build config: DEBUG"
	ELSE
	IFD FINAL
	inform 0,"Build config: FINAL"
	ELSE
	inform 0,"Build config: EMULATOR"
	ENDIF
	ENDIF
	inform 0,"-----------------------------------"
	inform 0,"RAM start: 0x%h", ram_start
	inform 0,"RAM size: 0x%h", size_ram_b
	inform 0,"Stack top: 0x%h", stack_top
	inform 0,"VDP screen width: %d",screen_width
	inform 0,"VDP screen height: %d",screen_height
	inform 0,"VDP scroll width: %d tiles",vdp_plane_width
	inform 0,"VDP scroll height: %d tiles",vdp_plane_height
	inform 0,"VDP max tiles: %d",vdp_max_tiles
	inform 0,"VDP plane A addr: 0x%h",vram_addr_plane_a
	inform 0,"VDP plane B addr: 0x%h",vram_addr_plane_b
	inform 0,"VDP sprite tbl addr: 0x%h",vram_addr_sprite_table
	inform 0,"VDP hscroll addr: 0x%h",vram_addr_hscroll
	inform 0,"-----------------------------------"
	inform 0,""
