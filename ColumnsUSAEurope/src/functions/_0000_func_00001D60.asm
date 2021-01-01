
.BANK 0000 SLOT 0
.ORGA $00001D60
	xor a ;00001D60
	ld ($C3C0), a ;00001D61
	ld hl, $C3C1 ;00001D64
	inc (hl) ;00001D67
	bit 0, (hl) ;00001D68
	z_UNTAKEN_JUMP_2 ;00001D6A
	LD IX,$C100 ;00001D6C
	ld de, $0020 ;00001D70
	jr LAB_0000_00001D7C ;00001D73
	nop ; not executed offset: 00001D75
	nop ; not executed offset: 00001D76
	nop ; not executed offset: 00001D77
	nop ; not executed offset: 00001D78
	nop ; not executed offset: 00001D79
	nop ; not executed offset: 00001D7A
	nop ; not executed offset: 00001D7B
LAB_0000_00001D7C:
	ld b, $0010 ;00001D7C
LAB_0000_00001D7E:
	push bc ;00001D7E
	push de ;00001D7F
	call $1D96 ;00001D80
	pop de ;00001D83
	add ix, de ;00001D84
	pop bc ;00001D86
	djnz LAB_0000_00001D7E ;z_UNTAKEN_JUMP_2 ;00001D87
	ld a, ($C3C0) ;00001D89
	ld e, a ;00001D8C
	ld d, $0000 ;00001D8D
	ld hl, $C300 ;00001D8F
	add hl, de ;00001D92
	ld (hl), $00D0 ;00001D93
	ret ;00001D95
;stopped writing due to overlap with another section
