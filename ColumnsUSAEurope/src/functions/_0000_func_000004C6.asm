
.BANK 0000 SLOT 0
.ORGA $000004C6
	LD IX,$C100 ;000004C6
	ld b, $0010 ;000004CA
LAB_0000_000004CC:
	push bc ;000004CC
	ld hl, $04DB ;000004CD
	push hl ;000004D0
	LD   L,(IX+$0000) ;000004D1
	LD   H,(IX+$0001) ;000004D4
	ld a, l ;000004D7
	or h ;000004D8
	ret z ;000004D9
	jp (hl) ;000004DA
	ld de, $0020 ;000004DB
	add ix, de ;000004DE
	pop bc ;000004E0
	djnz LAB_0000_000004CC ;z_UNTAKEN_JUMP_2 ;000004E1
	ret ;000004E3
;stopped writing due to overlap with another section
