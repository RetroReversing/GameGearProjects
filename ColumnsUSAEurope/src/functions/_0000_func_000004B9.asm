.BANK 0000 SLOT 0
.ORGA $000004B9
	in a, ($0000) ;000004B9
	cpl ;000004BB
	and $0080 ;000004BC
	ld c, a ;000004BE
	in a, ($00DC) ;000004BF
	cpl ;000004C1
	and $003F ;000004C2
	or c ;000004C4
	ret ;000004C5
	nop ; not executed offset: 000004C6
	nop ; not executed offset: 000004C7
	nop ; not executed offset: 000004C8
	nop ; not executed offset: 000004C9
	nop ; not executed offset: 000004CA
	nop ; not executed offset: 000004CB
	nop ; not executed offset: 000004CC
	nop ; not executed offset: 000004CD
	nop ; not executed offset: 000004CE
	nop ; not executed offset: 000004CF
	nop ; not executed offset: 000004D0
	nop ; not executed offset: 000004D1
	nop ; not executed offset: 000004D2
	nop ; not executed offset: 000004D3
	nop ; not executed offset: 000004D4
	nop ; not executed offset: 000004D5
	nop ; not executed offset: 000004D6
	nop ; not executed offset: 000004D7
	nop ; not executed offset: 000004D8
	nop ; not executed offset: 000004D9
	nop ; not executed offset: 000004DA
	nop ; not executed offset: 000004DB
	nop ; not executed offset: 000004DC
	nop ; not executed offset: 000004DD
	nop ; not executed offset: 000004DE
	nop ; not executed offset: 000004DF
	nop ; not executed offset: 000004E0
	nop ; not executed offset: 000004E1
	nop ; not executed offset: 000004E2
	nop ; not executed offset: 000004E3
;stopped writing due to overlap with another section
