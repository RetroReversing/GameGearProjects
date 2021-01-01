
.BANK 0000 SLOT 0
.ORGA $0000216B
	ld c, a ;0000216B
	rst $08 ;0000216C
	ld a, c ;0000216D
	add a, a ;0000216E
	ld e, a ;0000216F
	ld d, $0000 ;00002170
	ld hl, $21A5 ;00002172
	add hl, de ;00002175
	ld a, (hl) ;00002176
	inc hl ;00002177
	ld h, (hl) ;00002178
	ld l, a ;00002179
	ld b, (hl) ;0000217A
	inc hl ;0000217B
	ld c, $00BE ;0000217C
LAB_0000_0000217E:
	OUTI ;0000217E
	jr nz, LAB_0000_0000217E ;z_UNTAKEN_JUMP_2 ;00002180
	ret ;00002182
;stopped writing due to overlap with another section
