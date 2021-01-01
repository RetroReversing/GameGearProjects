.BANK 0000 SLOT 0
.ORGA $00000464
	ld a, ($C019) ;00000464
	cp $000F ;00000467
	jr c, LAB_0000_0000048D ;00000469
	nop ; not executed offset: 0000046B
	nop ; not executed offset: 0000046C
	nop ; not executed offset: 0000046D
	nop ; not executed offset: 0000046E
	nop ; not executed offset: 0000046F
	nop ; not executed offset: 00000470
	nop ; not executed offset: 00000471
	nop ; not executed offset: 00000472
	nop ; not executed offset: 00000473
	nop ; not executed offset: 00000474
	nop ; not executed offset: 00000475
	nop ; not executed offset: 00000476
	nop ; not executed offset: 00000477
	nop ; not executed offset: 00000478
	nop ; not executed offset: 00000479
	nop ; not executed offset: 0000047A
	nop ; not executed offset: 0000047B
	nop ; not executed offset: 0000047C
	nop ; not executed offset: 0000047D
	nop ; not executed offset: 0000047E
	nop ; not executed offset: 0000047F
	nop ; not executed offset: 00000480
	nop ; not executed offset: 00000481
	nop ; not executed offset: 00000482
	nop ; not executed offset: 00000483
	nop ; not executed offset: 00000484
	nop ; not executed offset: 00000485
	nop ; not executed offset: 00000486
	nop ; not executed offset: 00000487
	nop ; not executed offset: 00000488
	nop ; not executed offset: 00000489
	nop ; not executed offset: 0000048A
	nop ; not executed offset: 0000048B
	nop ; not executed offset: 0000048C
LAB_0000_0000048D:
	ld a, ($C00C) ;0000048D
	and $000F ;00000490
	ld a, $0010 ;00000492
	jr z, LAB_0000_000004A6 ;00000494
	nop ; not executed offset: 00000496
	nop ; not executed offset: 00000497
	nop ; not executed offset: 00000498
	nop ; not executed offset: 00000499
	nop ; not executed offset: 0000049A
	nop ; not executed offset: 0000049B
	nop ; not executed offset: 0000049C
	nop ; not executed offset: 0000049D
	nop ; not executed offset: 0000049E
	nop ; not executed offset: 0000049F
	nop ; not executed offset: 000004A0
	nop ; not executed offset: 000004A1
	nop ; not executed offset: 000004A2
	nop ; not executed offset: 000004A3
	nop ; not executed offset: 000004A4
	nop ; not executed offset: 000004A5
LAB_0000_000004A6:
	ld ($C010), a ;000004A6
	ld a, ($C00C) ;000004A9
	cpl ;000004AC
	ld d, a ;000004AD
	call $04B9 ;000004AE
	ld ($C00C), a ;000004B1
	and d ;000004B4
	ld ($C00D), a ;000004B5
	ret ;000004B8
;stopped writing due to overlap with another section
