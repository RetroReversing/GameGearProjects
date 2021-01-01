
.BANK 0001 SLOT 1
.ORGA $000066C8
	ld c, a ;000066C8
	ld b, $0000 ;000066C9
	add hl, bc ;000066CB
	add hl, bc ;000066CC
	ld c, (hl) ;000066CD
	inc hl ;000066CE
	ld h, (hl) ;000066CF
	ld l, c ;000066D0
	ret ;000066D1
;stopped writing due to overlap with another section
