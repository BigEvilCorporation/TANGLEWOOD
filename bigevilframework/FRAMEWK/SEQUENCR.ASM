;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   SEGA Genesis Framework (c) Matt Phillips 2014
;==============================================================
;   sequencr.asm - Basic PSG sequencer
;==============================================================

SequencerTest:

	; Bit 7   : Latch (1 = indicates this is the first byte of data)
	; Bit 6-5 : Channel (0-3)
	; Bit 4   : Attenuation data (1) or tone/noise data (0)
	; Bit 3-0 : Low 4 bits of data to write to register
	
	; If register is more than 4 bits wide, send another byte...
	; Bit 7   : Latch (0 = indicates this is the second byte of data)
	; Bit 6   : Unused
	; Bit 5-0 : High 6 bits of data to write to register
	
	; Write 0 to channel 0's attenuation register (no attenuation = full volume)
	move.b #%10010000, psg_control
	
	; Write 254 to channel 0's tone register (counter reset value, so low values = high frequencies)
	;move.b #%10001110, psg_control ; Latch + channel 0 + tone type + 4 bits of data
	;move.b #%00001111, psg_control ; No latch + rest of data
	
	;move.b #%11110000, psg_control ; Channel 3 full volume
	;move.b #%11100100, psg_control ; Latch + channel 3 + noise type + 4 bits of data
	
	; Reset audio clock
	clr.l (audio_clock)
	
	lea chan0_notes, a0    ; Notes to a0
	lea envelopes, a1      ; Envelopes to a1
	
	@ProcessNote:
	
	clr.l d1
	clr.l d2

	; ===================================================
	; Read audio clock, start and end time of current note
	; ===================================================
	move.w #0x2, d3            ; Index register
	move.l (audio_clock), d0   ; Read current audio clock
	move.w (a0), d1            ; Start time from first word of note
	move.w (a0,d3.w), d2       ; Sustain time from second word of note
	move.w #0x4, d3            ; Index register
	move.b (a1,d3.w), d3       ; Release time from 5th byte of envelope
	add.l d1, d2               ; Add sustain time to get note off time
	add.l d3, d2               ; Add release time to get note end time
	
	; ===================================================
	; Test if clock is within start time of current note
	; ===================================================
	cmp.l d1, d0               ; Compare clock with note start time
	bge @WithinStartTime       ; Branch if Greater or Equal
	move.b #0x9F, psg_control  ; Not yet reached start time of note, silence channel 0
	jmp @ProcessNote           ; Jump back to top to evaluate again
	
	@WithinStartTime:          ; Within start time of note
	
	; ===================================================
	; Test if clock is within release time of current note
	; ===================================================
	cmp.l d2, d0               ; Compare clock with note end time
	blt @WithinRelease         ; Branch if Less Than
	move.b #0x9F, psg_control  ; End of note, silence channel 0
	addi.l #0x6, a0            ; Increment a0 by 3 words
	jmp @ProcessNote           ; Jump back to top to evaluate next note
	
	@WithinRelease:            ; Within release time of note
	
	; ===================================================
	; Read envelope id, attenuation and counter reset
	; ===================================================
	move.l #0x4, d3            ; Index register
	move.w (a0,d3.w), d2       ; Envelope/attenuation/counter in third word of note (a0+4)
	move.w d2, d3              ; Backup before masking
	
	; ===================================================
	; Send counter reset value to PSG
	; ===================================================
	and.b #0x0F, d3            ; Clear upper 4 bits (leave lower 4 bits of the counter reset value)
	or.b #0x80, d3             ; Latch bit ON, channel id 0, tone data bit OFF
	move.b d3, psg_control     ; Write to PSG port
	
	move.w d2, d3              ; Restore from backup
	and.w #0x03F0, d3          ; Only need bits 9-4 (upper 6 bits of the counter reset value)
	ror.w #0x4, d3             ; Shift to bits 5-0 (and by default the latch bit will be OFF, channel id 0, tone data bit OFF)
	move.b d3, psg_control     ; Write to PSG port

	; ===================================================
	; Calculate current attenuation from envelope
	; ===================================================
	move.w #0x1, d3            ; Index register
	move.b (a1,d3.w), d3       ; Attack time from 2nd byte of envelope
	add.l d1, d2               ; Add to note on time
	cmp.l d2, d0               ; Compare with audio clock
	bge @PassedAttack          ; Branch if Greater or Equal
	;;Inside attack time
	
	@PassedAttack:
	move.w #0x2, d3            ; Index register
	move.b (a1,d3.w), d3       ; Decay time from 3rd byte of envelope
	add.l d1, d2               ; Add to note on time
	cmp.l d2, d0               ; Compare with audio clock
	bge @PassedDecay          ; Branch if Greater or Equal
	;;Inside decay time
	
	@PassedDecay:
	
	@PassedSustain:
	;;Inside release time

	; ===================================================
	; Send attenuation to PSG
	; ===================================================
	move.w d2, d3              ; Restore from backup
	ror.w #0x8, d3             ; Shift attenuation/envelope id to lower byte
	ror.w #0x4, d3             ; Shift attenuation to bits 3-0
	and.b #0x0F, d3            ; Clear top nybble
	or.b #0x90, d3             ; Latch bit ON, channel 0, attenuation bit ON
	move.b d3, psg_control     ; Write to PSG port
	
	jmp @ProcessNote

	rts

; Note struct:

; Byte 0 : Upper byte of start time (hsync clock)
; Byte 1 : Lower byte of start time (hsync clock)
; Byte 2 : Upper byte  of sustain time (hsync clock)
; Byte 3 : Lower byte  of sustain time (hsync clock)
; Byte 4 :
;   Bits 7-4 : Attenuation
;   Bits 3-2 : Envelope ID
;   Bits 1-0 : Upper 2 bits of counter reset
; Byte 5 :
;   Lower 8 bits of counter rest

chan0_notes:

	dc.b 0x00, 0x00 ; Start time (hsync clock)
	dc.b 0x00, 0xFF ; Sustain time (hsync clock)
	dc.b 0x00       ; Attenuation 0, envelope id 0, upper 2 bits of counter reset
	dc.b 0xFF       ; Lower 8 bits of counter reset
	
	dc.b 0x01, 0xFF ; Start time (hsync clock)
	dc.b 0x00, 0x40 ; Sustain time (hsync clock)
	dc.b 0x01       ; Attenuation 0, envelope id 0, upper 2 bits of counter reset
	dc.b 0xDD       ; Lower 8 bits of counter reset
	
	dc.b 0x02, 0x0E ; Start time (hsync clock)
	dc.b 0xFF, 0xFF ; Sustain time (hsync clock)
	dc.b 0xF0       ; Attenuation 10, envelope id 0, upper 2 bits of counter reset
	dc.b 0x00       ; Lower 8 bits of counter reset

chan0_notes_end
chan0_notes_len equ chan0_notes_end-chan0_notes
chan0_notes_count equ chan0_notes_len/(size_word*3)


; Envelope struct:

; Byte 0 : Attack height (max attenuation)
; Byte 1 : Attack time
; Byte 2 : Decay time
; Byte 3 : Sustain height
; Byte 4 : Release time

envelopes:
	dc.b 0x00, 0xFF, 0x0F, 0x04, 0xFF
