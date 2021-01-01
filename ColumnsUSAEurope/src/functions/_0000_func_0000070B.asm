
.BANK 0000 SLOT 0
.ORGA $0000070B
	ld ($C0FD), a ;0000070B
	rst $08 ;0000070E
	ld c, (hl) ;0000070F
	inc hl ;00000710
	ld b, (hl) ;00000711
	inc hl ;00000712
;stopped writing due to overlap with another section
