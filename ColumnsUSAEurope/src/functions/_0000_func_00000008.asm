
.BANK 0000 SLOT 0
.ORGA $00000008
	di ;00000008
	ld a, e ;00000009
	out ($00BF), a ;0000000A
	ld a, $0040 ;0000000C
	or d ;0000000E
	out ($00BF), a ;0000000F
	ei ;00000011
	ret ;00000012
	nop ; not executed offset: 00000013
	nop ; not executed offset: 00000014
	nop ; not executed offset: 00000015
	nop ; not executed offset: 00000016
	nop ; not executed offset: 00000017
	nop ; not executed offset: 00000018
	nop ; not executed offset: 00000019
	nop ; not executed offset: 0000001A
	nop ; not executed offset: 0000001B
	nop ; not executed offset: 0000001C
	nop ; not executed offset: 0000001D
	nop ; not executed offset: 0000001E
	nop ; not executed offset: 0000001F
	nop ; not executed offset: 00000020
	nop ; not executed offset: 00000021
	nop ; not executed offset: 00000022
	nop ; not executed offset: 00000023
	nop ; not executed offset: 00000024
	nop ; not executed offset: 00000025
	nop ; not executed offset: 00000026
	nop ; not executed offset: 00000027
;stopped writing due to overlap with another section
