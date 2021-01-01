.BANK 0000 SLOT 0
.ORGA $00001D96
	LD   A,(IX+$0002) ;00001D96
	or a ;00001D99
	ret z ;00001D9A
	LD   A,(IX+$0003) ;00001D9B
	or a ;00001D9E
	ret z ;00001D9F
	ld e, a ;00001DA0
	ld d, $0000 ;00001DA1
	ld hl, $1DFD ;00001DA3
	add hl, de ;00001DA6
	add hl, de ;00001DA7
	ld a, (hl) ;00001DA8
	inc hl ;00001DA9
	ld h, (hl) ;00001DAA
	ld l, a ;00001DAB
	ld c, (hl) ;00001DAC
	ld b, $0000 ;00001DAD
	inc hl ;00001DAF
	ld a, ($C3C0) ;00001DB0
	add a, c ;00001DB3
	cp $0041 ;00001DB4
	ret nc ;00001DB6
	push hl ;00001DB7
	ld a, ($C3C0) ;00001DB8
	ld e, a ;00001DBB
	ld d, $0000 ;00001DBC
	ld hl, $C300 ;00001DBE
	add hl, de ;00001DC1
	ex de, hl ;00001DC2
	pop hl ;00001DC3
	ld b, c ;00001DC4
LAB_0000_00001DC5:
	ld a, (hl) ;00001DC5
	ADD  A,(IX+$0006) ;00001DC6
	cp $00D0 ;00001DC9
	jr nz, LAB_0000_00001DCE ;00001DCB
	nop ; not executed offset: 00001DCD
LAB_0000_00001DCE:
	ld (de),a ;00001DCE
	inc hl ;00001DCF
	inc de ;00001DD0
	djnz LAB_0000_00001DC5 ;z_UNTAKEN_JUMP_2 ;00001DD1
	ld a, ($C3C0) ;00001DD3
	add a, c ;00001DD6
	cp $0040 ;00001DD7
	z_UNTAKEN_JUMP_2 ;00001DD9
	ld a, $00D0 ;00001DDB
	ld (de),a ;00001DDD
	push hl ;00001DDE
	ld a, ($C3C0) ;00001DDF
	ld e, a ;00001DE2
	ld d, $0000 ;00001DE3
	ld hl, $C340 ;00001DE5
	add hl, de ;00001DE8
	add hl, de ;00001DE9
	ex de, hl ;00001DEA
	pop hl ;00001DEB
	add a, c ;00001DEC
	ld ($C3C0), a ;00001DED
	ld b, c ;00001DF0
LAB_0000_00001DF1:
	ld a, (hl) ;00001DF1
	ADD  A,(IX+$0009) ;00001DF2
	ld (de),a ;00001DF5
	inc hl ;00001DF6
	inc de ;00001DF7
	LDI ;00001DF8
	djnz LAB_0000_00001DF1 ;z_UNTAKEN_JUMP_2 ;00001DFA
	ret ;00001DFC
	nop ; not executed offset: 00001DFD
	nop ; not executed offset: 00001DFE
;stopped writing due to overlap with another section
