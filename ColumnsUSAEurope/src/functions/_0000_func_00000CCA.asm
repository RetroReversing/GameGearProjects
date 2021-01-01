
.BANK 0000 SLOT 0
.ORGA $00000CCA
	ld a, ($C005) ;00000CCA
	bit 1, a ;00000CCD
	ret z ;00000CCF
	nop ; not executed offset: 00000CD0
	nop ; not executed offset: 00000CD1
	nop ; not executed offset: 00000CD2
	nop ; not executed offset: 00000CD3
	nop ; not executed offset: 00000CD4
	nop ; not executed offset: 00000CD5
	nop ; not executed offset: 00000CD6
	nop ; not executed offset: 00000CD7
;stopped writing due to overlap with another section
