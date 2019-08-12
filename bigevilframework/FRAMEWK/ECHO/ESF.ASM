;****************************************************************************
; Channel ID constants
;****************************************************************************

ESF_FM1     equ $00         ; FM channel #1
ESF_FM2     equ $01         ; FM channel #2
ESF_FM3     equ $02         ; FM channel #3
ESF_FM4     equ $04         ; FM channel #4
ESF_FM5     equ $05         ; FM channel #5
ESF_FM6     equ $06         ; FM channel #6
ESF_PSG1    equ $08         ; PSG square channel #1
ESF_PSG2    equ $09         ; PSG square channel #2
ESF_PSG3    equ $0A         ; PSG square channel #3
ESF_PSG4    equ $0B         ; PSG noise channel
ESF_PCM     equ $0C         ; PCM channel

;****************************************************************************
; FM note frequency constants
;****************************************************************************

ESF_FMFREQ_C    equ 644
ESF_FMFREQ_CS   equ 681
ESF_FMFREQ_D    equ 722
ESF_FMFREQ_DS   equ 765
ESF_FMFREQ_E    equ 810
ESF_FMFREQ_F    equ 858
ESF_FMFREQ_FS   equ 910
ESF_FMFREQ_G    equ 964
ESF_FMFREQ_GS   equ 1021
ESF_FMFREQ_A    equ 1081
ESF_FMFREQ_AS   equ 1146
ESF_FMFREQ_B    equ 1214

ESF_FMFREQ_0    equ ESF_FMFREQ_C
ESF_FMFREQ_1    equ ESF_FMFREQ_CS
ESF_FMFREQ_2    equ ESF_FMFREQ_D
ESF_FMFREQ_3    equ ESF_FMFREQ_DS
ESF_FMFREQ_4    equ ESF_FMFREQ_E
ESF_FMFREQ_5    equ ESF_FMFREQ_F
ESF_FMFREQ_6    equ ESF_FMFREQ_FS
ESF_FMFREQ_7    equ ESF_FMFREQ_G
ESF_FMFREQ_8    equ ESF_FMFREQ_GS
ESF_FMFREQ_9    equ ESF_FMFREQ_A
ESF_FMFREQ_10   equ ESF_FMFREQ_AS
ESF_FMFREQ_11   equ ESF_FMFREQ_B

;****************************************************************************
; Panning values
;****************************************************************************

ESF_PAN_OFF:    equ $00     ; Mute
ESF_PAN_L:      equ $80     ; Left speaker only
ESF_PAN_R:      equ $40     ; Right speaker only
ESF_PAN_LR:     equ $C0     ; Both speakers

;****************************************************************************
; ESF_NoteOn
; Start playing a note.
;----------------------------------------------------------------------------
; For FM channels:
;   ESF_NoteOn channel, octave, semitone
; For square PSG channels:
;   ESF_NoteOn channel, octave, semitone
; For noise PSG channel:
;   ESF_NoteOn channel, type
; For PCM channel:
;   ESF_NoteOn channel, instrument
;----------------------------------------------------------------------------
; param channel ...... channel to play on
; param octave ....... octave (0 to 7 for FM, 0 to 5 for PSG)
; param semitone ..... semitone (0 to 11)
; param type ......... noise type ($00 to $07)
; param instrument ... drum instrument ID ($00 to $FF)
;****************************************************************************

ESF_NoteOn macro
    dc.b    $00+(\1)
    if      (\1)<ESF_PSG1
    dc.b    (\2)*32+(\3)*2+1
    elseif  (\1)<ESF_PSG4
    dc.b    (\2)*24+(\3)*2
    else
    dc.b    \2
    endc
    endm

;****************************************************************************
; ESF_NoteOff
; Stop playing a note.
;----------------------------------------------------------------------------
; Format:
;   ESF_NoteOff channel
;----------------------------------------------------------------------------
; param channel ...... channel to stop
;****************************************************************************

ESF_NoteOff macro
    dc.b    $10+(\1)
    endm

;****************************************************************************
; ESF_SetVol
; Set the volume of a channel.
;----------------------------------------------------------------------------
; Format:
;   ESF_SetVol channel, volume
;----------------------------------------------------------------------------
; param channel ... channel to modify
; param volume .... new volume ($00 to $7F for FM, $00 to $0F for PSG)
;****************************************************************************

ESF_SetVol macro
    dc.b    $20+(\1)
    dc.b    (\2)
    endm

;****************************************************************************
; ESF_SetFreq
; Sets the frequency of a channel (allows note slides).
;----------------------------------------------------------------------------
; For FM channels:
;   ESF_SetFreq channel, octave, frequency
; For square PSG channels:
;   ESF_SetFreq channel, frequency
; For noise PSG channel:
;   ESF_SetFreq channel, type
;----------------------------------------------------------------------------
; param channel ..... affected channel
; param octave ...... octave
; param frequency ... frequency (0 to $7FF for FM, 0 to $3FF for PSG)
; param type ........ noise type ($00 to $07)
;****************************************************************************

ESF_SetFreq macro
    dc.b    $30+(\1)
    if      (\1)<ESF_PSG1
    dc.b    ((\2)<<3)|((\3)>>8)
    dc.b    (\3)&$FF
    elseif  (\1)<ESF_PSG4
    dc.b    (\2)&$0F
    dc.b    (\2)>>6
    else
    dc.b    (\2)
    endc
    endm

;****************************************************************************
; ESF_SetInstr
; Set the instrument of a channel.
;----------------------------------------------------------------------------
; Format:
;   ESF_SetInstr channel, instrument
;----------------------------------------------------------------------------
; param channel ...... Channel to lock
; param instrument ... Instrument ID ($00 to $FF)
;****************************************************************************

ESF_SetInstr macro
    dc.b    $40+(\1)
    dc.b    (\2)
    endm

;****************************************************************************
; ESF_Lock
; Lock SFX channel.
;----------------------------------------------------------------------------
; Format:
;   ESF_Lock channel
;----------------------------------------------------------------------------
; param channel ... Channel to lock
;****************************************************************************

ESF_Lock macro
    dc.b    $E0+(\1)
    endm

;****************************************************************************
; ESF_SetPan
; Set the panning of a FM channel.
;----------------------------------------------------------------------------
; Format:
;   ESF_SetPan channel, panning
;----------------------------------------------------------------------------
; param channel ... channel to modify
; param panning ... panning (see ESF_PAN_*)
;****************************************************************************

ESF_SetPan macro
    dc.b    $F0+(\1)
    dc.b    (\2)
    endm

;****************************************************************************
; ESF_SetFMReg
; Set a FM register directly.
;----------------------------------------------------------------------------
; Format:
;   ESF_SetFMReg bank, register, value
;----------------------------------------------------------------------------
; param bank ....... YM2612 bank (0 or 1)
; param register ... register to modify
; param value ...... value to write
;****************************************************************************

ESF_SetFMReg macro
    dc.b    $F8+(\1)
    dc.b    (\2)
    dc.b    (\3)
    endm

;****************************************************************************
; ESF_Delay
; Stop event.
;----------------------------------------------------------------------------
; Format:
;   ESF_Delay ticks
;----------------------------------------------------------------------------
; param ticks ... Ticks to wait (60 = 1 second)
;****************************************************************************

ESF_Delay macro
    if      (\1)>0
    if      (\1)<=$10
    dc.b    $D0-1+(\1)
    else
    dc.b    $FE
    dc.b    (\1)&$FF
    endc
    endc
    endm

;****************************************************************************
; ESF_Stop
; Stop event.
;****************************************************************************

ESF_Stop macro
    dc.b    $FF
    endm
