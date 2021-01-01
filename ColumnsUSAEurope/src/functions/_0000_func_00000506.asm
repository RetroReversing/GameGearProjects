
.BANK 0000 SLOT 0
.ORGA $00000506
	ld a, $0002 ;00000506
	ld ($C09F), a ;00000508
	ld hl, $C01F ;0000050B
	ld de, $C05F ;0000050E
	ld bc, $0040 ;00000511
	call $0B40 ;00000514
	ld a, $0002 ;00000517
	ld ($C0A2), a ;00000519
	xor a ;0000051C
	ld ($C0A1), a ;0000051D
	ret ;00000520
;stopped writing due to overlap with another section
