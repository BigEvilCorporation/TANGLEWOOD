;****************************************************************************
; Echo_Z80Request
; Requests the Z80 bus
;****************************************************************************

Echo_Z80Request macro
    move.w  #$100, ($A11100)        ; Request Z80 bus
@Echo_WaitZ80\@:
    btst.b  #0, ($A11100)           ; Did we get it yet?
    bne.s   @Echo_WaitZ80\@         ; Keep waiting
    endm                            ; End of macro

;****************************************************************************
; Echo_Z80Release
; Releases the Z80 bus
;****************************************************************************

Echo_Z80Release macro
    move.w  #$000, ($A11100)        ; Release Z80 bus
    endm                            ; End of macro

;****************************************************************************
; Echo_Z80Reset
; Resets the Z80 and YM2612
;****************************************************************************

Echo_Z80Reset macro
    move.w  #$000, ($A11200)        ; Assert reset line
    rept    $10                     ; Wait until hardware resets
    nop                               ; ...
    endr                              ; ...
    move.w  #$100, ($A11200)        ; Release reset line
    endm                            ; End of macro

;****************************************************************************
; Echo_SendCommand
; Sends an Echo command (no address parameter)
;
; input d0.b ... Echo command
;****************************************************************************

Echo_SendCommand:
    move.w  d1, -(sp)               ; Save register

    Echo_Z80Request                 ; We need the Z80 bus

@Try:
    tst.b   ($A01FFF)               ; Check if Echo is ready
    beq.s   @Ready                  ; Too busy?
    Echo_Z80Release                   ; Let Echo continue
    move.w  #$FF, d1                  ; Give it some time
    dbf     d1, *                       ; ...
    Echo_Z80Request                   ; Get Z80 bus back
    bra.s   @Try                      ; Try again

@Ready:
    move.b  d0, ($A01FFF)           ; Write command ID
    Echo_Z80Release                 ; We're done with the Z80 bus

    move.w  (sp)+, d1               ; Restore register
    rts                             ; End of subroutine

;****************************************************************************
; Echo_SendCommandAddr
; Sends an Echo command (with address parameter)
;
; input d0.b ... Echo command
; input a0.l ... Address parameter
;****************************************************************************

Echo_SendCommandAddr:
Echo_SendCommandEx:
    movem.l d0-d1, -(sp)            ; Save register

    Echo_Z80Request                 ; We need the Z80 bus

@Try:
    tst.b   ($A01FFF)               ; Check if Echo is ready
    beq.s   @Ready                  ; Too busy?
    Echo_Z80Release                   ; Let Echo continue
    move.w  #$FF, d1                  ; Give it some time
    dbf     d1, *                       ; ...
    Echo_Z80Request                   ; Get Z80 bus back
    bra.s   @Try                      ; Try again

@Ready:
    move.b  d0, ($A01FFF)           ; Write command ID

    move.l  a0, d0                  ; Easier to manipulate here
    move.b  d0, ($A01FFD)           ; Store low address byte
    lsr.l   #7, d0                  ; Get high address byte
    lsr.b   #1, d0                    ; We skip one bit
    bset.l  #7, d0                    ; Point into bank window
    move.b  d0, ($A01FFE)           ; Store high address byte

    lsr.w   #8, d0                  ; Get bank byte
    move.w  d0, d1                    ; Parse 32X bit separately
    lsr.w   #1, d1                    ; Put 32X bit in place
    and.b   #$7F, d0                  ; Filter out unused bit from addresses
    and.b   #$80, d1                  ; Filter out all but 32X bit
    or.b    d1, d0                    ; Put everything together
    move.b  d0, ($A01FFC)           ; Store bank byte

    Echo_Z80Release                 ; We're done with the Z80 bus

    movem.l (sp)+, d0-d1            ; Restore register
    rts                             ; End of subroutine

;****************************************************************************
; Echo_SendCommandByte
; Sends an Echo command (with a byte parameter)
;
; input d0.b ... Echo command
; input d1.b ... Byte parameter
;****************************************************************************

Echo_SendCommandByte:
    Echo_Z80Request                 ; We need the Z80 bus

    move.w  d1, -(sp)               ; Save register
@Try:
    tst.b   ($A01FFF)               ; Check if Echo is ready
    beq.s   @Ready                  ; Too busy?
    Echo_Z80Release                   ; Let Echo continue
    move.w  #$FF, d1                  ; Give it some time
    dbf     d1, *                       ; ...
    Echo_Z80Request                   ; Get Z80 bus back
    bra.s   @Try                      ; Try again

@Ready:
    move.w  (sp)+, d1               ; Restore register
    move.b  d0, ($A01FFF)           ; Write command ID
    move.b  d1, ($A01FFC)           ; Write parameter
    Echo_Z80Release                 ; We're done with the Z80 bus

    rts                             ; End of subroutine

;****************************************************************************
; Echo_PlaySFX
; Plays a SFX
;
; input a0.l ... Pointer to SFX data
;****************************************************************************

Echo_PlaySFX:
    move.w  d0, -(sp)               ; Save register
    move.b  #$02, d0                ; Command $02 = play SFX
    bsr     Echo_SendCommandAddr    ; Send command to Echo
    move.w  (sp)+, d0               ; Restore register
    rts                             ; End of subroutine

;****************************************************************************
; Echo_StopSFX
; Stops SFX playback
;****************************************************************************

Echo_StopSFX:
    move.w  d0, -(sp)               ; Save register
    move.b  #$03, d0                ; Command $03 = stop SFX
    bsr     Echo_SendCommand        ; Send command to Echo
    move.w  (sp)+, d0               ; Restore register
    rts                             ; End of subroutine

;****************************************************************************
; Echo_PlayBGM
; Plays a BGM
;
; input a0.l ... Pointer to BGM data
;****************************************************************************

Echo_PlayBGM:
    move.w  d0, -(sp)               ; Save register
    move.b  #$04, d0                ; Command $04 = play BGM
    bsr     Echo_SendCommandAddr    ; Send command to Echo
    move.w  (sp)+, d0               ; Restore register
    rts                             ; End of subroutine

;****************************************************************************
; Echo_StopBGM
; Stops BGM playback
;****************************************************************************

Echo_StopBGM:
    move.w  d0, -(sp)               ; Save register
    move.b  #$05, d0                ; Command $05 = stop BGM
    bsr     Echo_SendCommand        ; Send command to Echo
    move.w  (sp)+, d0               ; Restore register
    rts                             ; End of subroutine

;****************************************************************************
; Echo_ResumeBGM
; Resumes BGM playback
;****************************************************************************

Echo_ResumeBGM:
    move.w  d0, -(sp)               ; Save register
    move.b  #$06, d0                ; Command $06 = resume BGM
    bsr     Echo_SendCommand        ; Send command to Echo
    move.w  (sp)+, d0               ; Restore register
    rts                             ; End of subroutine

;****************************************************************************
; Echo_SetPCMRate
; Sets the playback rate of PCM
;
; input d0.b ... New rate (timer A value)
;****************************************************************************

Echo_SetPCMRate:
    movem.l d0-d1, -(sp)            ; Save registers
    move.b  d0, d1                  ; Put parameter in place
    move.b  #$07, d0                ; Command $07 = set PCM rate
    bsr     Echo_SendCommandByte    ; Send command to Echo
    movem.l (sp)+, d0-d1            ; Restore registers
    rts                             ; End of subroutine

;****************************************************************************
; Echo_FadeBGM
; Fades out BGM
;****************************************************************************

Echo_FadeBGM:
    move.w  d0, -(sp)               ; Save register
    move.b  #$08, d0                ; Command $08 = fade BGM
    bsr     Echo_SendCommand        ; Send command to Echo
    move.w  (sp)+, d0               ; Restore register
    rts                    
	
;****************************************************************************
; Echo_GetStatus
; Gets the current status of Echo
;
; output d0.w ... Echo status
;                   Bit #0: SFX is playing
;                   Bit #1: BGM is playing
;                   Bit #15: command still not parsed
;****************************************************************************

Echo_GetStatus:
    moveq   #0, d0
    Echo_Z80Request                 ; We need the Z80 bus
    move.b  ($A01FF0), d0           ; Get the status flags
    tst.b   ($A01FFF)               ; Check if command still has to be parsed
    beq.s   @NotBusy                ; Any commands left to be parsed?
    bset.l  #15, d0                 ; If so, set the relevant flag
@NotBusy:
    Echo_Z80Release                 ; Let the Z80 go!
    rts                             ; End of subroutine

;****************************************************************************
; Echo_ListEntry
; Defines an entry in a pointer list
;****************************************************************************

Echo_ListEntry macro addr
    dc.b    $80|((addr)>>8&$7F)                 ; High byte of address
    dc.b    (addr)&$FF                          ; Low byte of address
    dc.b    ((addr)>>15&$7F)|((addr)>>16&$80)   ; Bank number
    endm

;****************************************************************************
; Echo_ListEnd
; Ends a pointer list
;****************************************************************************

Echo_ListEnd macro
    dc.b    $00                     ; End of list mark
    even                            ; Just in case...
    endm

;****************************************************************************
; Echo_GetLogState
; Get the channel log state
;
; input a0.l ... Destination address (will be increased)
;****************************************************************************
Echo_GetLogState:
	move.w d3,-(a7)
	move.l a1,-(a7)
	move.w #$2F,d3
    Echo_Z80Request                 ; We need the Z80 bus
    lea     ($A01F00), a1
@loop
	move.b	(a1)+,(a0)+
	dbf d3, @loop
    Echo_Z80Release                 ; Let the Z80 go!
	move.l (a7)+,a1
	move.w (a7)+,d3
    rts                             ; End of subroutine

	
;****************************************************************************
; Echo_Init
; Initializes Echo
;
; input a0.l ... Address of pointer list
;****************************************************************************

Echo_Init:
    movem.l d0/a0-a1, -(sp)         ; Save registers

    Echo_Z80Reset                   ; May not work without this...
    Echo_Z80Request                 ; We need the Z80 bus

    move.b  #$01, ($A01FFF)         ; Command: load pointer list

    move.l  a0, d0                  ; Easier to manipulate here
    move.b  d0, ($A01FFD)           ; Store low address byte
    lsr.l   #7, d0                  ; Get high address byte
    lsr.b   #1, d0                    ; We skip one bit
    bset.l  #7, d0                    ; Point into bank window
    move.b  d0, ($A01FFE)           ; Store high address byte
    lsr.w   #8, d0                  ; Get bank byte
    move.w  d0, d1                    ; Parse 32X bit separately
    lsr.w   #1, d1                    ; Put 32X bit in place
    and.b   #$7F, d0                  ; Filter out unused bit from addresses
    and.b   #$80, d1                  ; Filter out all but 32X bit
    or.b    d1, d0                    ; Put everything together
    move.b  d0, ($A01FFC)           ; Store bank byte

    lea     Z80Program, a0     ; Where Z80 program starts
    lea     ($A00000), a1           ; Where Z80 RAM starts
    move.w  #Z80ProgSize-1, d0     ; Size of Z80 program (DBF adjusted)
@LoadLoop:                          ; Go through all the program
    move.b  (a0)+, (a1)+              ; Copy byte into Z80 RAM
    dbf     d0, @LoadLoop             ; Go for next byte

    Echo_Z80Reset                   ; Now reset for real
    Echo_Z80Release                 ; Let the Z80 go!

    movem.l (sp)+, d0/a0-a1         ; Restore registers
    rts                             ; End of subroutine
