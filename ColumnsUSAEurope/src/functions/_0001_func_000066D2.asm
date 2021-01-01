
.BANK 0001 SLOT 1
.ORGA $000066D2
	ld b, $0000 ;000066D2
	add hl, bc ;000066D4
	ld a, (hl) ;000066D5
	ret ;000066D6
;stopped writing due to overlap with another section
