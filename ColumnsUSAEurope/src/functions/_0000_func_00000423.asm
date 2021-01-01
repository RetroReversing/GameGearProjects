.BANK 0000 SLOT 0
.ORGA $00000423
	ld a, ($C005) ;00000423
	bit 1, a ;00000426
	ret z ;00000428
	nop ; not executed offset: 00000429
	nop ; not executed offset: 0000042A
	nop ; not executed offset: 0000042B
	nop ; not executed offset: 0000042C
	nop ; not executed offset: 0000042D
	nop ; not executed offset: 0000042E
	nop ; not executed offset: 0000042F
	nop ; not executed offset: 00000430
	nop ; not executed offset: 00000431
	nop ; not executed offset: 00000432
	nop ; not executed offset: 00000433
	nop ; not executed offset: 00000434
	nop ; not executed offset: 00000435
	nop ; not executed offset: 00000436
	nop ; not executed offset: 00000437
	nop ; not executed offset: 00000438
;stopped writing due to overlap with another section
