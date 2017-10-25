;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================

CreditsToken_Heading1	equ 255
CreditsToken_Heading2	equ 254
CreditsToken_Name		equ 253

CREDIT_HEADING1: macro string
	dc.b CreditsToken_Heading1,\string,0
	endm

CREDIT_HEADING2: macro string
	dc.b CreditsToken_Heading2,\string,0
	endm

CREDIT_NAME: macro string
	dc.b CreditsToken_Name,\string,0
	endm

CreditsStrings:
	CREDIT_HEADING1	"TANGLEWOOD"
	CREDIT_HEADING1	"A game by"
	CREDIT_NAME		"Matt Phillips"
	even
	