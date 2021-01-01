
.BANK 0000 SLOT 0
.ORGA $00000445
	ld c, $00BE ;00000445
	ld a, $0000 ;00000447
	out ($00BF), a ;00000449
	ld a, $007F ;0000044B
	out ($00BF), a ;0000044D
	ld hl, $C300 ;0000044F
	call $09B0 ;00000452
	ld a, $0080 ;00000455
	out ($00BF), a ;00000457
	ld a, $007F ;00000459
	out ($00BF), a ;0000045B
	ld hl, $C340 ;0000045D
	call $0930 ;00000460
	ret ;00000463
;stopped writing due to overlap with another section
