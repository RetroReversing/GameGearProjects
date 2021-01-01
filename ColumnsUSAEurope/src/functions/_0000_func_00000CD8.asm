.BANK 0000 SLOT 0
.ORGA $00000CD8
	ld a, ($C09F) ;00000CD8
	or a ;00000CDB
	ret z ;00000CDC
	pop hl ;00000CDD
	jp $01FF ;00000CDE
;stopped writing due to overlap with another section
