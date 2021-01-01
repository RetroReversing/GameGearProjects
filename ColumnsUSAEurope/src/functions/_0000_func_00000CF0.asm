.BANK 0000 SLOT 0
.ORGA $00000CF0
	ld a, $000F ;00000CF0
	ld de, $1AC0 ;00000CF2
	ld hl, $3D79 ;00000CF5
	jp $070B ;00000CF8
	nop ; not executed offset: 00000CFB
	nop ; not executed offset: 00000CFC
	nop ; not executed offset: 00000CFD
	nop ; not executed offset: 00000CFE
	nop ; not executed offset: 00000CFF
	nop ; not executed offset: 00000D00
	nop ; not executed offset: 00000D01
	nop ; not executed offset: 00000D02
	nop ; not executed offset: 00000D03
;stopped writing due to overlap with another section
