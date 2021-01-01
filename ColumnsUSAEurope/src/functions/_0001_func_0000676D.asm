
.BANK 0001 SLOT 1
.ORGA $0000676D
	 DEC  (IX+$000A) ;0000676D
	jr nz, LAB_0001_00006782 ;z_UNTAKEN_JUMP_2 ;00006770
	call $65F6 ;00006772
	bit 4, [ix+0] ;00006775
	ret nz ;00006779
	call $64A7 ;0000677A
	call $64D2 ;0000677D
	jr LAB_0001_00006794 ;00006780
LAB_0001_00006782:
	LD   A,(IX+$000E) ;00006782
	or a ;00006785
	jr z, LAB_0001_0000678E ;00006786
	nop ; not executed offset: 00006788
	nop ; not executed offset: 00006789
	nop ; not executed offset: 0000678A
	nop ; not executed offset: 0000678B
	nop ; not executed offset: 0000678C
	nop ; not executed offset: 0000678D
LAB_0001_0000678E:
	LD   A,(IX+$0006) ;0000678E
	or a ;00006791
	z_UNTAKEN_JUMP_2 ;00006792
LAB_0001_00006794:
	call $64EF ;00006794
	bit 2, [ix+0] ;00006797
	ret nz ;0000679B
	bit 6, [ix+0] ;0000679C
	ret nz ;000067A0
	bit 5, [ix+0] ;000067A1
	z_UNTAKEN_JUMP_2 ;000067A5
	ld d, $0000 ;000067A7
	LD   A,(IX+$0025) ;000067A9
	or a ;000067AC
	jp p, $67B1 ;000067AD
	nop ; not executed offset: 000067B0
;stopped writing due to overlap with another section
