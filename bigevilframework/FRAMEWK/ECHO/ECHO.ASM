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
; Echo_PlayDirect
; Injects events into the BGM stream for the next tick.
;
; input a0.l ... Pointer to stream data
;****************************************************************************

Echo_PlayDirect:
    Echo_Z80Request                 ; We need the Z80 bus
    movem.l d0-d1/a0-a1, -(sp)      ; Save registers

    lea     ($A01F00), a1           ; Skip any pending events
    moveq   #-1, d1
@Skip:
    cmp.b   (a1), d1
    beq.s   @Load
    addq.w  #1, a1
    bra.s   @Skip

@Load:                              ; Copy stream into the direct buffer
    move.b  (a0)+, d0
    move.b  d0, (a1)+
    cmp.b   d1, d0
    bne.s   @Load

    movem.l (sp)+, d0-d1/a0-a1      ; Restore registers
    Echo_Z80Release                 ; We're done with the Z80 bus
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
; Echo_SetVolume
; Changes the global volume for every channel.
;
; input d0.b ... New volume (0 = quietest, 255 = loudest)
;****************************************************************************

Echo_SetVolume:
    Echo_Z80Request                 ; We need the Z80 bus
    movem.l d0-d1/a0-a1, -(sp)      ; Save registers
    
    not.b   d0                      ; Volume is backwards
    
    lea     @FMTable(pc), a0        ; Determine FM volume
    moveq   #0, d1
    move.b  d0, d1
    lsr.b   #2, d1
    move.b  (a0,d1.w), d1
    
    lea     ($A01FE0), a1           ; Copy new FM volume values
    move.b  d1, (a1)+                 ; FM channel 0
    move.b  d1, (a1)+                 ; FM channel 1
    move.b  d1, (a1)+                 ; FM channel 2
    move.b  d1, (a1)+                 ; FM channel 3
    move.b  d1, (a1)+                 ; FM channel 4
    move.b  d1, (a1)+                 ; FM channel 5
    move.b  d1, (a1)+                 ; FM channel 6
    move.b  d1, (a1)+                 ; FM channel 7
    
    lea     @PSGTable(pc), a0       ; Determine PSG volume
    moveq   #0, d1
    move.b  d0, d1
    lsr.b   #2, d1
    move.b  (a0,d1.w), d1
    
                                    ; Copy new PSG values
    move.b  d1, (a1)+                 ; PSG channel 0
    move.b  d1, (a1)+                 ; PSG channel 1
    move.b  d1, (a1)+                 ; PSG channel 2
    move.b  d1, (a1)+                 ; PSG channel 3
    
    cmp.b   #$40, d0                ; Determine whether PCM should be enabled
    scc.b   d1                        ; (we do an heuristic for enabling PCM
    and.b   #1, d1                    ; based on the volume value)
    move.b  d1, (a1)+
    
    move.b  #1, ($A01FF1)           ; Tell Echo to update the volume levels
    
    movem.l (sp)+, d0-d1/a0-a1      ; Restore registers
    Echo_Z80Release                 ; We're done with the Z80 bus
    rts                             ; End of subroutine

;----------------------------------------------------------------------------

@FMTable:
    dc.b    $7F,$7B,$77,$73,$70,$6C,$68,$65,$61,$5E,$5A,$57,$54,$50,$4D,$4A
    dc.b    $47,$44,$41,$3F,$3C,$39,$36,$34,$31,$2F,$2D,$2A,$28,$26,$24,$22
    dc.b    $20,$1E,$1C,$1A,$18,$16,$15,$13,$12,$10,$0F,$0D,$0C,$0B,$0A,$09
    dc.b    $08,$07,$06,$05,$04,$04,$03,$02,$02,$01,$01,$01,$00,$00,$00,$00

@PSGTable:
    dc.b    $0F,$0F,$0E,$0E,$0D,$0D,$0C,$0C,$0B,$0B,$0B,$0A,$0A,$0A,$09,$09
    dc.b    $08,$08,$08,$07,$07,$07,$06,$06,$06,$06,$05,$05,$05,$04,$04,$04
    dc.b    $04,$03,$03,$03,$03,$03,$02,$02,$02,$02,$02,$02,$01,$01,$01,$01
    dc.b    $01,$01,$01,$01,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

;****************************************************************************
; Echo_SetVolumeEx
; Changes the global volume for each individual channel.
;
; input a0.l ... Pointer to 13 bytes
;                  8 bytes with FM volumes (0..127)
;                  4 bytes with PSG volumes (0..15)
;                  1 byte with PCM toggle (0/1)
;****************************************************************************

Echo_SetVolumeEx:
    Echo_Z80Request                 ; We need the Z80 bus
    movem.l a0-a1, -(sp)            ; Save registers
    
    lea     ($A01FE0), a1           ; Copy new volume values
    move.b  (a0)+, (a1)+              ; FM channel 0
    move.b  (a0)+, (a1)+              ; FM channel 1
    move.b  (a0)+, (a1)+              ; FM channel 2
    move.b  (a0)+, (a1)+              ; FM channel 3
    move.b  (a0)+, (a1)+              ; FM channel 4
    move.b  (a0)+, (a1)+              ; FM channel 5
    move.b  (a0)+, (a1)+              ; FM channel 6
    move.b  (a0)+, (a1)+              ; FM channel 7
    move.b  (a0)+, (a1)+              ; PSG channel 0
    move.b  (a0)+, (a1)+              ; PSG channel 1
    move.b  (a0)+, (a1)+              ; PSG channel 2
    move.b  (a0)+, (a1)+              ; PSG channel 3
    move.b  (a0)+, (a1)+              ; PCM channel toggle
    
    move.b  #1, ($A01FF1)           ; Tell Echo to update the volume levels
    
    movem.l (sp)+, a0-a1            ; Restore registers
    Echo_Z80Release                 ; We're done with the Z80 bus
    rts                             ; End of subroutine

;****************************************************************************
; Echo_GetStatus
; Gets the current status of Echo
;
; output d0.w ... Echo status
;                   Bit #0: SFX is playing
;                   Bit #1: BGM is playing
;                   Bit #14: direct events not played
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

    cmpi.b  #$FF, ($A01F00)         ; Check if the direct buffer is empty
    beq.s   @DirectEmpty            ; Any direct events still to be played?
    bset.l  #14, d0                 ; If so, set the relevant flag
@DirectEmpty:

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

    lea     Z80Program, a0          ; Where Z80 program starts
    lea     ($A00000), a1           ; Where Z80 RAM starts
    move.w  #Z80ProgSize-1, d0      ; Size of Z80 program (DBF adjusted)
@LoadLoop:                          ; Go through all the program
    move.b  (a0)+, (a1)+              ; Copy byte into Z80 RAM
    dbf     d0, @LoadLoop             ; Go for next byte

    moveq   #0, d0                  ; Set default global volumes
    lea     ($A01FE0), a0
    move.b  d0, (a0)+
    move.b  d0, (a0)+
    move.b  d0, (a0)+
    move.b  d0, (a0)+
    move.b  d0, (a0)+
    move.b  d0, (a0)+
    move.b  d0, (a0)+
    move.b  d0, (a0)+
    move.b  d0, (a0)+
    move.b  d0, (a0)+
    move.b  d0, (a0)+
    move.b  d0, (a0)+
    move.b  #1, (a0)+
    move.b  d0, ($A01FF1)

    move.b  #$FF, ($A01F00)         ; No direct events to execute

    Echo_Z80Reset                   ; Now reset for real
    Echo_Z80Release                 ; Let the Z80 go!

    movem.l (sp)+, d0/a0-a1         ; Restore registers
    rts                             ; End of subroutine
