.BANK 0000 SLOT 0
.ORGA $00000652
	ld de, $C05F ;00000652
	jr LAB_0000_00000662 ;00000655
	nop ; not executed offset: 00000657
	nop ; not executed offset: 00000658
	nop ; not executed offset: 00000659
	nop ; not executed offset: 0000065A
	nop ; not executed offset: 0000065B
	nop ; not executed offset: 0000065C
	nop ; not executed offset: 0000065D
	nop ; not executed offset: 0000065E
	nop ; not executed offset: 0000065F
	nop ; not executed offset: 00000660
	nop ; not executed offset: 00000661
LAB_0000_00000662:
	ld a, (hl) ;00000662
	inc hl ;00000663
	push hl ;00000664
	add a, a ;00000665
	ld l, a ;00000666
	ld h, $0000 ;00000667
	add hl, de ;00000669
	ex de, hl ;0000066A
	pop hl ;0000066B
	ld a, (hl) ;0000066C
	ld c, a ;0000066D
	ld b, $0000 ;0000066E
	inc hl ;00000670
	LDIR ;00000671
	ret ;00000673
;stopped writing due to overlap with another section
