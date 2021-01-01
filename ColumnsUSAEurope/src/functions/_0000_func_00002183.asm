
.BANK 0000 SLOT 0
.ORGA $00002183
	ld c, a ;00002183
	ex af, af' ;00002184
	ld b, $0000 ;00002185
	ld hl, $21A5 ;00002187
	add hl, bc ;0000218A
	add hl, bc ;0000218B
	ld a, (hl) ;0000218C
	inc hl ;0000218D
	ld h, (hl) ;0000218E
	ld l, a ;0000218F
	ld c, (hl) ;00002190
	ld b, $0000 ;00002191
	inc hl ;00002193
	push hl ;00002194
	ld hl, $0BC0 ;00002195
	xor a ;00002198
	SBC  HL,BC ;00002199
	SBC  HL,BC ;0000219B
	push hl ;0000219D
	POP  IY ;0000219E
	pop hl ;000021A0
	ld c, $00BE ;000021A1
	JP   (IY) ;000021A3
;stopped writing due to overlap with another section
