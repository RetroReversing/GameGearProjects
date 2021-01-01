.BANK 0000 SLOT 0
.ORGA $00000CE1
	call $0674 ;00000CE1
	ld a, $0001 ;00000CE4
	ld ($C014), a ;00000CE6
	call $01FF ;00000CE9
	di ;00000CEC
	jp $0589 ;00000CED
;stopped writing due to overlap with another section
