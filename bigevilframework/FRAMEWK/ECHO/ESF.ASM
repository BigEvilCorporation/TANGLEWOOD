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
    dc.b    $E0
    dc.b    (\1)
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
    dc.b    $FE
    dc.b    (\1)
    endm

;****************************************************************************
; ESF_Stop
; Stop event.
;****************************************************************************

ESF_Stop macro
    dc.b    $FF
    endm
