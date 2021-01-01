.BANK 0001 SLOT 1
.ORGA $00006364
	ld a, (de) ;00006364
	and $007F ;00006365
	jr z, LAB_0001_00006380 ;z_UNTAKEN_JUMP_2 ;00006367
	dec a ;00006369
	ld hl, $69FB ;0000636A
	ld c, a ;0000636D
	call $66D2 ;0000636E
	ld hl, $DD0B ;00006371
	cp (hl) ;00006374
	z_UNTAKEN_JUMP_2 ;00006375
	and $007F ;00006377
	ld (hl), a ;00006379
	ld a, (de) ;0000637A
	ld ($DD03), a ;0000637B
	xor a ;0000637E
	ld (de),a ;0000637F
LAB_0001_00006380:
	inc de ;00006380
	ret ;00006381
;stopped writing due to overlap with another section
