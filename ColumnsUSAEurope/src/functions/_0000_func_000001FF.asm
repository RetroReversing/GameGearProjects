
.BANK 0000 SLOT 0
.ORGA $000001FF
	ld a, $0001 ;000001FF
	ld ($C011), a ;00000201
LAB_0000_00000204:
	ld a, ($C011) ;00000204
	or a ;00000207
	jr nz, LAB_0000_00000204 ;z_UNTAKEN_JUMP_2 ;00000208
	ret ;0000020A
	nop ; not executed offset: 0000020B
	nop ; not executed offset: 0000020C
	nop ; not executed offset: 0000020D
	nop ; not executed offset: 0000020E
	nop ; not executed offset: 0000020F
	nop ; not executed offset: 00000210
	nop ; not executed offset: 00000211
	nop ; not executed offset: 00000212
	nop ; not executed offset: 00000213
	nop ; not executed offset: 00000214
	nop ; not executed offset: 00000215
	nop ; not executed offset: 00000216
	nop ; not executed offset: 00000217
	nop ; not executed offset: 00000218
	nop ; not executed offset: 00000219
	nop ; not executed offset: 0000021A
	nop ; not executed offset: 0000021B
	nop ; not executed offset: 0000021C
	nop ; not executed offset: 0000021D
	nop ; not executed offset: 0000021E
	nop ; not executed offset: 0000021F
	nop ; not executed offset: 00000220
	nop ; not executed offset: 00000221
	nop ; not executed offset: 00000222
	nop ; not executed offset: 00000223
	nop ; not executed offset: 00000224
	nop ; not executed offset: 00000225
	nop ; not executed offset: 00000226
	nop ; not executed offset: 00000227
	nop ; not executed offset: 00000228
	nop ; not executed offset: 00000229
	nop ; not executed offset: 0000022A
	nop ; not executed offset: 0000022B
	nop ; not executed offset: 0000022C
	nop ; not executed offset: 0000022D
	nop ; not executed offset: 0000022E
;stopped writing due to overlap with another section
