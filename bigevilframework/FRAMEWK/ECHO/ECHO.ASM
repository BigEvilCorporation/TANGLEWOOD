	IF ECHO_ENCRYPT_Z80
EchoDecryptKey:
	dc.b 0x2b, 0xcd, 0xc1, 0x9a, 0x80, 0x9c, 0x48, 0x81, 0x8c, 0x6c, 0x28, 0xaa, 0x43, 0xd0, 0xce, 0xa7
EchoDecryptKeyEnd
	ENDIF

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
    movem.l d1/a1-a2, -(sp)         ; Save registers
@Try:
    Echo_Z80Request                 ; We need the Z80 bus

	lea     ($A01FF6), a2           ; Get queue lock
	@Trylock:
	tst.b   (a2)
	beq.s   @Unlocked
	Echo_Z80Release                 ; Let Echo continue
    move.w  #$FF, d1                ; Give it some time
    dbf     d1, *                   ; ...
    Echo_Z80Request                 ; Get Z80 bus back
    bra.s   @Trylock                ; Try again
	@Unlocked:

    lea     ($A01FFF), a1           ; First try the 1st slot
    tst.b   (a1)                    ; Is 1st slot available?
    beq.s   @Ready                    ; If so, move on
    subq.l  #4, a1                  ; Try 2nd slot otherwise

    tst.b   (a1)                    ; Check if 2nd slot is ready
    beq.s   @Ready                  ; Too busy?
    Echo_Z80Release                   ; Let Echo continue
    move.w  #$FF, d1                  ; Give it some time
    dbf     d1, *                       ; ...
    bra.s   @Try                      ; Try again

@Ready:
    move.b  d0, (a1)                ; Write command ID
    Echo_Z80Release                 ; We're done with the Z80 bus

    movem.l (sp)+, d1/a1-a2         ; Restore registers
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
    movem.l d0-d1/a1-a2, -(sp)       ; Save registers
@Try:
    Echo_Z80Request                 ; We need the Z80 bus

	lea     ($A01FF6), a2           ; Get queue lock
	@Trylock:
	tst.b   (a2)
	beq.s   @Unlocked
	Echo_Z80Release                 ; Let Echo continue
    move.w  #$FF, d1                ; Give it some time
    dbf     d1, *                   ; ...
    Echo_Z80Request                 ; Get Z80 bus back
    bra.s   @Trylock                ; Try again
	@Unlocked:

    lea     ($A01FFF), a1           ; First try the 1st slot
    tst.b   (a1)                    ; Is 1st slot available?
    beq.s   @Ready                    ; If so, move on
    subq.l  #4, a1                  ; Try 2nd slot otherwise

    tst.b   (a1)                    ; Check if 2nd slot is ready
    beq.s   @Ready                  ; Too busy?
    Echo_Z80Release                   ; Let Echo continue
    move.w  #$FF, d1                  ; Give it some time
    dbf     d1, *                       ; ...
    bra.s   @Try                      ; Try again

@Ready:
    move.b  d0, (a1)                ; Write command ID

    move.l  a0, d0                  ; Easier to manipulate here
    move.b  d0, -2(a1)              ; Store low address byte
    lsr.l   #7, d0                  ; Get high address byte
    lsr.b   #1, d0                    ; We skip one bit
    bset.l  #7, d0                    ; Point into bank window
    move.b  d0, -1(a1)              ; Store high address byte

    lsr.w   #8, d0                  ; Get bank byte
    move.w  d0, d1                    ; Parse 32X bit separately
    lsr.w   #1, d1                    ; Put 32X bit in place
    and.b   #$7F, d0                  ; Filter out unused bit from addresses
    and.b   #$80, d1                  ; Filter out all but 32X bit
    or.b    d1, d0                    ; Put everything together
    move.b  d0, -3(a1)              ; Store bank byte

    Echo_Z80Release                 ; We're done with the Z80 bus

    movem.l (sp)+, d0-d1/a1-a2      ; Restore registers
    rts                             ; End of subroutine

;****************************************************************************
; Echo_SendCommandByte
; Sends an Echo command (with a byte parameter)
;
; input d0.b ... Echo command
; input d1.b ... Byte parameter
;****************************************************************************

Echo_SendCommandByte:
    movem.l d1-d2/a1, -(sp)            ; Save registers
    Echo_Z80Request                 ; We need the Z80 bus

@Try:
    lea     ($A01FFF), a1           ; First try the 1st slot
    tst.b   (a1)                    ; Is 1st slot available?
    beq.s   @Ready                    ; If so, move on
    subq.l  #4, a1                  ; Try 2nd slot otherwise

    tst.b   (a1)                    ; Check if 2nd slot is ready
    beq.s   @Ready                  ; Too busy?
    Echo_Z80Release                   ; Let Echo continue
    move.w  #$FF, d2                  ; Give it some time
    dbf     d2, *                       ; ...
    bra.s   @Try                      ; Try again

@Ready:
    move.b  d0, (a1)                ; Write command ID
    move.b  d1, -3(a1)              ; Write parameter
    Echo_Z80Release                 ; We're done with the Z80 bus

    movem.l (sp)+, d1-d2/a1            ; Restore registers
    rts                             ; End of subroutine

;****************************************************************************
; Echo_GetSSGEGEnabled
; Checks if SSG-EG is enabled (Z80 can disable this automatically if it
; detects certain machine types)
;
; output d0.b ... 0 = disabled, 1 = enabled
;****************************************************************************

Echo_GetSSGEGEnabled:

	Echo_Z80Request
	move.b ($A01FF7), d0            ; RAM_SSGEGDisabled
	Echo_Z80Release

	eor.b #0x1, d0

    rts                             ; End of subroutine


;****************************************************************************
; Echo_EnableSSGEG
; Enables SSG-EG feature
;****************************************************************************

Echo_EnableSSGEG:

	Echo_Z80Request
	move.b #0x0, ($A01FF7)          ; RAM_SSGEGDisabled
	Echo_Z80Release

    rts                             ; End of subroutine

;****************************************************************************
; Echo_DisableSSGEG
; Disables SSG-EG feature (e.g., for AtGames clones that screech)
;****************************************************************************

Echo_DisableSSGEG:

	Echo_Z80Request
	move.b #0x1, ($A01FF7)          ; RAM_SSGEGDisabled
	Echo_Z80Release

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
; Echo_PauseBGM
; Pauses BGM playback
;****************************************************************************

Echo_PauseBGM:
    move.w  d0, -(sp)               ; Save register
    move.b  #$08, d0                ; Command $08 = pause BGM
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
; Echo_SetStereo
; Sets whether stereo is enabled or not
;
; input d0.b ... 0 to disable, otherwise to enable
;****************************************************************************
Echo_SetStereo:
    movem.l d0-d1, -(sp)            ; Save registers
    tst.b   d0                      ; Check what we want to do
    seq.b   d1                      ; Put parameter in place
    move.b  #$09, d0                ; Command $09 = set stereo
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
    
    lea     Echo_FMVolTable(pc), a0 ; Determine FM volume
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
    
    lea     Echo_PSGVolTable(pc),a0 ; Determine PSG volume
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
    shs     d1                        ; (we do an heuristic for enabling PCM
    and.b   #1, d1                    ; based on the volume value)
    move.b  d1, (a1)+
    
    move.b  #1, ($A01FF1)           ; Tell Echo to update the volume levels
    
    movem.l (sp)+, d0-d1/a0-a1      ; Restore registers
    Echo_Z80Release                 ; We're done with the Z80 bus
    rts                             ; End of subroutine

;----------------------------------------------------------------------------

Echo_FMVolTable:
    dc.b    $7F,$7B,$77,$73,$70,$6C,$68,$65,$61,$5E,$5A,$57,$54,$50,$4D,$4A
    dc.b    $47,$44,$41,$3F,$3C,$39,$36,$34,$31,$2F,$2D,$2A,$28,$26,$24,$22
    dc.b    $20,$1E,$1C,$1A,$18,$16,$15,$13,$12,$10,$0F,$0D,$0C,$0B,$0A,$09
    dc.b    $08,$07,$06,$05,$04,$04,$03,$02,$02,$01,$01,$01,$00,$00,$00,$00

Echo_PSGVolTable:
    dc.b    $0F,$0F,$0E,$0E,$0D,$0D,$0C,$0C,$0B,$0B,$0B,$0A,$0A,$0A,$09,$09
    dc.b    $08,$08,$08,$07,$07,$07,$06,$06,$06,$06,$05,$05,$05,$04,$04,$04
    dc.b    $04,$03,$03,$03,$03,$03,$02,$02,$02,$02,$02,$02,$01,$01,$01,$01
    dc.b    $01,$01,$01,$01,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

;****************************************************************************
; Echo_SetVolumeEx
; Changes the global volume for each individual channel.
;
; input a0.l ... Pointer to 16 bytes
;                  8 bytes with FM volumes (0..127)
;                  4 bytes with PSG volumes (0..15)
;                  1 byte with PCM toggle (0/1)
;                  3 reserved (unused for now)
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
    move.b  (a0)+, (a1)+              ; (reserved)
    move.b  (a0)+, (a1)+              ; (reserved)
    move.b  (a0)+, (a1)+              ; (reserved)
    
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
    movem.l d1-d2/a1, -(sp)            ; Save registers

    clr.w   d0                      ; Set all needed bits to 0
    Echo_Z80Request                 ; We need the Z80 bus
    move.b  ($A01FF0), d0           ; Get the status flags

    tst.b   ($A01FFB)               ; Check if any commands can be sent
    beq.s   @NotBusy                ; Any room left for new commands?
    bset.l  #15, d0                 ; If not, set the relevant flag
@NotBusy:

    cmpi.b  #$FF, ($A01F00)         ; Check if the direct buffer is empty
    beq.s   @DirectEmpty            ; Any direct events still to be played?
    bset.l  #14, d0                 ; If so, set the relevant flag
@DirectEmpty:

    moveq   #0, d1                  ; Clear unused bits from index
    lea     @AndTable(pc), a1       ; Get pointer to look-up tables
    
    move.b  ($A01FFF), d1           ; Get next pending command (if any)
    beq.s   @QueueChecked           ; No commands left to process?
    move.b  (a1,d1.w), d2           ; Get mask of flags to leave
    and.b   d2, d0                  ; Remove flags that should be clear
    move.b  @OrTable-@AndTable(a1,d1.w), d2 ; Get mask of flags to set
    or.b    d2, d0                  ; Insert flags that should be set

    move.b  ($A01FFB), d1           ; Repeat that with 2nd pending command
    beq.s   @QueueChecked
    move.b  (a1,d1.w), d2
    and.b   d2, d0
    move.b  @OrTable-@AndTable(a1,d1.w), d2
    or.b    d2, d0

@QueueChecked:
    Echo_Z80Release                 ; Let the Z80 go!
    movem.l (sp)+, d1-d2/a1            ; Restore registers
    rts                             ; End of subroutine

;----------------------------------------------------------------------------
; Look-up tables used to readjust the status flags based on pending commands
; that haven't been processed yet (normally they wouldn't be updated yet, but
; this can catch programmers off guard so we cheat it).
;
; Every byte represents a possible command.
;----------------------------------------------------------------------------

@AndTable:  dc.b $FF,$FF, $FF,$FE,$FF,$FD, $FF,$FF,$FF
@OrTable:   dc.b $00,$00, $01,$00,$02,$00, $00,$00,$00
            even

;****************************************************************************
; Echo_GetFlags
; Gets the current values of the flags.
;
; output d0.b ... Bitmask with flags
;****************************************************************************

Echo_GetFlags:
    Echo_Z80Request                 ; Request Z80 bus
    move.b  ($A01FF2), d0           ; Get the flags
    Echo_Z80Release                 ; Done with Z80 RAM
    rts                             ; End of subroutine

;****************************************************************************
; Echo_SetFlags
; Sets flags from the 68000.
;
; input d0.b ... Bitmask of flags to be set (1 = set, 0 = intact)
;****************************************************************************

Echo_SetFlags:
    subq.w  #4, sp                  ; Buffer for the events
    move.b  #$FA, (sp)                ; Set flags
    move.b  d0, 1(sp)                 ; <bitmask>
    move.b  #$FF, 2(sp)               ; End of stream
    
    move.l  a0, -(sp)               ; Issue the events
    lea     4(sp), a0
    bsr     Echo_PlayDirect
    move.l  (sp)+, a0
    
    addq.w  #4, sp                  ; Done with the buffer
    rts                             ; End of subroutine

;****************************************************************************
; Echo_ClearFlags
; Clear flags from the 68000.
;
; input d0.b ... Bitmask of flags to be cleared (1 = clear, 0 = intact)
;****************************************************************************

Echo_ClearFlags:
    not.b   d0                      ; Bitmask is inverted
    subq.w  #4, sp                  ; Buffer for the events
    move.b  #$FB, (sp)                ; Set flags
    move.b  d0, 1(sp)                 ; <bitmask>
    move.b  #$FF, 2(sp)               ; End of stream
    not.b   d0                      ; Restore register
    
    move.l  a0, -(sp)               ; Issue the events
    lea     4(sp), a0
    bsr     Echo_PlayDirect
    move.l  (sp)+, a0
    
    addq.w  #4, sp                  ; Done with the buffer
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

	move.b  #$01, ($A01FF6)         ; Lock command queue

	move.b  #$00, ($A01FFB)         ; Init command queue wait flag

    move.b  #$01, ($A01FFF)         ; Command: load pointer list
	move.b  #$00, ($A01FFB)         ; No other command yet

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

	IF ECHO_ENCRYPT_Z80
	lea     EchoDecryptKey, a2          ; Decryption key start
	lea     EchoDecryptKeyEnd, a3          ; Decryption key end
	ENDIF

    move.w  #Z80ProgSize-1, d0     ; Size of Z80 program (DBF adjusted)
@LoadLoop:                          ; Go through all the program
	IF ECHO_ENCRYPT_Z80
    move.b  (a0)+, d2
	move.b  (a2)+, d3
	add.b   d2, d3
	move.b  d3, (a1)+
	cmp.l   a2, a3
	bne     @NoWrap
	lea     EchoDecryptKey, a2
	@NoWrap:
	ELSE
	move.b  (a0)+, (a1)+              ; Copy byte into Z80 RAM
	ENDIF
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
    move.b  d0, (a0)+
    move.b  d0, (a0)+
    move.b  d0, (a0)+
    move.b  d0, ($A01FF1)

    move.b  #$FF, ($A01F00)         ; No direct events to execute

    Echo_Z80Reset                   ; Now reset for real
    Echo_Z80Release                 ; Let the Z80 go!

	@EchoInitWaitLp:                ; Wait for initialisation to complete
	move.w  #$FF, d1                ; Give it some time
    dbf     d1, *                   ; ...
	Echo_Z80Request
	move.b  ($A01FF6), d0           ; Get lock flag
	Echo_Z80Release
	tst.b   d0
	bne     @EchoInitWaitLp

    movem.l (sp)+, d0/a0-a1         ; Restore registers
    rts                             ; End of subroutine
