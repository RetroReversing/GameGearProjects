
.BANK 0001 SLOT 1
.ORGA $000065F6
	res 1, [ix+0] ;000065F6
	res 4, [ix+0] ;000065FA
	LD   E,(IX+$0003) ;000065FE
	LD   D,(IX+$0004) ;00006601
;stopped writing due to overlap with another section
