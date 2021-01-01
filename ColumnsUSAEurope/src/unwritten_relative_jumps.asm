; Contains Relative jumps that executed but not written in jumps or functions due to being interrupted by data in between the code


; Unwritten relative jump:LAB_0001_0000640A
.BANK 0001 SLOT 1
.ORGA $0000640A
; Called by: 0001_000063F2
LAB_0001_0000640A:
	sub $0081 ;0000640A
	ret m ;0000640C
	nop ; not executed offset: 0000640D
	nop ; not executed offset: 0000640E
	nop ; not executed offset: 0000640F
	nop ; not executed offset: 00006410
	nop ; not executed offset: 00006411
	nop ; not executed offset: 00006412
	nop ; not executed offset: 00006413
	nop ; not executed offset: 00006414
	nop ; not executed offset: 00006415
	nop ; not executed offset: 00006416
	nop ; not executed offset: 00006417
	nop ; not executed offset: 00006418
	nop ; not executed offset: 00006419
	nop ; not executed offset: 0000641A
	nop ; not executed offset: 0000641B
	nop ; not executed offset: 0000641C
	nop ; not executed offset: 0000641D
	nop ; not executed offset: 0000641E
	nop ; not executed offset: 0000641F
	nop ; not executed offset: 00006420
	nop ; not executed offset: 00006421
	nop ; not executed offset: 00006422
	nop ; not executed offset: 00006423
	nop ; not executed offset: 00006424
	nop ; not executed offset: 00006425
	nop ; not executed offset: 00006426
	nop ; not executed offset: 00006427
	nop ; not executed offset: 00006428
	nop ; not executed offset: 00006429
	nop ; not executed offset: 0000642A
	nop ; not executed offset: 0000642B
	nop ; not executed offset: 0000642C
	nop ; not executed offset: 0000642D
	nop ; not executed offset: 0000642E
	nop ; not executed offset: 0000642F
	nop ; not executed offset: 00006430
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
