.BANK 0001 SLOT 1
.ORGA $0000668E
	push hl ;0000668E
	push bc ;0000668F
	push de ;00006690
	ld hl, $DD03 ;00006691
	ld de, $DD04 ;00006694
	ld bc, $018C ;00006697
	ld (hl), $0000 ;0000669A
	LDIR ;0000669C
	pop de ;0000669E
	pop bc ;0000669F
	pop hl ;000066A0
;stopped writing due to overlap with another section
