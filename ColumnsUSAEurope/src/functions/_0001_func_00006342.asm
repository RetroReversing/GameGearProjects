
.BANK 0001 SLOT 1
.ORGA $00006342
	ld hl, $DD01 ;00006342
	ld a, (hl) ;00006345
	or a ;00006346
	ret z ;00006347
	nop ; not executed offset: 00006348
	nop ; not executed offset: 00006349
	nop ; not executed offset: 0000634A
	nop ; not executed offset: 0000634B
	nop ; not executed offset: 0000634C
	nop ; not executed offset: 0000634D
	nop ; not executed offset: 0000634E
	nop ; not executed offset: 0000634F
	nop ; not executed offset: 00006350
	nop ; not executed offset: 00006351
	nop ; not executed offset: 00006352
	nop ; not executed offset: 00006353
	nop ; not executed offset: 00006354
	nop ; not executed offset: 00006355
	nop ; not executed offset: 00006356
	nop ; not executed offset: 00006357
	nop ; not executed offset: 00006358
	nop ; not executed offset: 00006359
	nop ; not executed offset: 0000635A
;stopped writing due to overlap with another section
