.BANK 0000 SLOT 0
.ORGA $00000439
	ld a, ($C014) ;00000439
	or a ;0000043C
	ret z ;0000043D
	dec a ;0000043E
	jr z, LAB_0000_00000443 ;z_UNTAKEN_JUMP_2 ;0000043F
	rst $28 ;00000441
	ret ;00000442
LAB_0000_00000443:
	rst $30 ;00000443
	ret ;00000444
;stopped writing due to overlap with another section
