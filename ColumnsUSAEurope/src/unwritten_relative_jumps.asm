; Contains Relative jumps that executed but not written in jumps or functions due to being interrupted by data in between the code


; Unwritten relative jump:LAB_0001_0000640A

.BANK 0001 SLOT 1
.ORGA $0000640A
; Called by: 0001_000063F2
LAB_0001_0000640A:
	sub $0081 ;0000640A
	ret m ;0000640C
	ex af, af' ;0000640D
	call $668E ;0000640E
	ex af, af' ;00006411
	ld hl, $6A23 ;00006412
	ld c, a ;00006415
	ex af, af' ;00006416
	call $66D2 ;00006417
	ld ($DD01), a ;0000641A
	ld ($DD02), a ;0000641D
	ex af, af' ;00006420
	ld hl, $6A2A ;00006421
	call $66C8 ;00006424
	ld b, (hl) ;00006427
	inc hl ;00006428
	ld de, $DD40 ;00006429
LAB_0001_0000642C:
	call $6479 ;0000642C
	djnz LAB_0001_0000642C ;z_UNTAKEN_JUMP_2 ;0000642F
;stopped writing due to overlap with another section


; Unwritten relative jump:entry

.BANK 0000 SLOT 0
.ORGA $00000000
; Called by: 0000_00000000
entry:
	jp $007E ;00000000
	nop ; not executed offset: 00000003
	nop ; not executed offset: 00000004
	nop ; not executed offset: 00000005
	nop ; not executed offset: 00000006
	nop ; not executed offset: 00000007
;stopped writing due to overlap with another section
