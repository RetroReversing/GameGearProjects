
.BANK 0000 SLOT 0
.ORGA $00000D04
	ld hl, $3D2D ;00000D04
	ld de, $37E0 ;00000D07
	ld a, $000F ;00000D0A
	jp $070B ;00000D0C
;stopped writing due to overlap with another section
