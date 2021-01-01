
.BANK 0001 SLOT 1
.ORGA $00006542
	LD   A,(IX+$0007) ;00006542
	or a ;00006545
	ret z ;00006546
	bit 4, [ix+29] ;00006547
	jr z, LAB_0001_00006567 ;z_UNTAKEN_JUMP_2 ;0000654B
	LD   D,(IX+$0020) ;0000654D
	LD   A,(IX+$001F) ;00006550
	sub d ;00006553
	jr nc, LAB_0001_00006557 ;z_UNTAKEN_JUMP_2 ;00006554
	xor a ;00006556
LAB_0001_00006557:
	or a ;00006557
	LD   (IX+$001F),A ;00006558
	jr nz, LAB_0001_000065D5 ;z_UNTAKEN_JUMP_2 ;0000655B
	LD   A,(IX+$001D) ;0000655D
	xor $0030 ;00006560
	LD   (IX+$001D),A ;00006562
	jr LAB_0001_000065D5 ;00006565
LAB_0001_00006567:
	bit 5, [ix+29] ;00006567
	jr z, LAB_0001_00006597 ;z_UNTAKEN_JUMP_2 ;0000656B
	LD   A,(IX+$001F) ;0000656D
	LD   D,(IX+$0021) ;00006570
	LD   E,(IX+$0022) ;00006573
	add a, d ;00006576
	z_UNTAKEN_JUMP_2 ;00006577
	cp e ;00006579
	jr c, LAB_0001_0000657D ;z_UNTAKEN_JUMP_2 ;0000657A
	ld a, e ;0000657C
LAB_0001_0000657D:
	cp e ;0000657D
	LD   (IX+$001F),A ;0000657E
	jr nz, LAB_0001_000065D5 ;z_UNTAKEN_JUMP_2 ;00006581
	LD   A,(IX+$001D) ;00006583
	bit 3, [ix+29] ;00006586
	jr z, LAB_0001_00006590 ;0000658A
	nop ; not executed offset: 0000658C
	nop ; not executed offset: 0000658D
	nop ; not executed offset: 0000658E
	nop ; not executed offset: 0000658F
LAB_0001_00006590:
	xor $0060 ;00006590
	LD   (IX+$001D),A ;00006592
	jr LAB_0001_000065D5 ;00006595
LAB_0001_00006597:
	bit 6, [ix+29] ;00006597
	z_UNTAKEN_JUMP_2 ;0000659B
	LD   A,(IX+$001F) ;0000659D
	LD   D,(IX+$0023) ;000065A0
	add a, d ;000065A3
	jr nc, LAB_0001_000065A8 ;000065A4
	nop ; not executed offset: 000065A6
	nop ; not executed offset: 000065A7
LAB_0001_000065A8:
	cp $00FF ;000065A8
	LD   (IX+$001F),A ;000065AA
	jr nz, LAB_0001_000065D5 ;000065AD
	nop ; not executed offset: 000065AF
	nop ; not executed offset: 000065B0
	nop ; not executed offset: 000065B1
	nop ; not executed offset: 000065B2
	nop ; not executed offset: 000065B3
	nop ; not executed offset: 000065B4
	nop ; not executed offset: 000065B5
	nop ; not executed offset: 000065B6
	nop ; not executed offset: 000065B7
	nop ; not executed offset: 000065B8
	nop ; not executed offset: 000065B9
	nop ; not executed offset: 000065BA
	nop ; not executed offset: 000065BB
	nop ; not executed offset: 000065BC
	nop ; not executed offset: 000065BD
	nop ; not executed offset: 000065BE
	nop ; not executed offset: 000065BF
	nop ; not executed offset: 000065C0
	nop ; not executed offset: 000065C1
	nop ; not executed offset: 000065C2
	nop ; not executed offset: 000065C3
	nop ; not executed offset: 000065C4
	nop ; not executed offset: 000065C5
	nop ; not executed offset: 000065C6
	nop ; not executed offset: 000065C7
	nop ; not executed offset: 000065C8
	nop ; not executed offset: 000065C9
	nop ; not executed offset: 000065CA
	nop ; not executed offset: 000065CB
	nop ; not executed offset: 000065CC
	nop ; not executed offset: 000065CD
	nop ; not executed offset: 000065CE
	nop ; not executed offset: 000065CF
	nop ; not executed offset: 000065D0
	nop ; not executed offset: 000065D1
	nop ; not executed offset: 000065D2
	nop ; not executed offset: 000065D3
	nop ; not executed offset: 000065D4
LAB_0001_000065D5:
	LD   A,(IX+$001F) ;000065D5
	rrca ;000065D8
	rrca ;000065D9
	rrca ;000065DA
	rrca ;000065DB
	and $000F ;000065DC
	ret ;000065DE
	nop ; not executed offset: 000065DF
	nop ; not executed offset: 000065E0
	nop ; not executed offset: 000065E1
	nop ; not executed offset: 000065E2
	nop ; not executed offset: 000065E3
	nop ; not executed offset: 000065E4
	nop ; not executed offset: 000065E5
	nop ; not executed offset: 000065E6
	nop ; not executed offset: 000065E7
	nop ; not executed offset: 000065E8
	nop ; not executed offset: 000065E9
	nop ; not executed offset: 000065EA
	nop ; not executed offset: 000065EB
	nop ; not executed offset: 000065EC
	nop ; not executed offset: 000065ED
	nop ; not executed offset: 000065EE
	nop ; not executed offset: 000065EF
	nop ; not executed offset: 000065F0
	nop ; not executed offset: 000065F1
	nop ; not executed offset: 000065F2
	nop ; not executed offset: 000065F3
	nop ; not executed offset: 000065F4
	nop ; not executed offset: 000065F5
;stopped writing due to overlap with another section
