
.BANK 0001 SLOT 1
.ORGA $000063E8
	ld a, ($DD03) ;000063E8
	bit 7, a ;000063EB
	jp z, $668E ;z_UNTAKEN_JUMP_3 ;000063ED
	cp $0090 ;000063F0
	jr c, LAB_0001_0000640A ;z_UNTAKEN_JUMP_2 ;000063F2
	cp $00A0 ;000063F4
	z_UNTAKEN_JUMP_2 ;000063F6
	cp $00A8 ;000063F8
	z_UNTAKEN_JUMP_3 ;000063FA
	sub $00A0 ;000063FD
	ld hl, $6406 ;000063FF
	call $66C8 ;00006402
	jp (hl) ;00006405
	nop ; not executed offset: 00006406
	nop ; not executed offset: 00006407
;stopped writing due to overlap with another section
