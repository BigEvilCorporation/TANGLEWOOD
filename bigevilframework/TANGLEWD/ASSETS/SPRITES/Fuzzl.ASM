; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   Created with BEEhive - the complete art tool for SEGA Mega Drive
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   http://www.bigevilcorporation.co.uk
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   BEEhive and SEGA Genesis Framework (c) Matt Phillips 2015
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==


actor_fuzzl:

sprite_fuzzl_size_b		equ 0x0080	; Size in bytes
sprite_fuzzl_size_t		equ 0x0004	; Size in tiles
sprite_fuzzl_size_subsprites		equ 0x0001	; Size in subsprites
sprite_fuzzl_widthheight_subsprites		equ 0x0101	; Width/height (bb) in subsprites

; Subsprite offsets from 0,0 (in pixels) - unflipped (bb) and flipped X (bb)
sprite_fuzzl_subsprite_pos_offsets:
	dc.w 0x0000, 0x0000
	Even

; Subsprite dimension bits (for sprite descs)
sprite_fuzzl_subsprite_dimensions_bits:
	dc.b 0x5
	Even

; Num tiles per subsprite (for sprite descs)
sprite_fuzzl_numtiles_per_subsprite:
	dc.b 0x04
	Even


spritesheet_fuzzl_sleep_frameoffset	equ 0x00	; Offset to first frame in sprite sheet
spritesheet_fuzzl_sleep_size_b		equ 0x180	; Size in bytes
spritesheet_fuzzl_sleep_size_w		equ 0xC0	; Size in words
spritesheet_fuzzl_sleep_size_l		equ 0x60	; Size in longwords
spritesheet_fuzzl_sleep_size_t		equ 0x0C	; Size in tiles


spritesheet_fuzzl_roll_frameoffset	equ 0x03	; Offset to first frame in sprite sheet
spritesheet_fuzzl_roll_size_b		equ 0x400	; Size in bytes
spritesheet_fuzzl_roll_size_w		equ 0x200	; Size in words
spritesheet_fuzzl_roll_size_l		equ 0x100	; Size in longwords
spritesheet_fuzzl_roll_size_t		equ 0x20	; Size in tiles


spritesheet_fuzzl_eyes_frameoffset	equ 0x0B	; Offset to first frame in sprite sheet
spritesheet_fuzzl_eyes_size_b		equ 0x480	; Size in bytes
spritesheet_fuzzl_eyes_size_w		equ 0x240	; Size in words
spritesheet_fuzzl_eyes_size_l		equ 0x120	; Size in longwords
spritesheet_fuzzl_eyes_size_t		equ 0x24	; Size in tiles


spritesheet_fuzzl_idle_frameoffset	equ 0x14	; Offset to first frame in sprite sheet
spritesheet_fuzzl_idle_size_b		equ 0x80	; Size in bytes
spritesheet_fuzzl_idle_size_w		equ 0x40	; Size in words
spritesheet_fuzzl_idle_size_l		equ 0x20	; Size in longwords
spritesheet_fuzzl_idle_size_t		equ 0x04	; Size in tiles


spritesheets_fuzzl:

spritesheet_fuzzl_sleep:

	dc.l	0x00000555
	dc.l	0x00004455
	dc.l	0x00044455
	dc.l	0x05045555
	dc.l	0x04441115
	dc.l	0x54515555
	dc.l	0x05455555
	dc.l	0x55545555

	dc.l	0x55545554
	dc.l	0x00545544
	dc.l	0x55555555
	dc.l	0x05545555
	dc.l	0x00554455
	dc.l	0x00504455
	dc.l	0x00055455
	dc.l	0x00000505

	dc.l	0x50500000
	dc.l	0x44555000
	dc.l	0x55550500
	dc.l	0x55554550
	dc.l	0x51114450
	dc.l	0x55551555
	dc.l	0x45555450
	dc.l	0x55555500

	dc.l	0x45555545
	dc.l	0x55555555
	dc.l	0x55555555
	dc.l	0x55555050
	dc.l	0x54555550
	dc.l	0x55455500
	dc.l	0x00554000
	dc.l	0x50400000

	dc.l	0x00000555
	dc.l	0x00004455
	dc.l	0x00044455
	dc.l	0x05045555
	dc.l	0x04445555
	dc.l	0x54551115
	dc.l	0x05415555
	dc.l	0x55545555

	dc.l	0x55545554
	dc.l	0x00545544
	dc.l	0x55555555
	dc.l	0x05545555
	dc.l	0x00554455
	dc.l	0x00504455
	dc.l	0x00055455
	dc.l	0x00000505

	dc.l	0x50500000
	dc.l	0x44555000
	dc.l	0x55550500
	dc.l	0x55554550
	dc.l	0x55554450
	dc.l	0x51115555
	dc.l	0x45551450
	dc.l	0x55555500

	dc.l	0x45555545
	dc.l	0x55555555
	dc.l	0x55555555
	dc.l	0x55555050
	dc.l	0x54555550
	dc.l	0x55455500
	dc.l	0x00554000
	dc.l	0x50400000

	dc.l	0x00000555
	dc.l	0x00004455
	dc.l	0x00044455
	dc.l	0x05045555
	dc.l	0x04445555
	dc.l	0x54555555
	dc.l	0x05451115
	dc.l	0x55515555

	dc.l	0x55545554
	dc.l	0x00545544
	dc.l	0x55555555
	dc.l	0x05545555
	dc.l	0x00554455
	dc.l	0x00504455
	dc.l	0x00055455
	dc.l	0x00000505

	dc.l	0x50500000
	dc.l	0x44555000
	dc.l	0x55550500
	dc.l	0x55554550
	dc.l	0x55554450
	dc.l	0x55555555
	dc.l	0x41115450
	dc.l	0x55551500

	dc.l	0x45555545
	dc.l	0x55555555
	dc.l	0x55555555
	dc.l	0x55555050
	dc.l	0x54555550
	dc.l	0x55455500
	dc.l	0x00554000
	dc.l	0x50400000



spritesheet_fuzzl_roll:

	dc.l	0x00000555
	dc.l	0x00004455
	dc.l	0x00044455
	dc.l	0x05043355
	dc.l	0x04442225
	dc.l	0x54532215
	dc.l	0x05432215
	dc.l	0x55542225

	dc.l	0x55543354
	dc.l	0x00545544
	dc.l	0x55555555
	dc.l	0x05545555
	dc.l	0x00554455
	dc.l	0x00504455
	dc.l	0x00055455
	dc.l	0x00000505

	dc.l	0x50500000
	dc.l	0x44555000
	dc.l	0x55550500
	dc.l	0x55334550
	dc.l	0x52224450
	dc.l	0x51224555
	dc.l	0x41223450
	dc.l	0x52223500

	dc.l	0x45335545
	dc.l	0x55555555
	dc.l	0x55555555
	dc.l	0x55555050
	dc.l	0x54555550
	dc.l	0x55455500
	dc.l	0x00554000
	dc.l	0x50400000

	dc.l	0x00000550
	dc.l	0x00005444
	dc.l	0x00555534
	dc.l	0x00555332
	dc.l	0x05054422
	dc.l	0x55544322
	dc.l	0x05555332
	dc.l	0x55455554

	dc.l	0x05455544
	dc.l	0x54445555
	dc.l	0x54455555
	dc.l	0x05555555
	dc.l	0x00505455
	dc.l	0x00550455
	dc.l	0x00004555
	dc.l	0x00000545

	dc.l	0x40500000
	dc.l	0x44455000
	dc.l	0x33455500
	dc.l	0x23554500
	dc.l	0x22555450
	dc.l	0x15555555
	dc.l	0x55523355
	dc.l	0x54122340

	dc.l	0x42222445
	dc.l	0x53224445
	dc.l	0x53333555
	dc.l	0x55555550
	dc.l	0x55554000
	dc.l	0x55555500
	dc.l	0x50555000
	dc.l	0x55500000

	dc.l	0x00000505
	dc.l	0x00005505
	dc.l	0x00555555
	dc.l	0x05054544
	dc.l	0x05445553
	dc.l	0x54445553
	dc.l	0x05555545
	dc.l	0x55555544

	dc.l	0x50555554
	dc.l	0x00545555
	dc.l	0x45455553
	dc.l	0x05555553
	dc.l	0x04555555
	dc.l	0x00550555
	dc.l	0x00055554
	dc.l	0x00000555

	dc.l	0x50500000
	dc.l	0x55445000
	dc.l	0x54540000
	dc.l	0x43344400
	dc.l	0x22223440
	dc.l	0x22223445
	dc.l	0x21125555
	dc.l	0x55555555

	dc.l	0x54555545
	dc.l	0x21125540
	dc.l	0x22223555
	dc.l	0x22223550
	dc.l	0x33444050
	dc.l	0x54545500
	dc.l	0x05555000
	dc.l	0x00500000

	dc.l	0x00000550
	dc.l	0x00005445
	dc.l	0x00555444
	dc.l	0x00505545
	dc.l	0x04055555
	dc.l	0x55445555
	dc.l	0x45555554
	dc.l	0x55555554

	dc.l	0x55555554
	dc.l	0x50555332
	dc.l	0x55555322
	dc.l	0x05555322
	dc.l	0x05545342
	dc.l	0x00505544
	dc.l	0x00005544
	dc.l	0x00000555

	dc.l	0x50500000
	dc.l	0x55550000
	dc.l	0x45505500
	dc.l	0x55455500
	dc.l	0x55445550
	dc.l	0x53343545
	dc.l	0x53223345
	dc.l	0x42222440

	dc.l	0x55122344
	dc.l	0x45523340
	dc.l	0x15555445
	dc.l	0x22555550
	dc.l	0x23554550
	dc.l	0x33545500
	dc.l	0x45550000
	dc.l	0x05500000

	dc.l	0x00000405
	dc.l	0x00045500
	dc.l	0x00555455
	dc.l	0x05555545
	dc.l	0x05055555
	dc.l	0x55555555
	dc.l	0x55555555
	dc.l	0x54553354

	dc.l	0x00532225
	dc.l	0x05432214
	dc.l	0x55542215
	dc.l	0x05442225
	dc.l	0x05543355
	dc.l	0x00505555
	dc.l	0x00055544
	dc.l	0x00000505

	dc.l	0x50500000
	dc.l	0x55455000
	dc.l	0x55440500
	dc.l	0x55445500
	dc.l	0x55554550
	dc.l	0x55555555
	dc.l	0x44554500
	dc.l	0x45334555

	dc.l	0x52224555
	dc.l	0x51223450
	dc.l	0x51223545
	dc.l	0x52224440
	dc.l	0x55334050
	dc.l	0x55444000
	dc.l	0x55440000
	dc.l	0x55500000

	dc.l	0x00000555
	dc.l	0x00055505
	dc.l	0x00555555
	dc.l	0x00045555
	dc.l	0x05555555
	dc.l	0x55533335
	dc.l	0x54442235
	dc.l	0x54422224

	dc.l	0x04322145
	dc.l	0x55332555
	dc.l	0x55555551
	dc.l	0x05455522
	dc.l	0x00545532
	dc.l	0x00555433
	dc.l	0x00055444
	dc.l	0x00000504

	dc.l	0x54500000
	dc.l	0x55540000
	dc.l	0x55405500
	dc.l	0x55450500
	dc.l	0x55555550
	dc.l	0x55555445
	dc.l	0x55554445
	dc.l	0x44555450

	dc.l	0x45555455
	dc.l	0x23355550
	dc.l	0x22344555
	dc.l	0x22445050
	dc.l	0x23355500
	dc.l	0x43555500
	dc.l	0x44450000
	dc.l	0x05500000

	dc.l	0x00000500
	dc.l	0x00055550
	dc.l	0x00554545
	dc.l	0x05044433
	dc.l	0x05532222
	dc.l	0x55532222
	dc.l	0x04552112
	dc.l	0x54555545

	dc.l	0x55555555
	dc.l	0x55552112
	dc.l	0x54432222
	dc.l	0x04432222
	dc.l	0x00444334
	dc.l	0x00004545
	dc.l	0x00054455
	dc.l	0x00000505

	dc.l	0x55500000
	dc.l	0x45555000
	dc.l	0x55505500
	dc.l	0x55555540
	dc.l	0x35555550
	dc.l	0x35555454
	dc.l	0x55554500
	dc.l	0x45555505

	dc.l	0x44555555
	dc.l	0x54555550
	dc.l	0x35554445
	dc.l	0x35554450
	dc.l	0x44545050
	dc.l	0x55555500
	dc.l	0x50550000
	dc.l	0x50500000

	dc.l	0x00000550
	dc.l	0x00005554
	dc.l	0x00554533
	dc.l	0x05545532
	dc.l	0x05555522
	dc.l	0x54455551
	dc.l	0x04332554
	dc.l	0x44322155

	dc.l	0x04422224
	dc.l	0x54332235
	dc.l	0x54534335
	dc.l	0x05554455
	dc.l	0x00555455
	dc.l	0x00550554
	dc.l	0x00005555
	dc.l	0x00000505

	dc.l	0x55500000
	dc.l	0x44550000
	dc.l	0x44550500
	dc.l	0x24354550
	dc.l	0x22355550
	dc.l	0x22355555
	dc.l	0x23355505
	dc.l	0x45555555

	dc.l	0x45555555
	dc.l	0x45555554
	dc.l	0x55554455
	dc.l	0x55555040
	dc.l	0x54550500
	dc.l	0x44455500
	dc.l	0x54450000
	dc.l	0x05500000



spritesheet_fuzzl_eyes:

	dc.l	0x00000555
	dc.l	0x00004455
	dc.l	0x00044455
	dc.l	0x05043355
	dc.l	0x04442125
	dc.l	0x54532225
	dc.l	0x05432225
	dc.l	0x55542225

	dc.l	0x55543354
	dc.l	0x00545544
	dc.l	0x55555555
	dc.l	0x05545555
	dc.l	0x00554455
	dc.l	0x00504455
	dc.l	0x00055455
	dc.l	0x00000505

	dc.l	0x50500000
	dc.l	0x44555000
	dc.l	0x55550500
	dc.l	0x55334550
	dc.l	0x52124450
	dc.l	0x52224555
	dc.l	0x42223450
	dc.l	0x52223500

	dc.l	0x45335545
	dc.l	0x55555555
	dc.l	0x55555555
	dc.l	0x55555050
	dc.l	0x54555550
	dc.l	0x55455500
	dc.l	0x00554000
	dc.l	0x50400000

	dc.l	0x00000555
	dc.l	0x00004455
	dc.l	0x00044455
	dc.l	0x05043355
	dc.l	0x04442215
	dc.l	0x54532215
	dc.l	0x05432225
	dc.l	0x55542225

	dc.l	0x55543354
	dc.l	0x00545544
	dc.l	0x55555555
	dc.l	0x05545555
	dc.l	0x00554455
	dc.l	0x00504455
	dc.l	0x00055455
	dc.l	0x00000505

	dc.l	0x50500000
	dc.l	0x44555000
	dc.l	0x55550500
	dc.l	0x55334550
	dc.l	0x52214450
	dc.l	0x52214555
	dc.l	0x42223450
	dc.l	0x52223500

	dc.l	0x45335545
	dc.l	0x55555555
	dc.l	0x55555555
	dc.l	0x55555050
	dc.l	0x54555550
	dc.l	0x55455500
	dc.l	0x00554000
	dc.l	0x50400000

	dc.l	0x00000555
	dc.l	0x00004455
	dc.l	0x00044455
	dc.l	0x05043355
	dc.l	0x04442225
	dc.l	0x54532215
	dc.l	0x05432215
	dc.l	0x55542225

	dc.l	0x55543354
	dc.l	0x00545544
	dc.l	0x55555555
	dc.l	0x05545555
	dc.l	0x00554455
	dc.l	0x00504455
	dc.l	0x00055455
	dc.l	0x00000505

	dc.l	0x50500000
	dc.l	0x44555000
	dc.l	0x55550500
	dc.l	0x55334550
	dc.l	0x52224450
	dc.l	0x52214555
	dc.l	0x42213450
	dc.l	0x52223500

	dc.l	0x45335545
	dc.l	0x55555555
	dc.l	0x55555555
	dc.l	0x55555050
	dc.l	0x54555550
	dc.l	0x55455500
	dc.l	0x00554000
	dc.l	0x50400000

	dc.l	0x00000555
	dc.l	0x00004455
	dc.l	0x00044455
	dc.l	0x05043355
	dc.l	0x04442225
	dc.l	0x54532225
	dc.l	0x05432215
	dc.l	0x55542215

	dc.l	0x55543354
	dc.l	0x00545544
	dc.l	0x55555555
	dc.l	0x05545555
	dc.l	0x00554455
	dc.l	0x00504455
	dc.l	0x00055455
	dc.l	0x00000505

	dc.l	0x50500000
	dc.l	0x44555000
	dc.l	0x55550500
	dc.l	0x55334550
	dc.l	0x52224450
	dc.l	0x52224555
	dc.l	0x42213450
	dc.l	0x52213500

	dc.l	0x45335545
	dc.l	0x55555555
	dc.l	0x55555555
	dc.l	0x55555050
	dc.l	0x54555550
	dc.l	0x55455500
	dc.l	0x00554000
	dc.l	0x50400000

	dc.l	0x00000555
	dc.l	0x00004455
	dc.l	0x00044455
	dc.l	0x05043355
	dc.l	0x04442225
	dc.l	0x54532225
	dc.l	0x05432225
	dc.l	0x55542125

	dc.l	0x55543354
	dc.l	0x00545544
	dc.l	0x55555555
	dc.l	0x05545555
	dc.l	0x00554455
	dc.l	0x00504455
	dc.l	0x00055455
	dc.l	0x00000505

	dc.l	0x50500000
	dc.l	0x44555000
	dc.l	0x55550500
	dc.l	0x55334550
	dc.l	0x52224450
	dc.l	0x52224555
	dc.l	0x42223450
	dc.l	0x52123500

	dc.l	0x45335545
	dc.l	0x55555555
	dc.l	0x55555555
	dc.l	0x55555050
	dc.l	0x54555550
	dc.l	0x55455500
	dc.l	0x00554000
	dc.l	0x50400000

	dc.l	0x00000555
	dc.l	0x00004455
	dc.l	0x00044455
	dc.l	0x05043355
	dc.l	0x04442225
	dc.l	0x54532225
	dc.l	0x05431225
	dc.l	0x55541225

	dc.l	0x55543354
	dc.l	0x00545544
	dc.l	0x55555555
	dc.l	0x05545555
	dc.l	0x00554455
	dc.l	0x00504455
	dc.l	0x00055455
	dc.l	0x00000505

	dc.l	0x50500000
	dc.l	0x44555000
	dc.l	0x55550500
	dc.l	0x55334550
	dc.l	0x52224450
	dc.l	0x52224555
	dc.l	0x41223450
	dc.l	0x51223500

	dc.l	0x45335545
	dc.l	0x55555555
	dc.l	0x55555555
	dc.l	0x55555050
	dc.l	0x54555550
	dc.l	0x55455500
	dc.l	0x00554000
	dc.l	0x50400000

	dc.l	0x00000555
	dc.l	0x00004455
	dc.l	0x00044455
	dc.l	0x05043355
	dc.l	0x04442225
	dc.l	0x54531225
	dc.l	0x05431225
	dc.l	0x55542225

	dc.l	0x55543354
	dc.l	0x00545544
	dc.l	0x55555555
	dc.l	0x05545555
	dc.l	0x00554455
	dc.l	0x00504455
	dc.l	0x00055455
	dc.l	0x00000505

	dc.l	0x50500000
	dc.l	0x44555000
	dc.l	0x55550500
	dc.l	0x55334550
	dc.l	0x52224450
	dc.l	0x51224555
	dc.l	0x41223450
	dc.l	0x52223500

	dc.l	0x45335545
	dc.l	0x55555555
	dc.l	0x55555555
	dc.l	0x55555050
	dc.l	0x54555550
	dc.l	0x55455500
	dc.l	0x00554000
	dc.l	0x50400000

	dc.l	0x00000555
	dc.l	0x00004455
	dc.l	0x00044455
	dc.l	0x05043355
	dc.l	0x04441225
	dc.l	0x54531225
	dc.l	0x05432225
	dc.l	0x55542225

	dc.l	0x55543354
	dc.l	0x00545544
	dc.l	0x55555555
	dc.l	0x05545555
	dc.l	0x00554455
	dc.l	0x00504455
	dc.l	0x00055455
	dc.l	0x00000505

	dc.l	0x50500000
	dc.l	0x44555000
	dc.l	0x55550500
	dc.l	0x55334550
	dc.l	0x51224450
	dc.l	0x51224555
	dc.l	0x42223450
	dc.l	0x52223500

	dc.l	0x45335545
	dc.l	0x55555555
	dc.l	0x55555555
	dc.l	0x55555050
	dc.l	0x54555550
	dc.l	0x55455500
	dc.l	0x00554000
	dc.l	0x50400000

	dc.l	0x00000555
	dc.l	0x00004455
	dc.l	0x00044455
	dc.l	0x05043355
	dc.l	0x04442225
	dc.l	0x54532215
	dc.l	0x05432215
	dc.l	0x55542225

	dc.l	0x55543354
	dc.l	0x00545544
	dc.l	0x55555555
	dc.l	0x05545555
	dc.l	0x00554455
	dc.l	0x00504455
	dc.l	0x00055455
	dc.l	0x00000505

	dc.l	0x50500000
	dc.l	0x44555000
	dc.l	0x55550500
	dc.l	0x55334550
	dc.l	0x52224450
	dc.l	0x51224555
	dc.l	0x41223450
	dc.l	0x52223500

	dc.l	0x45335545
	dc.l	0x55555555
	dc.l	0x55555555
	dc.l	0x55555050
	dc.l	0x54555550
	dc.l	0x55455500
	dc.l	0x00554000
	dc.l	0x50400000



spritesheet_fuzzl_idle:

	dc.l	0x00000555
	dc.l	0x00004455
	dc.l	0x00044455
	dc.l	0x05043355
	dc.l	0x04442225
	dc.l	0x54532215
	dc.l	0x05432215
	dc.l	0x55542225

	dc.l	0x55543354
	dc.l	0x00545544
	dc.l	0x55555555
	dc.l	0x05545555
	dc.l	0x00554455
	dc.l	0x00504455
	dc.l	0x00055455
	dc.l	0x00000505

	dc.l	0x50500000
	dc.l	0x44555000
	dc.l	0x55550500
	dc.l	0x55334550
	dc.l	0x52224450
	dc.l	0x51224555
	dc.l	0x41223450
	dc.l	0x52223500

	dc.l	0x45335545
	dc.l	0x55555555
	dc.l	0x55555555
	dc.l	0x55555050
	dc.l	0x54555550
	dc.l	0x55455500
	dc.l	0x00554000
	dc.l	0x50400000



