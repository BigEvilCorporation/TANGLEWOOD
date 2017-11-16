;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   globals.asm - Gamelib constants
;==============================================================

; Entity types
entity_type_spriteobj 	equ (1<<0)
entity_type_physicsobj  equ (1<<1)
entity_type_animobj   	equ (1<<2)
entity_type_character 	equ (1<<3)
entity_type_pickup    	equ (1<<4)

; Entity name length
entity_name_length		equ 0x10

; World grid
worldgrid_cell_width		equ 0x100	; World split up into 256x256 cell grid
worldgrid_cell_height		equ 0x100	; (256 because grid coords can just be byte reads from world pos)
worldgrid_max_width_cells	equ 0x100	; Max world width in grid cells
worldgrid_viewport_width	equ 0x3		; World grid viewport width (cells)
worldgrid_viewport_height	equ 0x3		; World grid viewport height (cells)

; Serialisation
serialise_dir_in		equ 0x0
serialise_dir_out		equ 0x1

; Faders
fade_frame_shift		equ 0x6

; Camera
camera_max_vel_x		equ 0x00200000
camera_max_vel_y		equ 0x00040000