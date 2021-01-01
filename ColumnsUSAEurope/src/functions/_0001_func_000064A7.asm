
.BANK 0001 SLOT 1
.ORGA $000064A7
	bit 7, [ix+6] ;000064A7
	ret z ;000064AB
	bit 1, [ix+0] ;000064AC
	ret nz ;000064B0
	LD   E,(IX+$0010) ;000064B1
	LD   D,(IX+$0011) ;000064B4
	PUSH IX ;000064B7
	pop hl ;000064B9
	ld b, $0000 ;000064BA
	ld c, $0014 ;000064BC
	add hl, bc ;000064BE
	ex de, hl ;000064BF
	LDI ;000064C0
	LDI ;000064C2
	LDI ;000064C4
	ld a, (hl) ;000064C6
	srl a ;000064C7
	ld (de),a ;000064C9
	xor a ;000064CA
	LD   (IX+$0012),A ;000064CB
	LD   (IX+$0013),A ;000064CE
	ret ;000064D1
;stopped writing due to overlap with another section
