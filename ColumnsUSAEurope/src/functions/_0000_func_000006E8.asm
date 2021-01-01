
.BANK 0000 SLOT 0
.ORGA $000006E8
	ld a, (hl) ;000006E8
	inc hl ;000006E9
	or a ;000006EA
	ret z ;000006EB
	ld b, a ;000006EC
	and $0080 ;000006ED
	ld c, a ;000006EF
	ld a, b ;000006F0
	and $007F ;000006F1
	ld b, a ;000006F3
LAB_0000_000006F4:
	ld a, (hl) ;000006F4
	ld (de),a ;000006F5
	bit 7, c ;000006F6
	jr z, LAB_0000_000006FB ;z_UNTAKEN_JUMP_2 ;000006F8
	inc hl ;000006FA
LAB_0000_000006FB:
	exx ;000006FB
	add hl, de ;000006FC
	push hl ;000006FD
	exx ;000006FE
	pop de ;000006FF
	djnz LAB_0000_000006F4 ;z_UNTAKEN_JUMP_2 ;00000700
	bit 7, c ;00000702
	jp nz, $06E8 ;z_UNTAKEN_JUMP_3 ;00000704
	inc hl ;00000707
	jp $06E8 ;00000708
;stopped writing due to overlap with another section
