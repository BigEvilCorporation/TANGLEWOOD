;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   SEGA Genesis Framework (c) Matt Phillips 2014
;==============================================================
;   debugger.asm - Cross Products SNASM2 debugger setup
;==============================================================

   ; Setup traps/exceptions to allow SCSI debugger access
MSCSITrap   equ 0x108008
MSCSIExcept equ 0x10800C

DBG_ConnectDebugger:

   move.b d0, 0x108000 ; Allow write to SNASM RAM
   move.l #0x02<<24+MSCSIExcept, 8+(4*0)
   move.l #0x03<<24+MSCSIExcept, 8+(4*1)
   move.l #0x04<<24+MSCSIExcept, 8+(4*2)
   move.l #0x05<<24+MSCSIExcept, 8+(4*3)
   move.l #0x06<<24+MSCSIExcept, 8+(4*4)
   move.l #0x07<<24+MSCSIExcept, 8+(4*5)
   move.l #0x08<<24+MSCSIExcept, 8+(4*6)
   move.l #0x09<<24+MSCSIExcept, 8+(4*7)
   move.l #MSCSITrap, 0x80
   move.b d0, 0x10F001 ; Write protect SNASM RAM
   ori #0x8000, sr     ; Enable TRACE exception

   rts
