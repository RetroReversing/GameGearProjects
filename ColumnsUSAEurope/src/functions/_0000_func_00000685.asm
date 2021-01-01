
.BANK 0000 SLOT 0
.ORGA $00000685
	xor a ;00000685
	out ($00BF), a ;00000686
	ld a, $00C0 ;00000688
	out ($00BF), a ;0000068A
	ld hl, $C01F ;0000068C
	ld c, $00BE ;0000068F
	jp $09B0 ;00000691
;stopped writing due to overlap with another section
