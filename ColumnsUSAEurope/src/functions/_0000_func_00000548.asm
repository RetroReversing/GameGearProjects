
.BANK 0000 SLOT 0
.ORGA $00000548
	ld a, ($C09F) ;00000548
	dec a ;0000054B
	jr nz, LAB_0000_00000557 ;z_UNTAKEN_JUMP_2 ;0000054C
	ld a, ($C0A1) ;0000054E
	ld d, a ;00000551
	ld a, $000F ;00000552
	sub d ;00000554
	jr LAB_0000_0000055A ;00000555
LAB_0000_00000557:
	ld a, ($C0A1) ;00000557
LAB_0000_0000055A:
	ld c, a ;0000055A
	ld de, $C05F ;0000055B
	ld hl, $C01F ;0000055E
	ld b, $0020 ;00000561
LAB_0000_00000563:
	ld a, (de) ;00000563
	and $000F ;00000564
	sub c ;00000566
	jr nc, LAB_0000_0000056A ;z_UNTAKEN_JUMP_2 ;00000567
	xor a ;00000569
LAB_0000_0000056A:
	ld (hl), a ;0000056A
	ld a, (de) ;0000056B
	rrca ;0000056C
	rrca ;0000056D
	rrca ;0000056E
	rrca ;0000056F
	and $000F ;00000570
	sub c ;00000572
	jr nc, LAB_0000_00000576 ;z_UNTAKEN_JUMP_2 ;00000573
	xor a ;00000575
LAB_0000_00000576:
	rrca ;00000576
	rrca ;00000577
	rrca ;00000578
	rrca ;00000579
	or (hl) ;0000057A
	ld (hl), a ;0000057B
	inc hl ;0000057C
	inc de ;0000057D
	ld a, (de) ;0000057E
	sub c ;0000057F
	jr nc, LAB_0000_00000583 ;z_UNTAKEN_JUMP_2 ;00000580
	xor a ;00000582
LAB_0000_00000583:
	ld (hl), a ;00000583
	inc hl ;00000584
	inc de ;00000585
	djnz LAB_0000_00000563 ;z_UNTAKEN_JUMP_2 ;00000586
	ret ;00000588
;stopped writing due to overlap with another section
