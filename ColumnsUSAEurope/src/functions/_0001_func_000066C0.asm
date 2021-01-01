
.BANK 0001 SLOT 1
.ORGA $000066C0
	and $007F ;000066C0
	ADD  A,(IX+$0005) ;000066C2
	ld hl, $66E1 ;000066C5
;stopped writing due to overlap with another section
