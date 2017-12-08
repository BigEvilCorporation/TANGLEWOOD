;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================

CreditsToken_Heading1	equ 255
CreditsToken_Heading2	equ 254
CreditsToken_Name		equ 253
CreditsToken_Space		equ 252
CreditsToken_End		equ 251

CREDIT_HEADING1: macro string
	dc.b CreditsToken_Heading1,\string,0
	endm

CREDIT_HEADING2: macro string
	dc.b CreditsToken_Heading2,\string,0
	endm

CREDIT_NAME: macro string
	dc.b CreditsToken_Name,\string,0
	endm

CREDIT_SPACE: macro
	dc.b CreditsToken_Space
	endm

CREDIT_END: macro
	dc.b CreditsToken_End
	even
	endm

CreditsStrings:
	CREDIT_HEADING1	"TANGLEWOOD"
	CREDIT_SPACE
	CREDIT_SPACE
	CREDIT_SPACE
	CREDIT_SPACE
	CREDIT_SPACE
	CREDIT_SPACE

	CREDIT_HEADING1	"A game by"
	CREDIT_NAME		"Matt Phillips"
	CREDIT_SPACE
	CREDIT_SPACE
	CREDIT_SPACE
	CREDIT_SPACE
	CREDIT_SPACE
	CREDIT_SPACE

	CREDIT_HEADING1 "Designed and Programmed by"
	CREDIT_NAME		"Matt Phillips"
	CREDIT_SPACE
	CREDIT_SPACE

	CREDIT_HEADING1 "Nymn original concept by"
	CREDIT_NAME		"Drew Lade"
	CREDIT_SPACE
	CREDIT_SPACE

	CREDIT_HEADING1 "Echo original concept by"
	CREDIT_NAME		"Armen Mardirossian"
	CREDIT_SPACE
	CREDIT_SPACE

	CREDIT_HEADING1 "Lead Character Design and Animation"
	CREDIT_NAME		"Armen Mardirossian"
	CREDIT_SPACE
	CREDIT_SPACE

	CREDIT_HEADING1 "Character Design and Animation"
	CREDIT_NAME		"Drew Lade"
	CREDIT_NAME		"Krzysztof Matys"
	CREDIT_SPACE
	CREDIT_SPACE

	CREDIT_HEADING1 "Environment Art"
	CREDIT_NAME		"Matthew Weekes"
	CREDIT_NAME		"Drew Lade"
	CREDIT_SPACE
	CREDIT_SPACE

	CREDIT_HEADING1 "Level Design"
	CREDIT_NAME		"Matthew Weekes"
	CREDIT_NAME		"Matt Phillips"
	CREDIT_SPACE
	CREDIT_SPACE

	CREDIT_HEADING1 "Original Soundtrack by"
	CREDIT_NAME		"Freezedream"
	CREDIT_SPACE
	CREDIT_SPACE

	CREDIT_HEADING1 "Sound Design"
	CREDIT_NAME		"Nathan Stanley"
	CREDIT_NAME		"Colin Bickerstaffe"
	CREDIT_SPACE
	CREDIT_SPACE

	CREDIT_HEADING1 "Cutscene Animation"
	CREDIT_NAME		"Armen Mardirossian"
	CREDIT_SPACE
	CREDIT_SPACE

	CREDIT_HEADING1 "Graphic Design"
	CREDIT_NAME		"Luis Martins"
	CREDIT_NAME		"Jake Smith"
	CREDIT_NAME		"Lauren Bamford"
	CREDIT_SPACE
	CREDIT_SPACE

	CREDIT_HEADING1 "Tools Programming"
	CREDIT_NAME		"Matt Phillips"
	CREDIT_NAME		"Nicolas Hamel"
	CREDIT_SPACE
	CREDIT_SPACE

	CREDIT_HEADING1 "Font Design"
	CREDIT_NAME		"Javier Degirolmo"
	CREDIT_SPACE
	CREDIT_SPACE

	CREDIT_HEADING1 "Kickstarter Development Team"
	CREDIT_NAME		"Liz Hoskin"
	CREDIT_NAME		"Matthew Woodward"
	CREDIT_SPACE
	CREDIT_SPACE

	CREDIT_HEADING1 "QA Testing"
	CREDIT_NAME		"David Blakemore"
	CREDIT_NAME		"Davydd Pattinson"
	CREDIT_NAME		"Kt Thorogood"
	CREDIT_NAME		"Rob Chambers"
	CREDIT_NAME		"Martin Hockenhull"
	CREDIT_NAME		"Kaiman Brown"
	CREDIT_NAME		"Ken Talbot"
	CREDIT_NAME		"Lex Lowndes"
	CREDIT_NAME		"Michael Nam"
	CREDIT_NAME		"Joel Heason"
	CREDIT_NAME		"Bruce Gdula"
	CREDIT_NAME		"Simon Lock"
	CREDIT_NAME		"Karl Burke"
	CREDIT_SPACE
	CREDIT_SPACE

	CREDIT_HEADING1 "PCB Design and Supply"
	CREDIT_NAME		"db electronics"
	CREDIT_SPACE
	CREDIT_SPACE

	CREDIT_HEADING1 "Cartridge Design and Supply"
	CREDIT_NAME		"Mortoff Games"
	CREDIT_SPACE
	CREDIT_SPACE

	CREDIT_SPACE
	CREDIT_HEADING1 "TANGLEWOOD uses the"
	CREDIT_HEADING1 "Echo sound driver by Sik"
	CREDIT_SPACE
	CREDIT_SPACE

	CREDIT_HEADING1 "Equipment Donations"
	CREDIT_NAME		"Adam Dobson"
	CREDIT_NAME		"Emma Hayley"
	CREDIT_NAME		"Daniel Killeen"
	CREDIT_NAME		"Jamie Deplacedo"
	CREDIT_NAME		"Jason Birch"
	CREDIT_NAME		"db Electronics"
	CREDIT_NAME		"Dambuster Studios"
	CREDIT_NAME		"Double Eleven Ltd"
	CREDIT_SPACE
	CREDIT_SPACE

	CREDIT_HEADING1 "Special Thanks"
	CREDIT_NAME		"Djanine Taylor"
	CREDIT_NAME		"Holly Elizabeth Jones"
	CREDIT_NAME		"Kt 'Thoroughly Good' Chambers"
	CREDIT_NAME		"Gemo Wainwright"
	CREDIT_NAME		"Glenn Kneale"
	CREDIT_NAME		"Kevin Purchase"
	CREDIT_NAME		"Ali Tinsley"
	CREDIT_NAME		"Pete Richardson"
	CREDIT_NAME		"Stu Allardes"
	CREDIT_NAME		"Jenni Wardell"
	CREDIT_NAME		"Meg Rouncefield"
	CREDIT_NAME		"Gemma Young"
	CREDIT_NAME		"Simon Butler"
	CREDIT_NAME		"Darren Wall"
	CREDIT_NAME		"Lee Hutchinson"
	CREDIT_NAME		"Gruss Newton"
	CREDIT_SPACE

	CREDIT_HEADING1 "The Museum of Games and Gaming"
	CREDIT_NAME		"Phil Robinson"
	CREDIT_SPACE

	CREDIT_HEADING1 "National Videogame Arcade"
	CREDIT_NAME		"Alex Roberts"
	CREDIT_NAME		"Allen Coombs"
	CREDIT_NAME		"Iain Simons"
	CREDIT_SPACE

	CREDIT_HEADING1 "Computerphile"
	CREDIT_NAME		"Sean Riley"
	CREDIT_SPACE

	CREDIT_HEADING1 "retrospiel.de"
	CREDIT_NAME		"Chris"
	CREDIT_SPACE

	CREDIT_HEADING1 "Mega Emulator core"
	CREDIT_NAME		"Lee Hammerton"
	CREDIT_NAME		"Jake Turner"
	CREDIT_SPACE

	CREDIT_HEADING1 "All at"
	CREDIT_NAME		"Traveller's Tales"
	CREDIT_NAME		"Crytek UK"
	CREDIT_NAME		"Deep Silver Dambuster Studios"
	CREDIT_SPACE

	CREDIT_HEADING1 "All at"
	CREDIT_NAME		"spritesmind.net"
	CREDIT_NAME		"assemblergames.com"
	CREDIT_NAME		"sega-16.com"
	CREDIT_NAME		"sonicretro.org"
	CREDIT_NAME		"Plutiedev"
	CREDIT_NAME		"TiTAN"
	CREDIT_SPACE

	CREDIT_HEADING1 "66 Egg"
	CREDIT_NAME		"Lauren Bamford"
	CREDIT_NAME		"Maddie Bamford"
	CREDIT_NAME		"Sarah Catherine"
	CREDIT_NAME		"Pickles and Toki"
	CREDIT_SPACE
	CREDIT_NAME		"Michael 'My Mate' Bamford"
	CREDIT_NAME		"Rose-Marie Bamford"
	CREDIT_SPACE
	CREDIT_NAME		"Our Lord and Saviour Torbjorn"
	CREDIT_SPACE
	CREDIT_SPACE

	CREDIT_SPACE
	CREDIT_SPACE
	CREDIT_SPACE
	CREDIT_SPACE
	CREDIT_SPACE
	CREDIT_SPACE
	CREDIT_HEADING1 "Extra Special Super Thanks"
	CREDIT_NAME		"Javier 'Sik' Degirolmo"

	CREDIT_END