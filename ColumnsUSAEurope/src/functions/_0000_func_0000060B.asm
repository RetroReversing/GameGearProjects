.BANK 0000 SLOT 0
.ORGA $0000060B
LAB_0000_0000060B:
	rst $08 ;0000060B
	push bc ;0000060C
	ld b, c ;0000060D
	ld c, $00BE ;0000060E
LAB_0000_00000610:
	OUTI ;00000610
	OUTI ;00000612
	jr nz, LAB_0000_00000610 ;z_UNTAKEN_JUMP_2 ;00000614
	ex de, hl ;00000616
	ld bc, $0040 ;00000617
	add hl, bc ;0000061A
	ex de, hl ;0000061B
	pop bc ;0000061C
	djnz LAB_0000_0000060B ;z_UNTAKEN_JUMP_2 ;0000061D
	ret ;0000061F
	nop ; not executed offset: 00000620
	nop ; not executed offset: 00000621
	nop ; not executed offset: 00000622
	nop ; not executed offset: 00000623
	nop ; not executed offset: 00000624
	nop ; not executed offset: 00000625
	nop ; not executed offset: 00000626
	nop ; not executed offset: 00000627
	nop ; not executed offset: 00000628
	nop ; not executed offset: 00000629
	nop ; not executed offset: 0000062A
	nop ; not executed offset: 0000062B
	nop ; not executed offset: 0000062C
	nop ; not executed offset: 0000062D
	nop ; not executed offset: 0000062E
	nop ; not executed offset: 0000062F
	nop ; not executed offset: 00000630
	nop ; not executed offset: 00000631
	nop ; not executed offset: 00000632
	nop ; not executed offset: 00000633
	nop ; not executed offset: 00000634
	nop ; not executed offset: 00000635
	nop ; not executed offset: 00000636
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
