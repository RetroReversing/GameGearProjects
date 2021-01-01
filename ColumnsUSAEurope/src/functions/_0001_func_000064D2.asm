.BANK 0001 SLOT 1
.ORGA $000064D2
	bit 7, [ix+7] ;000064D2
	ret z ;000064D6
	bit 1, [ix+0] ;000064D7
	ret nz ;000064DB
	bit 7, [ix+29] ;000064DC
	ret nz ;000064E0
	ld a, $00FF ;000064E1
	LD   (IX+$001F),A ;000064E3
	and $0010 ;000064E6
	OR   (IX+$001E) ;000064E8
	LD   (IX+$001D),A ;000064EB
	ret ;000064EE
;stopped writing due to overlap with another section
