
.BANK 0001 SLOT 1
.ORGA $000066A1
	push hl ;000066A1
	push bc ;000066A2
	ld hl, $66B6 ;000066A3
	ld b, $000A ;000066A6
	ld c, $007F ;000066A8
	OTIR ;000066AA
	ld a, $00FF ;000066AC
	ld ($DD0A), a ;000066AE
	pop bc ;000066B1
	pop hl ;000066B2
	jp $6431 ;000066B3
;stopped writing due to overlap with another section
