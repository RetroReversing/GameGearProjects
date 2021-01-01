
.BANK 0000 SLOT 0
.ORGA $000004B9
	in a, ($0000) ;000004B9
	cpl ;000004BB
	and $0080 ;000004BC
	ld c, a ;000004BE
	in a, ($00DC) ;000004BF
	cpl ;000004C1
	and $003F ;000004C2
	or c ;000004C4
	ret ;000004C5
;stopped writing due to overlap with another section
