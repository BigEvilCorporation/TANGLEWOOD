;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   SEGA Genesis Framework (c) Matt Phillips 2014
;==============================================================
;   megacd.asm - MegaCD init routines
;==============================================================

; TODO: move to stdlib.asm
; String compare
; a0 - Address of string 1
; a1 - Address of string 2
; d0 - Return value: 0 if match, else index+1 of first different char

CompareString:
        clr.l d0         ; Clear d0 for return val
        clr.l d3         ; Clear d3 for char counter

        @strchecklp:
        ; Copy chars
        move.b (a0)+, d1 ; Copy char from str1 and increment addr
        move.b (a1)+, d2 ; Copy char from str2 and increment addr

        ; Compare chars (BEFORE checking EOS, lengths may differ)
        sub.b d1, d2     ; Compare chars
        bne strcmp_diff  ; Chars differ, return

        ; Check for end of string
        cmp.b #0x0, d1   ; Check char 1 for 0
        beq strcmp_end   ; End of string, return
        
        addi #0x1, d3    ; Increment char counter
        jmp @strchecklp

strcmp_diff:
        move.l d3, d0    ; Strings diff, move idx to return val
        addi   #0x1, d0  ; Index+1

strcmp_end:
        rts


; Checks if MegaCD is attached and returns BIOS type
; (looks at MCD signature in BIOS header)
; d0 - Return value: BIOS index if MCD present, 0 if not

GetMCDType:
        ; Check BIOS signature 1
        lea mcd_sig_1, a0
        lea mcd_bios_addr_1+mcd_sig_offset, a1
        jsr CompareString
        cmp.b #0x0, d0
        bne @NotType1
        move.l #0x1, d0 ; Found type 1
        rts

        @NotType1:
        lea mcd_sig_2, a0
        lea mcd_bios_addr_2+mcd_sig_offset, a1
        jsr CompareString
        cmp.b #0x0, d0
        bne @NotType2
        move.l #0x2, d0 ; Found type 2
        rts

        @NotType2:
        lea mcd_sig_3, a0
        lea mcd_bios_addr_3+mcd_sig_offset, a1
        jsr CompareString
        cmp.b #0x0, d0
        bne @NotType3
        move.l #0x3, d0 ; Found type 3
        rts

        @NotType3:
        lea mcd_sig_4, a0
        lea mcd_bios_addr_4+mcd_sig_offset, a1
        jsr CompareString
        cmp.b #0x0, d0
        bne @NotType4
        move.l #0x4, d0 ; Found type 4
        rts

        @NotType4:
        clr.l d0 ; MegaCD not found
        rts

MCD_RestoreHINT:
        ; Put HINT vector back into the table
        move.l #SubCPU_int, (0xFFFFFD08).w
        move.w #HBlankInterrupt_Blank, (0x00A12006).l
        move.l #SubCPU_rte, (0xFFFFFD0E).w

		rts

; Initialise MegaCD in Mode 1 (boot from cartridge)
InitMCD_Mode1:

        ; Put HINT vector back into the table
        move.l #SubCPU_int, (0xFFFFFD08).w
        move.w #HBlankInterrupt_Blank, (0x00A12006).l
        move.l #SubCPU_rte, (0xFFFFFD0E).w

        ; Reset gate array
        move.l 0xFF00, 0x00A12002
        move.b 0x03, 0x00A12001
        move.b 0x02, 0x00A12001
        move.b 0x00, 0x00A12001

        ; Reset SUB-CPU, wait for bus access
        @WaitForBus:
        move.b #0x02, 0x00A12001 ; Reset, request bus
        move.b 0x00A12001, d0    ; Check for bus access
        btst #0x1, d0
        beq @WaitForBus

        move.b #0x00, 0x00A1200E ; Clear main comm port
        move.b #0x2A, 0x00A12002 ; Write protect up to 0x00005400
        
        ; Run SUB-CPU, wait until started
        @WaitForRun:
        move.b #0x01, 0x00A12001 ; Clear bus req, run SUB-CPU
        move.b 0x00A12001, d0    ; Check if running
        btst #0x0, d0
        beq @WaitForRun

        rts


SubCPU_int:
        bset #0x0, (0x00A12000).l

SubCPU_rte:
        rte
