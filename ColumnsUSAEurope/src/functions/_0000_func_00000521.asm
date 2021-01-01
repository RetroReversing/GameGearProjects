.BANK 0000 SLOT 0
.ORGA $00000521
	ld a, ($C09F) ;00000521
	or a ;00000524
	ret z ;00000525
	ld hl, $C0A2 ;00000526
	dec (hl) ;00000529
	ret nz ;0000052A
	ld a, $0002 ;0000052B
	ld ($C0A2), a ;0000052D
	call $0548 ;00000530
	ld hl, $C01D ;00000533
	set 0, (hl) ;00000536
	ld hl, $C0A1 ;00000538
	inc (hl) ;0000053B
	ld a, (hl) ;0000053C
	cp $0010 ;0000053D
	ret nz ;0000053F
	xor a ;00000540
	ld ($C0A1), a ;00000541
	ld ($C09F), a ;00000544
	ret ;00000547
;stopped writing due to overlap with another section
