.BANK 0000 SLOT 0
.ORGA $000006D1
	ld a, (hl) ;000006D1
	inc hl ;000006D2
	exx ;000006D3
	ld e, a ;000006D4
	ld d, $0000 ;000006D5
	exx ;000006D7
	ld b, a ;000006D8
LAB_0000_000006D9:
	push bc ;000006D9
	push de ;000006DA
	exx ;000006DB
	pop hl ;000006DC
	push hl ;000006DD
	exx ;000006DE
	call $06E8 ;000006DF
	pop de ;000006E2
	inc de ;000006E3
	pop bc ;000006E4
	djnz LAB_0000_000006D9 ;z_UNTAKEN_JUMP_2 ;000006E5
	ret ;000006E7
;stopped writing due to overlap with another section
