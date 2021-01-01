
.BANK 0000 SLOT 0
.ORGA $00000620
LAB_0000_00000620:
	rst $08 ;00000620
	push bc ;00000621
	ld b, c ;00000622
	ld c, $00BE ;00000623
LAB_0000_00000625:
	OUTI ;00000625
	jr LAB_0000_00000629 ;00000627
LAB_0000_00000629:
	OUTI ;00000629
	jr nz, LAB_0000_00000625 ;z_UNTAKEN_JUMP_2 ;0000062B
	ex de, hl ;0000062D
	ld bc, $0040 ;0000062E
	add hl, bc ;00000631
	ex de, hl ;00000632
	pop bc ;00000633
	djnz LAB_0000_00000620 ;z_UNTAKEN_JUMP_2 ;00000634
	ret ;00000636
	nop ; not executed offset: 00000637
	nop ; not executed offset: 00000638
	nop ; not executed offset: 00000639
	nop ; not executed offset: 0000063A
	nop ; not executed offset: 0000063B
	nop ; not executed offset: 0000063C
	nop ; not executed offset: 0000063D
	nop ; not executed offset: 0000063E
	nop ; not executed offset: 0000063F
	nop ; not executed offset: 00000640
	nop ; not executed offset: 00000641
	nop ; not executed offset: 00000642
	nop ; not executed offset: 00000643
	nop ; not executed offset: 00000644
	nop ; not executed offset: 00000645
	nop ; not executed offset: 00000646
	nop ; not executed offset: 00000647
	nop ; not executed offset: 00000648
	nop ; not executed offset: 00000649
	nop ; not executed offset: 0000064A
	nop ; not executed offset: 0000064B
	nop ; not executed offset: 0000064C
	nop ; not executed offset: 0000064D
	nop ; not executed offset: 0000064E
	nop ; not executed offset: 0000064F
	nop ; not executed offset: 00000650
	nop ; not executed offset: 00000651
;stopped writing due to overlap with another section
