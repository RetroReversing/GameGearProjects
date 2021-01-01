
.BANK 0001 SLOT 1
.ORGA $000066D7
	LD   B,(IX+$0002) ;000066D7
	dec b ;000066DA
	ret z ;000066DB
	ld c, a ;000066DC
LAB_0001_000066DD:
	add a, c ;000066DD
	djnz LAB_0001_000066DD ;z_UNTAKEN_JUMP_2 ;000066DE
	ret ;000066E0
	nop ; not executed offset: 000066E1
	nop ; not executed offset: 000066E2
	nop ; not executed offset: 000066E3
	nop ; not executed offset: 000066E4
	nop ; not executed offset: 000066E5
	nop ; not executed offset: 000066E6
	nop ; not executed offset: 000066E7
	nop ; not executed offset: 000066E8
	nop ; not executed offset: 000066E9
	nop ; not executed offset: 000066EA
	nop ; not executed offset: 000066EB
	nop ; not executed offset: 000066EC
	nop ; not executed offset: 000066ED
	nop ; not executed offset: 000066EE
	nop ; not executed offset: 000066EF
	nop ; not executed offset: 000066F0
	nop ; not executed offset: 000066F1
	nop ; not executed offset: 000066F2
	nop ; not executed offset: 000066F3
	nop ; not executed offset: 000066F4
	nop ; not executed offset: 000066F5
	nop ; not executed offset: 000066F6
	nop ; not executed offset: 000066F7
	nop ; not executed offset: 000066F8
	nop ; not executed offset: 000066F9
	nop ; not executed offset: 000066FA
	nop ; not executed offset: 000066FB
	nop ; not executed offset: 000066FC
	nop ; not executed offset: 000066FD
	nop ; not executed offset: 000066FE
;stopped writing due to overlap with another section
