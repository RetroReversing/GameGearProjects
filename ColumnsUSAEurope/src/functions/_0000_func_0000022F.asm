.BANK 0000 SLOT 0
.ORGA $0000022F
	ld hl, ($C012) ;0000022F
	dec hl ;00000232
	ld ($C012), hl ;00000233
	ld a, l ;00000236
	or h ;00000237
	ret ;00000238
;stopped writing due to overlap with another section
