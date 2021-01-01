
.BANK 0000 SLOT 0
.ORGA $00000674
	ld hl, $C01F ;00000674
	ld de, $C020 ;00000677
	ld (hl), $0000 ;0000067A
	call $0B42 ;0000067C
	ld hl, $C01D ;0000067F
	set 0, (hl) ;00000682
	ret ;00000684
;stopped writing due to overlap with another section
