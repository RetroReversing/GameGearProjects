
.BANK 0001 SLOT 1
.ORGA $000064EF
	LD   L,(IX+$000B) ;000064EF
	LD   H,(IX+$000C) ;000064F2
	LD   A,(IX+$0006) ;000064F5
	or a ;000064F8
	ret z ;000064F9
	 DEC  (IX+$0014) ;000064FA
	ret nz ;000064FD
	INC  (IX+$0014) ;000064FE
	push hl ;00006501
	LD   L,(IX+$0012) ;00006502
	LD   H,(IX+$0013) ;00006505
	 DEC  (IX+$0015) ;00006508
	jr nz, LAB_0001_0000652D ;z_UNTAKEN_JUMP_2 ;0000650B
	LD   E,(IX+$0010) ;0000650D
	LD   D,(IX+$0011) ;00006510
	push de ;00006513
	POP  IY ;00006514
	LD   A,(IY+$0001) ;00006516
	LD   (IX+$0015),A ;00006519
	LD   A,(IX+$0016) ;0000651C
	ld c, a ;0000651F
	and $0080 ;00006520
	rlca ;00006522
	NEG ;00006523
	ld b, a ;00006525
	add hl, bc ;00006526
	LD   (IX+$0012),L ;00006527
	LD   (IX+$0013),H ;0000652A
LAB_0001_0000652D:
	pop bc ;0000652D
	add hl, bc ;0000652E
	 DEC  (IX+$0017) ;0000652F
	ret nz ;00006532
	LD   A,(IY+$0003) ;00006533
	LD   (IX+$0017),A ;00006536
	LD   A,(IX+$0016) ;00006539
	NEG ;0000653C
	LD   (IX+$0016),A ;0000653E
	ret ;00006541
;stopped writing due to overlap with another section
