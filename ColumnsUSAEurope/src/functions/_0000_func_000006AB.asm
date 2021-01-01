
.BANK 0000 SLOT 0
.ORGA $000006AB
	ld a, (hl) ;000006AB
	inc hl ;000006AC
	or a ;000006AD
	ret z ;000006AE
	ld b, a ;000006AF
	and $0080 ;000006B0
	ld c, a ;000006B2
	ld a, b ;000006B3
	and $007F ;000006B4
	ld b, a ;000006B6
LAB_0000_000006B7:
	rst $08 ;000006B7
	ld a, (hl) ;000006B8
	ld a, (hl) ;000006B9
	out ($00BE), a ;000006BA
	xor a ;000006BC
	or c ;000006BD
	jr z, LAB_0000_000006C1 ;z_UNTAKEN_JUMP_2 ;000006BE
	inc hl ;000006C0
LAB_0000_000006C1:
	exx ;000006C1
	add hl, de ;000006C2
	push hl ;000006C3
	exx ;000006C4
	pop de ;000006C5
	djnz LAB_0000_000006B7 ;z_UNTAKEN_JUMP_2 ;000006C6
	xor a ;000006C8
	or c ;000006C9
	jp nz, $06AB ;z_UNTAKEN_JUMP_3 ;000006CA
	inc hl ;000006CD
	jp $06AB ;000006CE
;stopped writing due to overlap with another section
