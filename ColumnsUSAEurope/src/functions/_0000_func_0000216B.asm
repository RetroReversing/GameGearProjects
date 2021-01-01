.BANK 0000 SLOT 0
.ORGA $0000216B
	ld c, a ;0000216B
	rst $08 ;0000216C
	ld a, c ;0000216D
	add a, a ;0000216E
	ld e, a ;0000216F
	ld d, $0000 ;00002170
	ld hl, $21A5 ;00002172
	add hl, de ;00002175
	ld a, (hl) ;00002176
	inc hl ;00002177
	ld h, (hl) ;00002178
	ld l, a ;00002179
	ld b, (hl) ;0000217A
	inc hl ;0000217B
	ld c, $00BE ;0000217C
LAB_0000_0000217E:
	OUTI ;0000217E
	jr nz, LAB_0000_0000217E ;z_UNTAKEN_JUMP_2 ;00002180
	ret ;00002182
	nop ; not executed offset: 00002183
	nop ; not executed offset: 00002184
	nop ; not executed offset: 00002185
	nop ; not executed offset: 00002186
	nop ; not executed offset: 00002187
	nop ; not executed offset: 00002188
	nop ; not executed offset: 00002189
	nop ; not executed offset: 0000218A
	nop ; not executed offset: 0000218B
	nop ; not executed offset: 0000218C
	nop ; not executed offset: 0000218D
	nop ; not executed offset: 0000218E
	nop ; not executed offset: 0000218F
	nop ; not executed offset: 00002190
	nop ; not executed offset: 00002191
	nop ; not executed offset: 00002192
	nop ; not executed offset: 00002193
	nop ; not executed offset: 00002194
	nop ; not executed offset: 00002195
	nop ; not executed offset: 00002196
	nop ; not executed offset: 00002197
	nop ; not executed offset: 00002198
	nop ; not executed offset: 00002199
	nop ; not executed offset: 0000219A
	nop ; not executed offset: 0000219B
	nop ; not executed offset: 0000219C
	nop ; not executed offset: 0000219D
	nop ; not executed offset: 0000219E
	nop ; not executed offset: 0000219F
	nop ; not executed offset: 000021A0
	nop ; not executed offset: 000021A1
	nop ; not executed offset: 000021A2
	nop ; not executed offset: 000021A3
	nop ; not executed offset: 000021A4
;stopped writing due to overlap with another section
