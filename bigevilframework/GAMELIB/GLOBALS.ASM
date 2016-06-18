;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   globals.asm - Gamelib constants
;==============================================================

; Entity types
entity_type_spriteobj equ (1<<0)
entity_type_gameobj   equ (1<<1)
entity_type_animobj   equ (1<<2)
entity_type_character equ (1<<3)
entity_type_pickup    equ (1<<4)

; Serialisation
serialise_dir_in	equ 0x0
serialise_dir_out	equ 0x1
