.BANK 0000 SLOT 0
.ORGA $00000CD8
	ld a, ($C09F) ;00000CD8
	or a ;00000CDB
	ret z ;00000CDC
	nop ; not executed offset: 00000CDD
	nop ; not executed offset: 00000CDE
	nop ; not executed offset: 00000CDF
	nop ; not executed offset: 00000CE0
;stopped writing due to overlap with another section
