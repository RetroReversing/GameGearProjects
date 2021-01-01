
.BANK 0000 SLOT 0
.ORGA $00000028
	ld a, $00E0 ;00000028
	jp $003B ;0000002A
	nop ; not executed offset: 0000002D
	nop ; not executed offset: 0000002E
	nop ; not executed offset: 0000002F
;stopped writing due to overlap with another section
