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
	ld hl, $C100 ;000005AD
	ld de, $C101 ;000005B0
	ld (hl), $0000 ;000005B3
	call $0AC0 ;000005B5
	call $0AC0 ;000005B8
	call $0AC0 ;000005BB
	call $0AC2 ;000005BE
	ld hl, $C300 ;000005C1
	ld (hl), $00D0 ;000005C4
	ret ;000005C6
	nop ; not executed offset: 000005C7
	nop ; not executed offset: 000005C8
	nop ; not executed offset: 000005C9
	nop ; not executed offset: 000005CA
	nop ; not executed offset: 000005CB
	nop ; not executed offset: 000005CC
	nop ; not executed offset: 000005CD
	nop ; not executed offset: 000005CE
	nop ; not executed offset: 000005CF
	nop ; not executed offset: 000005D0
	nop ; not executed offset: 000005D1
	nop ; not executed offset: 000005D2
	nop ; not executed offset: 000005D3
	nop ; not executed offset: 000005D4
	nop ; not executed offset: 000005D5
	nop ; not executed offset: 000005D6
	nop ; not executed offset: 000005D7
	nop ; not executed offset: 000005D8
	nop ; not executed offset: 000005D9
	nop ; not executed offset: 000005DA
	nop ; not executed offset: 000005DB
	nop ; not executed offset: 000005DC
	nop ; not executed offset: 000005DD
	nop ; not executed offset: 000005DE
	nop ; not executed offset: 000005DF
	nop ; not executed offset: 000005E0
	nop ; not executed offset: 000005E1
	nop ; not executed offset: 000005E2
	nop ; not executed offset: 000005E3
	nop ; not executed offset: 000005E4
	nop ; not executed offset: 000005E5
	nop ; not executed offset: 000005E6
	nop ; not executed offset: 000005E7
	nop ; not executed offset: 000005E8
	nop ; not executed offset: 000005E9
	nop ; not executed offset: 000005EA
	nop ; not executed offset: 000005EB
	nop ; not executed offset: 000005EC
	nop ; not executed offset: 000005ED
	nop ; not executed offset: 000005EE
	nop ; not executed offset: 000005EF
	nop ; not executed offset: 000005F0
;stopped writing due to overlap with another section
