
.BANK 0000 SLOT 0
.ORGA $00000589
	ld de, $0000 ;00000589
	ld hl, $0000 ;0000058C
	ld bc, $0010 ;0000058F
	call $05F1 ;00000592
	ld de, $2000 ;00000595
	ld hl, $0000 ;00000598
	ld bc, $0010 ;0000059B
	call $05F1 ;0000059E
	ld de, $3800 ;000005A1
	ld hl, $0000 ;000005A4
	ld bc, $0380 ;000005A7
	call $05F1 ;000005AA
;stopped writing due to overlap with another section
