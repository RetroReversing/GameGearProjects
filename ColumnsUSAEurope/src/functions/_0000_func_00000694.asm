
.BANK 0000 SLOT 0
.ORGA $00000694
	ld a, (hl) ;00000694
	inc hl ;00000695
	exx ;00000696
	ld e, a ;00000697
	ld d, $0000 ;00000698
	exx ;0000069A
	ld b, a ;0000069B
LAB_0000_0000069C:
	push bc ;0000069C
	push de ;0000069D
	exx ;0000069E
	pop hl ;0000069F
	push hl ;000006A0
	exx ;000006A1
	call $06AB ;000006A2
	pop de ;000006A5
	inc de ;000006A6
	pop bc ;000006A7
	djnz LAB_0000_0000069C ;z_UNTAKEN_JUMP_2 ;000006A8
	ret ;000006AA
;stopped writing due to overlap with another section
