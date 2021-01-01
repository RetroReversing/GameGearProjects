
.BANK 0000 SLOT 0
.ORGA $00000030
	ld a, $00A0 ;00000030
	jp $003B ;00000032
	nop ; not executed offset: 00000035
	nop ; not executed offset: 00000036
	nop ; not executed offset: 00000037
	jp $0273 ;00000038
;stopped writing due to overlap with another section
