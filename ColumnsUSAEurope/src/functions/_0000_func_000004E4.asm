.BANK 0000 SLOT 0
.ORGA $000004E4
	call $0652 ;000004E4
	ld a, $0001 ;000004E7
	ld ($C09F), a ;000004E9
	ld hl, $C01F ;000004EC
	ld de, $C020 ;000004EF
	ld (hl), $0000 ;000004F2
	call $0B42 ;000004F4
	ld hl, $C01D ;000004F7
	set 0, (hl) ;000004FA
	ld a, $0002 ;000004FC
	ld ($C0A2), a ;000004FE
	xor a ;00000501
	ld ($C0A1), a ;00000502
	ret ;00000505
	nop ; not executed offset: 00000506
	nop ; not executed offset: 00000507
	nop ; not executed offset: 00000508
	nop ; not executed offset: 00000509
	nop ; not executed offset: 0000050A
	nop ; not executed offset: 0000050B
	nop ; not executed offset: 0000050C
	nop ; not executed offset: 0000050D
	nop ; not executed offset: 0000050E
	nop ; not executed offset: 0000050F
	nop ; not executed offset: 00000510
	nop ; not executed offset: 00000511
	nop ; not executed offset: 00000512
	nop ; not executed offset: 00000513
	nop ; not executed offset: 00000514
	nop ; not executed offset: 00000515
	nop ; not executed offset: 00000516
	nop ; not executed offset: 00000517
	nop ; not executed offset: 00000518
	nop ; not executed offset: 00000519
	nop ; not executed offset: 0000051A
	nop ; not executed offset: 0000051B
	nop ; not executed offset: 0000051C
	nop ; not executed offset: 0000051D
	nop ; not executed offset: 0000051E
	nop ; not executed offset: 0000051F
	nop ; not executed offset: 00000520
;stopped writing due to overlap with another section
