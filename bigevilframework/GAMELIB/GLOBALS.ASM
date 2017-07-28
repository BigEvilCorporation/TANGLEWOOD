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

; entity name length
entity_name_length		equ 0x10

; Serialisation
serialise_dir_in		equ 0x0
serialise_dir_out		equ 0x1

; Faders
fade_frame_shift		equ 0x6

; Camera
camera_max_vel_x		equ 0x00200000
camera_max_vel_y		equ 0x00040000