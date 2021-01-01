; Contains Long Jump data


;;;;;;;;;;;
; Bank:0000
.BANK 0000 SLOT 0
.ORGA $0000003B
; Called by: 0000::0000002A
; Called by: 0000::00000032
	out ($00BF), a ;0000003B
	ld a, $0081 ;0000003D
	out ($00BF), a ;0000003F
	ret ;00000041
	nop ; not executed offset: 00000042
	nop ; not executed offset: 00000043
	nop ; not executed offset: 00000044
	nop ; not executed offset: 00000045
	nop ; not executed offset: 00000046
	nop ; not executed offset: 00000047
	nop ; not executed offset: 00000048
	nop ; not executed offset: 00000049
	nop ; not executed offset: 0000004A
	nop ; not executed offset: 0000004B
	nop ; not executed offset: 0000004C
	nop ; not executed offset: 0000004D
	nop ; not executed offset: 0000004E
	nop ; not executed offset: 0000004F
	nop ; not executed offset: 00000050
	nop ; not executed offset: 00000051
	nop ; not executed offset: 00000052
	nop ; not executed offset: 00000053
	nop ; not executed offset: 00000054
	nop ; not executed offset: 00000055
	nop ; not executed offset: 00000056
	nop ; not executed offset: 00000057
	nop ; not executed offset: 00000058
	nop ; not executed offset: 00000059
	nop ; not executed offset: 0000005A
	nop ; not executed offset: 0000005B
	nop ; not executed offset: 0000005C
	nop ; not executed offset: 0000005D
	nop ; not executed offset: 0000005E
	nop ; not executed offset: 0000005F
	nop ; not executed offset: 00000060
	nop ; not executed offset: 00000061
	nop ; not executed offset: 00000062
	nop ; not executed offset: 00000063
	nop ; not executed offset: 00000064
	nop ; not executed offset: 00000065
	nop ; not executed offset: 00000066
	nop ; not executed offset: 00000067
	nop ; not executed offset: 00000068
	nop ; not executed offset: 00000069
	nop ; not executed offset: 0000006A
	nop ; not executed offset: 0000006B
	nop ; not executed offset: 0000006C
	nop ; not executed offset: 0000006D
	nop ; not executed offset: 0000006E
	nop ; not executed offset: 0000006F
	nop ; not executed offset: 00000070
	nop ; not executed offset: 00000071
	nop ; not executed offset: 00000072
	nop ; not executed offset: 00000073
	nop ; not executed offset: 00000074
	nop ; not executed offset: 00000075
	nop ; not executed offset: 00000076
	nop ; not executed offset: 00000077
	nop ; not executed offset: 00000078
	nop ; not executed offset: 00000079
	nop ; not executed offset: 0000007A
	nop ; not executed offset: 0000007B
	nop ; not executed offset: 0000007C
	nop ; not executed offset: 0000007D
;stopped writing due to overlap with another section
.BANK 0000 SLOT 0
.ORGA $0000007E
; Called by: 0000::00000000
	di ;0000007E
	ld sp, $DFF0 ;0000007F
	IM   1 ;00000082
	ld a, $00FF ;00000084
	out ($0002), a ;00000086
	ld a, $0000 ;00000088
	out ($0001), a ;0000008A
	ld a, $0000 ;0000008C
	out ($0005), a ;0000008E
	ld hl, $FFFC ;00000090
	ld (hl), $0000 ;00000093
	inc hl ;00000095
	ld (hl), $0000 ;00000096
	inc hl ;00000098
	ld (hl), $0001 ;00000099
	inc hl ;0000009B
	ld (hl), $0002 ;0000009C
	call $66A1 ;0000009E
	ld hl, $C001 ;000000A1
	ld de, $C002 ;000000A4
	ld bc, $00FE ;000000A7
	ld (hl), $0000 ;000000AA
	LDIR ;000000AC
	ld hl, $C100 ;000000AE
	ld de, $C101 ;000000B1
	ld bc, $0EFF ;000000B4
	ld (hl), $0000 ;000000B7
	LDIR ;000000B9
	ld hl, $D000 ;000000BB
	ld de, $D001 ;000000BE
	ld bc, $0FEF ;000000C1
	ld (hl), $0000 ;000000C4
	LDIR ;000000C6
	ld a, $0001 ;000000C8
	ld ($C6A8), a ;000000CA
	ld a, $0003 ;000000CD
	ld ($C6AB), a ;000000CF
	ld hl, $0959 ;000000D2
	ld ($DC81), hl ;000000D5
	ld hl, $DC80 ;000000D8
	ld de, $DC83 ;000000DB
	ld bc, $0057 ;000000DE
	LDIR ;000000E1
LAB_0000_000000E3:
	in a, ($007E) ;000000E3
	cp $00B0 ;000000E5
	jr nz, LAB_0000_000000E3 ;z_UNTAKEN_JUMP_2 ;000000E7
	xor a ;000000E9
	out ($00BF), a ;000000EA
	ld a, $00C0 ;000000EC
	out ($00BF), a ;000000EE
	xor a ;000000F0
	ld b, $0020 ;000000F1
	ex (sp), hl ;000000F3
	ex (sp), hl ;000000F4
LAB_0000_000000F5:
	out ($00BE), a ;000000F5
	nop ;000000F7
	djnz LAB_0000_000000F5 ;z_UNTAKEN_JUMP_2 ;000000F8
	di ;000000FA
	ld sp, $DFF0 ;000000FB
	xor a ;000000FE
	ld ($C005), a ;000000FF
	ld ($C002), a ;00000102
	ld ($C006), a ;00000105
	ld ($C6C2), a ;00000108
	ld ($C008), a ;0000010B
	ld ($C009), a ;0000010E
	in a, ($00BF) ;00000111
	ld b, $0016 ;00000113
	ld c, $00BF ;00000115
	ld hl, $01C0 ;00000117
	OTIR ;0000011A
	rst $30 ;0000011C
	call $0674 ;0000011D
	call $0589 ;00000120
	ld a, $00FF ;00000123
	out ($0002), a ;00000125
	ld hl, $C0B0 ;00000127
	ld ($C0F0), hl ;0000012A
	ld ($C0F2), hl ;0000012D
	ld hl, $C0D0 ;00000130
	ld ($C0F4), hl ;00000133
	ld ($C0F6), hl ;00000136
	ld a, $00FC ;00000139
	out ($0002), a ;0000013B
	ld a, $0001 ;0000013D
	out ($0001), a ;0000013F
	ld a, $0038 ;00000141
	out ($0005), a ;00000143
	ld a, $0017 ;00000145
	out ($00BF), a ;00000147
	ld a, $008A ;00000149
	out ($00BF), a ;0000014B
	ld a, $0016 ;0000014D
	out ($00BF), a ;0000014F
	ld a, $0080 ;00000151
	out ($00BF), a ;00000153
	ld a, $0000 ;00000155
	ld ($C019), a ;00000157
	ld ($C018), a ;0000015A
	ei ;0000015D
	jp $01D6 ;0000015E
	nop ; not executed offset: 00000161
	nop ; not executed offset: 00000162
	nop ; not executed offset: 00000163
	nop ; not executed offset: 00000164
	nop ; not executed offset: 00000165
	nop ; not executed offset: 00000166
	nop ; not executed offset: 00000167
	nop ; not executed offset: 00000168
	nop ; not executed offset: 00000169
	nop ; not executed offset: 0000016A
	nop ; not executed offset: 0000016B
	nop ; not executed offset: 0000016C
	nop ; not executed offset: 0000016D
	nop ; not executed offset: 0000016E
	nop ; not executed offset: 0000016F
	nop ; not executed offset: 00000170
	nop ; not executed offset: 00000171
	nop ; not executed offset: 00000172
	nop ; not executed offset: 00000173
	nop ; not executed offset: 00000174
	nop ; not executed offset: 00000175
	nop ; not executed offset: 00000176
	nop ; not executed offset: 00000177
	nop ; not executed offset: 00000178
	nop ; not executed offset: 00000179
	nop ; not executed offset: 0000017A
	nop ; not executed offset: 0000017B
	nop ; not executed offset: 0000017C
	nop ; not executed offset: 0000017D
	nop ; not executed offset: 0000017E
	nop ; not executed offset: 0000017F
	nop ; not executed offset: 00000180
	nop ; not executed offset: 00000181
	nop ; not executed offset: 00000182
	nop ; not executed offset: 00000183
	nop ; not executed offset: 00000184
	nop ; not executed offset: 00000185
	nop ; not executed offset: 00000186
	nop ; not executed offset: 00000187
	nop ; not executed offset: 00000188
	nop ; not executed offset: 00000189
	nop ; not executed offset: 0000018A
	nop ; not executed offset: 0000018B
	nop ; not executed offset: 0000018C
	nop ; not executed offset: 0000018D
	nop ; not executed offset: 0000018E
	nop ; not executed offset: 0000018F
	nop ; not executed offset: 00000190
	nop ; not executed offset: 00000191
	nop ; not executed offset: 00000192
	nop ; not executed offset: 00000193
	nop ; not executed offset: 00000194
	nop ; not executed offset: 00000195
	nop ; not executed offset: 00000196
	nop ; not executed offset: 00000197
	nop ; not executed offset: 00000198
	nop ; not executed offset: 00000199
	nop ; not executed offset: 0000019A
	nop ; not executed offset: 0000019B
	nop ; not executed offset: 0000019C
	nop ; not executed offset: 0000019D
	nop ; not executed offset: 0000019E
	nop ; not executed offset: 0000019F
	nop ; not executed offset: 000001A0
	nop ; not executed offset: 000001A1
	nop ; not executed offset: 000001A2
	nop ; not executed offset: 000001A3
	nop ; not executed offset: 000001A4
	nop ; not executed offset: 000001A5
	nop ; not executed offset: 000001A6
	nop ; not executed offset: 000001A7
	nop ; not executed offset: 000001A8
	nop ; not executed offset: 000001A9
	nop ; not executed offset: 000001AA
	nop ; not executed offset: 000001AB
	nop ; not executed offset: 000001AC
	nop ; not executed offset: 000001AD
	nop ; not executed offset: 000001AE
	nop ; not executed offset: 000001AF
	nop ; not executed offset: 000001B0
	nop ; not executed offset: 000001B1
	nop ; not executed offset: 000001B2
	nop ; not executed offset: 000001B3
	nop ; not executed offset: 000001B4
	nop ; not executed offset: 000001B5
	nop ; not executed offset: 000001B6
	nop ; not executed offset: 000001B7
	nop ; not executed offset: 000001B8
	nop ; not executed offset: 000001B9
	nop ; not executed offset: 000001BA
	nop ; not executed offset: 000001BB
	nop ; not executed offset: 000001BC
	nop ; not executed offset: 000001BD
	nop ; not executed offset: 000001BE
	nop ; not executed offset: 000001BF
;stopped writing due to overlap with another section
.BANK 0000 SLOT 0
.ORGA $000001D6
; Called by: 0000::0000015E
	call $2AD5 ;000001D6
	call $0464 ;000001D9
	call $0521 ;000001DC
	ld hl, $01D6 ;000001DF
	push hl ;000001E2
	ld hl, $C018 ;000001E3
	ld a, ($C019) ;000001E6
	xor (hl) ;000001E9
	and $007F ;000001EA
	ld a, (hl) ;000001EC
	jr z, LAB_0000_000001F2 ;z_UNTAKEN_JUMP_2 ;000001ED
	ld ($C019), a ;000001EF
LAB_0000_000001F2:
	ld hl, $0239 ;000001F2
;stopped writing due to overlap with another section
.BANK 0000 SLOT 0
.ORGA $000001F5
; Called by: 0000::00000292
	ld e, a ;000001F5
	ld d, $0000 ;000001F6
	add hl, de ;000001F8
	add hl, de ;000001F9
	ld a, (hl) ;000001FA
	inc hl ;000001FB
	ld h, (hl) ;000001FC
	ld l, a ;000001FD
	jp (hl) ;000001FE
;stopped writing due to overlap with another section
.BANK 0000 SLOT 0
.ORGA $000001FF
; Called by: 0000::00001000
; Called by: 0000::00001015
; Address Also defined as function
.BANK 0000 SLOT 0
.ORGA $00000273
; Called by: 0000::00000038
	push af ;00000273
	in a, ($00BF) ;00000274
	add a, a ;00000276
	jr nc, LAB_0000_000002C0 ;z_UNTAKEN_JUMP_2 ;00000277
	ld a, ($FFFF) ;00000279
	push af ;0000027C
	push bc ;0000027D
	push de ;0000027E
	push hl ;0000027F
	exx ;00000280
	push af ;00000281
	push bc ;00000282
	push de ;00000283
	push hl ;00000284
	PUSH IX ;00000285
	PUSH IY ;00000287
	call $2753 ;00000289
	ld a, ($C011) ;0000028C
	ld hl, $0295 ;0000028F
	jp $01F5 ;00000292
;stopped writing due to overlap with another section
.BANK 0000 SLOT 0
.ORGA $0000029F
; Called by: 0000::000002E8
	ld hl, $02AD ;0000029F
	push hl ;000002A2
	ld a, ($C002) ;000002A3
	or a ;000002A6
	z_UNTAKEN_JUMP_3 ;000002A7
	jp $62DC ;000002AA
	POP  IY ;000002AD
	POP  IX ;000002AF
	pop hl ;000002B1
	pop de ;000002B2
	pop bc ;000002B3
	pop af ;000002B4
	exx ;000002B5
	pop hl ;000002B6
	pop de ;000002B7
	pop bc ;000002B8
	pop af ;000002B9
	ld ($FFFF), a ;000002BA
	pop af ;000002BD
	ei ;000002BE
	ret ;000002BF
LAB_0000_000002C0:
	push hl ;000002C0
	call $296A ;000002C1
	pop hl ;000002C4
	pop af ;000002C5
	ei ;000002C6
	ret ;000002C7
	call $0423 ;000002C8
	call $0439 ;000002CB
	call $0445 ;000002CE
	ld b, $0000 ;000002D1
LAB_0000_000002D3:
	djnz LAB_0000_000002D3 ;z_UNTAKEN_JUMP_2 ;000002D3
	ld a, ($C01D) ;000002D5
	and $0001 ;000002D8
	call nz, $0685 ;z_UNTAKEN_JUMP_3 ;000002DA
	xor a ;000002DD
	ld ($C01D), a ;000002DE
	ld ($C01E), a ;000002E1
	xor a ;000002E4
	ld ($C011), a ;000002E5
	jp $029F ;000002E8
	nop ; not executed offset: 000002EB
	nop ; not executed offset: 000002EC
	nop ; not executed offset: 000002ED
	nop ; not executed offset: 000002EE
	nop ; not executed offset: 000002EF
	nop ; not executed offset: 000002F0
	nop ; not executed offset: 000002F1
	nop ; not executed offset: 000002F2
	nop ; not executed offset: 000002F3
	nop ; not executed offset: 000002F4
	nop ; not executed offset: 000002F5
	nop ; not executed offset: 000002F6
	nop ; not executed offset: 000002F7
	nop ; not executed offset: 000002F8
	nop ; not executed offset: 000002F9
	nop ; not executed offset: 000002FA
	nop ; not executed offset: 000002FB
	nop ; not executed offset: 000002FC
	nop ; not executed offset: 000002FD
	nop ; not executed offset: 000002FE
	nop ; not executed offset: 000002FF
	nop ; not executed offset: 00000300
	nop ; not executed offset: 00000301
	nop ; not executed offset: 00000302
	nop ; not executed offset: 00000303
	nop ; not executed offset: 00000304
	nop ; not executed offset: 00000305
	nop ; not executed offset: 00000306
	nop ; not executed offset: 00000307
	nop ; not executed offset: 00000308
	nop ; not executed offset: 00000309
	nop ; not executed offset: 0000030A
	nop ; not executed offset: 0000030B
	nop ; not executed offset: 0000030C
	nop ; not executed offset: 0000030D
	nop ; not executed offset: 0000030E
	nop ; not executed offset: 0000030F
	nop ; not executed offset: 00000310
	nop ; not executed offset: 00000311
	nop ; not executed offset: 00000312
	nop ; not executed offset: 00000313
	nop ; not executed offset: 00000314
	nop ; not executed offset: 00000315
	nop ; not executed offset: 00000316
	nop ; not executed offset: 00000317
	nop ; not executed offset: 00000318
	nop ; not executed offset: 00000319
	nop ; not executed offset: 0000031A
	nop ; not executed offset: 0000031B
	nop ; not executed offset: 0000031C
	nop ; not executed offset: 0000031D
	nop ; not executed offset: 0000031E
	nop ; not executed offset: 0000031F
	nop ; not executed offset: 00000320
	nop ; not executed offset: 00000321
	nop ; not executed offset: 00000322
	nop ; not executed offset: 00000323
	nop ; not executed offset: 00000324
	nop ; not executed offset: 00000325
	nop ; not executed offset: 00000326
	nop ; not executed offset: 00000327
	nop ; not executed offset: 00000328
	nop ; not executed offset: 00000329
	nop ; not executed offset: 0000032A
	nop ; not executed offset: 0000032B
	nop ; not executed offset: 0000032C
	nop ; not executed offset: 0000032D
	nop ; not executed offset: 0000032E
	nop ; not executed offset: 0000032F
	nop ; not executed offset: 00000330
	nop ; not executed offset: 00000331
	nop ; not executed offset: 00000332
	nop ; not executed offset: 00000333
	nop ; not executed offset: 00000334
	nop ; not executed offset: 00000335
	nop ; not executed offset: 00000336
	nop ; not executed offset: 00000337
	nop ; not executed offset: 00000338
	nop ; not executed offset: 00000339
	nop ; not executed offset: 0000033A
	nop ; not executed offset: 0000033B
	nop ; not executed offset: 0000033C
	nop ; not executed offset: 0000033D
	nop ; not executed offset: 0000033E
	nop ; not executed offset: 0000033F
	nop ; not executed offset: 00000340
	nop ; not executed offset: 00000341
	nop ; not executed offset: 00000342
	nop ; not executed offset: 00000343
	nop ; not executed offset: 00000344
	nop ; not executed offset: 00000345
	nop ; not executed offset: 00000346
	nop ; not executed offset: 00000347
	nop ; not executed offset: 00000348
	nop ; not executed offset: 00000349
	nop ; not executed offset: 0000034A
	nop ; not executed offset: 0000034B
	nop ; not executed offset: 0000034C
	nop ; not executed offset: 0000034D
	nop ; not executed offset: 0000034E
	nop ; not executed offset: 0000034F
	nop ; not executed offset: 00000350
	nop ; not executed offset: 00000351
	nop ; not executed offset: 00000352
	nop ; not executed offset: 00000353
	nop ; not executed offset: 00000354
	nop ; not executed offset: 00000355
	nop ; not executed offset: 00000356
	nop ; not executed offset: 00000357
	nop ; not executed offset: 00000358
	nop ; not executed offset: 00000359
	nop ; not executed offset: 0000035A
	nop ; not executed offset: 0000035B
	nop ; not executed offset: 0000035C
	nop ; not executed offset: 0000035D
	nop ; not executed offset: 0000035E
	nop ; not executed offset: 0000035F
	nop ; not executed offset: 00000360
	nop ; not executed offset: 00000361
	nop ; not executed offset: 00000362
	nop ; not executed offset: 00000363
	nop ; not executed offset: 00000364
	nop ; not executed offset: 00000365
	nop ; not executed offset: 00000366
	nop ; not executed offset: 00000367
	nop ; not executed offset: 00000368
	nop ; not executed offset: 00000369
	nop ; not executed offset: 0000036A
	nop ; not executed offset: 0000036B
	nop ; not executed offset: 0000036C
	nop ; not executed offset: 0000036D
	nop ; not executed offset: 0000036E
	nop ; not executed offset: 0000036F
	nop ; not executed offset: 00000370
	nop ; not executed offset: 00000371
	nop ; not executed offset: 00000372
	nop ; not executed offset: 00000373
	nop ; not executed offset: 00000374
	nop ; not executed offset: 00000375
	nop ; not executed offset: 00000376
	nop ; not executed offset: 00000377
	nop ; not executed offset: 00000378
	nop ; not executed offset: 00000379
	nop ; not executed offset: 0000037A
	nop ; not executed offset: 0000037B
	nop ; not executed offset: 0000037C
	nop ; not executed offset: 0000037D
	nop ; not executed offset: 0000037E
	nop ; not executed offset: 0000037F
	nop ; not executed offset: 00000380
	nop ; not executed offset: 00000381
	nop ; not executed offset: 00000382
	nop ; not executed offset: 00000383
	nop ; not executed offset: 00000384
	nop ; not executed offset: 00000385
	nop ; not executed offset: 00000386
	nop ; not executed offset: 00000387
	nop ; not executed offset: 00000388
	nop ; not executed offset: 00000389
	nop ; not executed offset: 0000038A
	nop ; not executed offset: 0000038B
	nop ; not executed offset: 0000038C
	nop ; not executed offset: 0000038D
	nop ; not executed offset: 0000038E
	nop ; not executed offset: 0000038F
	nop ; not executed offset: 00000390
	nop ; not executed offset: 00000391
	nop ; not executed offset: 00000392
	nop ; not executed offset: 00000393
	nop ; not executed offset: 00000394
	nop ; not executed offset: 00000395
	nop ; not executed offset: 00000396
	nop ; not executed offset: 00000397
	nop ; not executed offset: 00000398
	nop ; not executed offset: 00000399
	nop ; not executed offset: 0000039A
	nop ; not executed offset: 0000039B
	nop ; not executed offset: 0000039C
	nop ; not executed offset: 0000039D
	nop ; not executed offset: 0000039E
	nop ; not executed offset: 0000039F
	nop ; not executed offset: 000003A0
	nop ; not executed offset: 000003A1
	nop ; not executed offset: 000003A2
	nop ; not executed offset: 000003A3
	nop ; not executed offset: 000003A4
	nop ; not executed offset: 000003A5
	nop ; not executed offset: 000003A6
	nop ; not executed offset: 000003A7
	nop ; not executed offset: 000003A8
	nop ; not executed offset: 000003A9
	nop ; not executed offset: 000003AA
	nop ; not executed offset: 000003AB
	nop ; not executed offset: 000003AC
	nop ; not executed offset: 000003AD
	nop ; not executed offset: 000003AE
	nop ; not executed offset: 000003AF
	nop ; not executed offset: 000003B0
	nop ; not executed offset: 000003B1
	nop ; not executed offset: 000003B2
	nop ; not executed offset: 000003B3
	nop ; not executed offset: 000003B4
	nop ; not executed offset: 000003B5
	nop ; not executed offset: 000003B6
	nop ; not executed offset: 000003B7
	nop ; not executed offset: 000003B8
	nop ; not executed offset: 000003B9
	nop ; not executed offset: 000003BA
	nop ; not executed offset: 000003BB
	nop ; not executed offset: 000003BC
	nop ; not executed offset: 000003BD
	nop ; not executed offset: 000003BE
	nop ; not executed offset: 000003BF
	nop ; not executed offset: 000003C0
	nop ; not executed offset: 000003C1
	nop ; not executed offset: 000003C2
	nop ; not executed offset: 000003C3
	nop ; not executed offset: 000003C4
	nop ; not executed offset: 000003C5
	nop ; not executed offset: 000003C6
	nop ; not executed offset: 000003C7
	nop ; not executed offset: 000003C8
	nop ; not executed offset: 000003C9
	nop ; not executed offset: 000003CA
	nop ; not executed offset: 000003CB
	nop ; not executed offset: 000003CC
	nop ; not executed offset: 000003CD
	nop ; not executed offset: 000003CE
	nop ; not executed offset: 000003CF
	nop ; not executed offset: 000003D0
	nop ; not executed offset: 000003D1
	nop ; not executed offset: 000003D2
	nop ; not executed offset: 000003D3
	nop ; not executed offset: 000003D4
	nop ; not executed offset: 000003D5
	nop ; not executed offset: 000003D6
	nop ; not executed offset: 000003D7
	nop ; not executed offset: 000003D8
	nop ; not executed offset: 000003D9
	nop ; not executed offset: 000003DA
	nop ; not executed offset: 000003DB
	nop ; not executed offset: 000003DC
	nop ; not executed offset: 000003DD
	nop ; not executed offset: 000003DE
	nop ; not executed offset: 000003DF
	nop ; not executed offset: 000003E0
	nop ; not executed offset: 000003E1
	nop ; not executed offset: 000003E2
	nop ; not executed offset: 000003E3
	nop ; not executed offset: 000003E4
	nop ; not executed offset: 000003E5
	nop ; not executed offset: 000003E6
	nop ; not executed offset: 000003E7
	nop ; not executed offset: 000003E8
	nop ; not executed offset: 000003E9
	nop ; not executed offset: 000003EA
	nop ; not executed offset: 000003EB
	nop ; not executed offset: 000003EC
	nop ; not executed offset: 000003ED
	nop ; not executed offset: 000003EE
	nop ; not executed offset: 000003EF
	nop ; not executed offset: 000003F0
	nop ; not executed offset: 000003F1
	nop ; not executed offset: 000003F2
	nop ; not executed offset: 000003F3
	nop ; not executed offset: 000003F4
	nop ; not executed offset: 000003F5
	nop ; not executed offset: 000003F6
	nop ; not executed offset: 000003F7
	nop ; not executed offset: 000003F8
	nop ; not executed offset: 000003F9
	nop ; not executed offset: 000003FA
	nop ; not executed offset: 000003FB
	nop ; not executed offset: 000003FC
	nop ; not executed offset: 000003FD
	nop ; not executed offset: 000003FE
	nop ; not executed offset: 000003FF
	nop ; not executed offset: 00000400
	nop ; not executed offset: 00000401
	nop ; not executed offset: 00000402
	nop ; not executed offset: 00000403
	nop ; not executed offset: 00000404
	nop ; not executed offset: 00000405
	nop ; not executed offset: 00000406
	nop ; not executed offset: 00000407
	nop ; not executed offset: 00000408
	nop ; not executed offset: 00000409
	nop ; not executed offset: 0000040A
	nop ; not executed offset: 0000040B
	nop ; not executed offset: 0000040C
	nop ; not executed offset: 0000040D
	nop ; not executed offset: 0000040E
	nop ; not executed offset: 0000040F
	nop ; not executed offset: 00000410
	nop ; not executed offset: 00000411
	nop ; not executed offset: 00000412
	nop ; not executed offset: 00000413
	nop ; not executed offset: 00000414
	nop ; not executed offset: 00000415
	nop ; not executed offset: 00000416
	nop ; not executed offset: 00000417
	nop ; not executed offset: 00000418
	nop ; not executed offset: 00000419
	nop ; not executed offset: 0000041A
	nop ; not executed offset: 0000041B
	nop ; not executed offset: 0000041C
	nop ; not executed offset: 0000041D
	nop ; not executed offset: 0000041E
	nop ; not executed offset: 0000041F
	nop ; not executed offset: 00000420
	nop ; not executed offset: 00000421
	nop ; not executed offset: 00000422
;stopped writing due to overlap with another section
.BANK 0000 SLOT 0
.ORGA $00000589
; Called by: 0000::00000CED
; Address Also defined as function
.BANK 0000 SLOT 0
.ORGA $000006AB
; Called by: 0000::000006CD
; Called by: 0000::000006CE
; Address Also defined as function
.BANK 0000 SLOT 0
.ORGA $000006E8
; Called by: 0000::00000707
; Called by: 0000::00000708
; Address Also defined as function
.BANK 0000 SLOT 0
.ORGA $0000070B
; Called by: 0000::00000CF8
	ld ($C0FD), a ;0000070B
	rst $08 ;0000070E
	ld c, (hl) ;0000070F
	inc hl ;00000710
	ld b, (hl) ;00000711
	inc hl ;00000712
;stopped writing due to overlap with another section
.BANK 0000 SLOT 0
.ORGA $00000713
; Called by: 0000::0000072F
	ld a, (hl) ;00000713
	exx ;00000714
	ld c, $00BE ;00000715
	ld b, $0004 ;00000717
	ld h, a ;00000719
	ld a, ($C0FD) ;0000071A
LAB_0000_0000071D:
	rra ;0000071D
	ld d, h ;0000071E
	jr c, LAB_0000_00000723 ;0000071F
	nop ; not executed offset: 00000721
	nop ; not executed offset: 00000722
LAB_0000_00000723:
	OUT  (C),D ;00000723
	djnz LAB_0000_0000071D ;z_UNTAKEN_JUMP_2 ;00000725
	exx ;00000727
	inc hl ;00000728
	dec bc ;00000729
	ld a, b ;0000072A
	or c ;0000072B
	jp nz, $0713 ;z_UNTAKEN_JUMP_3 ;0000072C
	ret ;0000072F
	nop ; not executed offset: 00000730
	nop ; not executed offset: 00000731
	nop ; not executed offset: 00000732
	nop ; not executed offset: 00000733
	nop ; not executed offset: 00000734
	nop ; not executed offset: 00000735
	nop ; not executed offset: 00000736
	nop ; not executed offset: 00000737
	nop ; not executed offset: 00000738
	nop ; not executed offset: 00000739
	nop ; not executed offset: 0000073A
	nop ; not executed offset: 0000073B
	nop ; not executed offset: 0000073C
	nop ; not executed offset: 0000073D
	nop ; not executed offset: 0000073E
	nop ; not executed offset: 0000073F
	nop ; not executed offset: 00000740
	nop ; not executed offset: 00000741
	nop ; not executed offset: 00000742
	nop ; not executed offset: 00000743
	nop ; not executed offset: 00000744
	nop ; not executed offset: 00000745
	nop ; not executed offset: 00000746
	nop ; not executed offset: 00000747
	nop ; not executed offset: 00000748
	nop ; not executed offset: 00000749
	nop ; not executed offset: 0000074A
	nop ; not executed offset: 0000074B
	nop ; not executed offset: 0000074C
	nop ; not executed offset: 0000074D
	nop ; not executed offset: 0000074E
	nop ; not executed offset: 0000074F
	nop ; not executed offset: 00000750
	nop ; not executed offset: 00000751
	nop ; not executed offset: 00000752
	nop ; not executed offset: 00000753
	nop ; not executed offset: 00000754
	nop ; not executed offset: 00000755
	nop ; not executed offset: 00000756
	nop ; not executed offset: 00000757
	nop ; not executed offset: 00000758
	nop ; not executed offset: 00000759
	nop ; not executed offset: 0000075A
	nop ; not executed offset: 0000075B
	nop ; not executed offset: 0000075C
	nop ; not executed offset: 0000075D
	nop ; not executed offset: 0000075E
	nop ; not executed offset: 0000075F
	nop ; not executed offset: 00000760
	nop ; not executed offset: 00000761
	nop ; not executed offset: 00000762
	nop ; not executed offset: 00000763
	nop ; not executed offset: 00000764
	nop ; not executed offset: 00000765
	nop ; not executed offset: 00000766
	nop ; not executed offset: 00000767
	nop ; not executed offset: 00000768
	nop ; not executed offset: 00000769
	nop ; not executed offset: 0000076A
	nop ; not executed offset: 0000076B
	nop ; not executed offset: 0000076C
	nop ; not executed offset: 0000076D
	nop ; not executed offset: 0000076E
	nop ; not executed offset: 0000076F
	nop ; not executed offset: 00000770
	nop ; not executed offset: 00000771
	nop ; not executed offset: 00000772
	nop ; not executed offset: 00000773
	nop ; not executed offset: 00000774
	nop ; not executed offset: 00000775
	nop ; not executed offset: 00000776
	nop ; not executed offset: 00000777
	nop ; not executed offset: 00000778
	nop ; not executed offset: 00000779
	nop ; not executed offset: 0000077A
	nop ; not executed offset: 0000077B
	nop ; not executed offset: 0000077C
	nop ; not executed offset: 0000077D
	nop ; not executed offset: 0000077E
	nop ; not executed offset: 0000077F
	nop ; not executed offset: 00000780
	nop ; not executed offset: 00000781
	nop ; not executed offset: 00000782
	nop ; not executed offset: 00000783
	nop ; not executed offset: 00000784
	nop ; not executed offset: 00000785
	nop ; not executed offset: 00000786
	nop ; not executed offset: 00000787
	nop ; not executed offset: 00000788
	nop ; not executed offset: 00000789
	nop ; not executed offset: 0000078A
	nop ; not executed offset: 0000078B
	nop ; not executed offset: 0000078C
	nop ; not executed offset: 0000078D
	nop ; not executed offset: 0000078E
	nop ; not executed offset: 0000078F
	nop ; not executed offset: 00000790
	nop ; not executed offset: 00000791
	nop ; not executed offset: 00000792
	nop ; not executed offset: 00000793
	nop ; not executed offset: 00000794
	nop ; not executed offset: 00000795
	nop ; not executed offset: 00000796
	nop ; not executed offset: 00000797
	nop ; not executed offset: 00000798
	nop ; not executed offset: 00000799
	nop ; not executed offset: 0000079A
	nop ; not executed offset: 0000079B
	nop ; not executed offset: 0000079C
	nop ; not executed offset: 0000079D
	nop ; not executed offset: 0000079E
	nop ; not executed offset: 0000079F
	nop ; not executed offset: 000007A0
	nop ; not executed offset: 000007A1
	nop ; not executed offset: 000007A2
	nop ; not executed offset: 000007A3
	nop ; not executed offset: 000007A4
	nop ; not executed offset: 000007A5
	nop ; not executed offset: 000007A6
	nop ; not executed offset: 000007A7
	nop ; not executed offset: 000007A8
	nop ; not executed offset: 000007A9
	nop ; not executed offset: 000007AA
	nop ; not executed offset: 000007AB
	nop ; not executed offset: 000007AC
	nop ; not executed offset: 000007AD
	nop ; not executed offset: 000007AE
	nop ; not executed offset: 000007AF
	nop ; not executed offset: 000007B0
	nop ; not executed offset: 000007B1
	nop ; not executed offset: 000007B2
	nop ; not executed offset: 000007B3
	nop ; not executed offset: 000007B4
	nop ; not executed offset: 000007B5
	nop ; not executed offset: 000007B6
	nop ; not executed offset: 000007B7
	nop ; not executed offset: 000007B8
	nop ; not executed offset: 000007B9
	nop ; not executed offset: 000007BA
	nop ; not executed offset: 000007BB
	nop ; not executed offset: 000007BC
	nop ; not executed offset: 000007BD
	nop ; not executed offset: 000007BE
	nop ; not executed offset: 000007BF
	nop ; not executed offset: 000007C0
	nop ; not executed offset: 000007C1
	nop ; not executed offset: 000007C2
	nop ; not executed offset: 000007C3
	nop ; not executed offset: 000007C4
	nop ; not executed offset: 000007C5
	nop ; not executed offset: 000007C6
	nop ; not executed offset: 000007C7
	nop ; not executed offset: 000007C8
	nop ; not executed offset: 000007C9
	nop ; not executed offset: 000007CA
	nop ; not executed offset: 000007CB
	nop ; not executed offset: 000007CC
	nop ; not executed offset: 000007CD
	nop ; not executed offset: 000007CE
	nop ; not executed offset: 000007CF
	nop ; not executed offset: 000007D0
	nop ; not executed offset: 000007D1
	nop ; not executed offset: 000007D2
	nop ; not executed offset: 000007D3
	nop ; not executed offset: 000007D4
	nop ; not executed offset: 000007D5
	nop ; not executed offset: 000007D6
	nop ; not executed offset: 000007D7
	nop ; not executed offset: 000007D8
	nop ; not executed offset: 000007D9
	nop ; not executed offset: 000007DA
	nop ; not executed offset: 000007DB
	nop ; not executed offset: 000007DC
	nop ; not executed offset: 000007DD
	nop ; not executed offset: 000007DE
	nop ; not executed offset: 000007DF
	nop ; not executed offset: 000007E0
	nop ; not executed offset: 000007E1
	nop ; not executed offset: 000007E2
	nop ; not executed offset: 000007E3
	nop ; not executed offset: 000007E4
	nop ; not executed offset: 000007E5
	nop ; not executed offset: 000007E6
	nop ; not executed offset: 000007E7
	nop ; not executed offset: 000007E8
	nop ; not executed offset: 000007E9
	nop ; not executed offset: 000007EA
	nop ; not executed offset: 000007EB
	nop ; not executed offset: 000007EC
	nop ; not executed offset: 000007ED
	nop ; not executed offset: 000007EE
	nop ; not executed offset: 000007EF
	nop ; not executed offset: 000007F0
	nop ; not executed offset: 000007F1
	nop ; not executed offset: 000007F2
	nop ; not executed offset: 000007F3
	nop ; not executed offset: 000007F4
	nop ; not executed offset: 000007F5
	nop ; not executed offset: 000007F6
	nop ; not executed offset: 000007F7
	nop ; not executed offset: 000007F8
	nop ; not executed offset: 000007F9
	nop ; not executed offset: 000007FA
	nop ; not executed offset: 000007FB
	nop ; not executed offset: 000007FC
	nop ; not executed offset: 000007FD
	nop ; not executed offset: 000007FE
	nop ; not executed offset: 000007FF
	nop ; not executed offset: 00000800
	nop ; not executed offset: 00000801
	nop ; not executed offset: 00000802
	nop ; not executed offset: 00000803
	nop ; not executed offset: 00000804
	nop ; not executed offset: 00000805
	nop ; not executed offset: 00000806
	nop ; not executed offset: 00000807
	nop ; not executed offset: 00000808
	nop ; not executed offset: 00000809
	nop ; not executed offset: 0000080A
	nop ; not executed offset: 0000080B
	nop ; not executed offset: 0000080C
	nop ; not executed offset: 0000080D
	nop ; not executed offset: 0000080E
	nop ; not executed offset: 0000080F
	nop ; not executed offset: 00000810
	nop ; not executed offset: 00000811
	nop ; not executed offset: 00000812
	nop ; not executed offset: 00000813
	nop ; not executed offset: 00000814
	nop ; not executed offset: 00000815
	nop ; not executed offset: 00000816
	nop ; not executed offset: 00000817
	nop ; not executed offset: 00000818
	nop ; not executed offset: 00000819
	nop ; not executed offset: 0000081A
	nop ; not executed offset: 0000081B
	nop ; not executed offset: 0000081C
	nop ; not executed offset: 0000081D
	nop ; not executed offset: 0000081E
	nop ; not executed offset: 0000081F
	nop ; not executed offset: 00000820
	nop ; not executed offset: 00000821
	nop ; not executed offset: 00000822
	nop ; not executed offset: 00000823
	nop ; not executed offset: 00000824
	nop ; not executed offset: 00000825
	nop ; not executed offset: 00000826
	nop ; not executed offset: 00000827
	nop ; not executed offset: 00000828
	nop ; not executed offset: 00000829
	nop ; not executed offset: 0000082A
	nop ; not executed offset: 0000082B
	nop ; not executed offset: 0000082C
	nop ; not executed offset: 0000082D
	nop ; not executed offset: 0000082E
	nop ; not executed offset: 0000082F
	nop ; not executed offset: 00000830
	nop ; not executed offset: 00000831
	nop ; not executed offset: 00000832
	nop ; not executed offset: 00000833
	nop ; not executed offset: 00000834
	nop ; not executed offset: 00000835
	nop ; not executed offset: 00000836
	nop ; not executed offset: 00000837
	nop ; not executed offset: 00000838
	nop ; not executed offset: 00000839
	nop ; not executed offset: 0000083A
	nop ; not executed offset: 0000083B
	nop ; not executed offset: 0000083C
	nop ; not executed offset: 0000083D
	nop ; not executed offset: 0000083E
	nop ; not executed offset: 0000083F
	nop ; not executed offset: 00000840
	nop ; not executed offset: 00000841
	nop ; not executed offset: 00000842
	nop ; not executed offset: 00000843
	nop ; not executed offset: 00000844
	nop ; not executed offset: 00000845
	nop ; not executed offset: 00000846
	nop ; not executed offset: 00000847
	nop ; not executed offset: 00000848
	nop ; not executed offset: 00000849
	nop ; not executed offset: 0000084A
	nop ; not executed offset: 0000084B
	nop ; not executed offset: 0000084C
	nop ; not executed offset: 0000084D
	nop ; not executed offset: 0000084E
	nop ; not executed offset: 0000084F
	nop ; not executed offset: 00000850
	nop ; not executed offset: 00000851
	nop ; not executed offset: 00000852
	nop ; not executed offset: 00000853
	nop ; not executed offset: 00000854
	nop ; not executed offset: 00000855
	nop ; not executed offset: 00000856
	nop ; not executed offset: 00000857
	nop ; not executed offset: 00000858
	nop ; not executed offset: 00000859
	nop ; not executed offset: 0000085A
	nop ; not executed offset: 0000085B
	nop ; not executed offset: 0000085C
	nop ; not executed offset: 0000085D
	nop ; not executed offset: 0000085E
	nop ; not executed offset: 0000085F
	nop ; not executed offset: 00000860
	nop ; not executed offset: 00000861
	nop ; not executed offset: 00000862
	nop ; not executed offset: 00000863
	nop ; not executed offset: 00000864
	nop ; not executed offset: 00000865
	nop ; not executed offset: 00000866
	nop ; not executed offset: 00000867
	nop ; not executed offset: 00000868
	nop ; not executed offset: 00000869
	nop ; not executed offset: 0000086A
	nop ; not executed offset: 0000086B
	nop ; not executed offset: 0000086C
	nop ; not executed offset: 0000086D
	nop ; not executed offset: 0000086E
	nop ; not executed offset: 0000086F
	nop ; not executed offset: 00000870
	nop ; not executed offset: 00000871
	nop ; not executed offset: 00000872
	nop ; not executed offset: 00000873
	nop ; not executed offset: 00000874
	nop ; not executed offset: 00000875
	nop ; not executed offset: 00000876
	nop ; not executed offset: 00000877
	nop ; not executed offset: 00000878
	nop ; not executed offset: 00000879
	nop ; not executed offset: 0000087A
	nop ; not executed offset: 0000087B
	nop ; not executed offset: 0000087C
	nop ; not executed offset: 0000087D
	nop ; not executed offset: 0000087E
	nop ; not executed offset: 0000087F
	nop ; not executed offset: 00000880
	nop ; not executed offset: 00000881
	nop ; not executed offset: 00000882
	nop ; not executed offset: 00000883
	nop ; not executed offset: 00000884
	nop ; not executed offset: 00000885
	nop ; not executed offset: 00000886
	nop ; not executed offset: 00000887
	nop ; not executed offset: 00000888
	nop ; not executed offset: 00000889
	nop ; not executed offset: 0000088A
	nop ; not executed offset: 0000088B
	nop ; not executed offset: 0000088C
	nop ; not executed offset: 0000088D
	nop ; not executed offset: 0000088E
	nop ; not executed offset: 0000088F
	nop ; not executed offset: 00000890
	nop ; not executed offset: 00000891
	nop ; not executed offset: 00000892
	nop ; not executed offset: 00000893
	nop ; not executed offset: 00000894
	nop ; not executed offset: 00000895
	nop ; not executed offset: 00000896
	nop ; not executed offset: 00000897
	nop ; not executed offset: 00000898
	nop ; not executed offset: 00000899
	nop ; not executed offset: 0000089A
	nop ; not executed offset: 0000089B
	nop ; not executed offset: 0000089C
	nop ; not executed offset: 0000089D
	nop ; not executed offset: 0000089E
	nop ; not executed offset: 0000089F
	nop ; not executed offset: 000008A0
	nop ; not executed offset: 000008A1
	nop ; not executed offset: 000008A2
	nop ; not executed offset: 000008A3
	nop ; not executed offset: 000008A4
	nop ; not executed offset: 000008A5
	nop ; not executed offset: 000008A6
	nop ; not executed offset: 000008A7
	nop ; not executed offset: 000008A8
	nop ; not executed offset: 000008A9
	nop ; not executed offset: 000008AA
	nop ; not executed offset: 000008AB
	nop ; not executed offset: 000008AC
	nop ; not executed offset: 000008AD
	nop ; not executed offset: 000008AE
	nop ; not executed offset: 000008AF
	nop ; not executed offset: 000008B0
	nop ; not executed offset: 000008B1
	nop ; not executed offset: 000008B2
	nop ; not executed offset: 000008B3
	nop ; not executed offset: 000008B4
	nop ; not executed offset: 000008B5
	nop ; not executed offset: 000008B6
	nop ; not executed offset: 000008B7
	nop ; not executed offset: 000008B8
	nop ; not executed offset: 000008B9
	nop ; not executed offset: 000008BA
	nop ; not executed offset: 000008BB
	nop ; not executed offset: 000008BC
	nop ; not executed offset: 000008BD
	nop ; not executed offset: 000008BE
	nop ; not executed offset: 000008BF
	nop ; not executed offset: 000008C0
	nop ; not executed offset: 000008C1
	nop ; not executed offset: 000008C2
	nop ; not executed offset: 000008C3
	nop ; not executed offset: 000008C4
	nop ; not executed offset: 000008C5
	nop ; not executed offset: 000008C6
	nop ; not executed offset: 000008C7
	nop ; not executed offset: 000008C8
	nop ; not executed offset: 000008C9
	nop ; not executed offset: 000008CA
	nop ; not executed offset: 000008CB
	nop ; not executed offset: 000008CC
	nop ; not executed offset: 000008CD
	nop ; not executed offset: 000008CE
	nop ; not executed offset: 000008CF
	nop ; not executed offset: 000008D0
	nop ; not executed offset: 000008D1
	nop ; not executed offset: 000008D2
	nop ; not executed offset: 000008D3
	nop ; not executed offset: 000008D4
	nop ; not executed offset: 000008D5
	nop ; not executed offset: 000008D6
	nop ; not executed offset: 000008D7
	nop ; not executed offset: 000008D8
	nop ; not executed offset: 000008D9
	nop ; not executed offset: 000008DA
	nop ; not executed offset: 000008DB
	nop ; not executed offset: 000008DC
	nop ; not executed offset: 000008DD
	nop ; not executed offset: 000008DE
	nop ; not executed offset: 000008DF
	nop ; not executed offset: 000008E0
	nop ; not executed offset: 000008E1
	nop ; not executed offset: 000008E2
	nop ; not executed offset: 000008E3
	nop ; not executed offset: 000008E4
	nop ; not executed offset: 000008E5
	nop ; not executed offset: 000008E6
	nop ; not executed offset: 000008E7
	nop ; not executed offset: 000008E8
	nop ; not executed offset: 000008E9
	nop ; not executed offset: 000008EA
	nop ; not executed offset: 000008EB
	nop ; not executed offset: 000008EC
	nop ; not executed offset: 000008ED
	nop ; not executed offset: 000008EE
	nop ; not executed offset: 000008EF
	nop ; not executed offset: 000008F0
	nop ; not executed offset: 000008F1
	nop ; not executed offset: 000008F2
	nop ; not executed offset: 000008F3
	nop ; not executed offset: 000008F4
	nop ; not executed offset: 000008F5
	nop ; not executed offset: 000008F6
	nop ; not executed offset: 000008F7
	nop ; not executed offset: 000008F8
	nop ; not executed offset: 000008F9
	nop ; not executed offset: 000008FA
	nop ; not executed offset: 000008FB
	nop ; not executed offset: 000008FC
	nop ; not executed offset: 000008FD
	nop ; not executed offset: 000008FE
	nop ; not executed offset: 000008FF
	nop ; not executed offset: 00000900
	nop ; not executed offset: 00000901
	nop ; not executed offset: 00000902
	nop ; not executed offset: 00000903
	nop ; not executed offset: 00000904
	nop ; not executed offset: 00000905
	nop ; not executed offset: 00000906
	nop ; not executed offset: 00000907
	nop ; not executed offset: 00000908
	nop ; not executed offset: 00000909
	nop ; not executed offset: 0000090A
	nop ; not executed offset: 0000090B
	nop ; not executed offset: 0000090C
	nop ; not executed offset: 0000090D
	nop ; not executed offset: 0000090E
	nop ; not executed offset: 0000090F
	nop ; not executed offset: 00000910
	nop ; not executed offset: 00000911
	nop ; not executed offset: 00000912
	nop ; not executed offset: 00000913
	nop ; not executed offset: 00000914
	nop ; not executed offset: 00000915
	nop ; not executed offset: 00000916
	nop ; not executed offset: 00000917
	nop ; not executed offset: 00000918
	nop ; not executed offset: 00000919
	nop ; not executed offset: 0000091A
	nop ; not executed offset: 0000091B
	nop ; not executed offset: 0000091C
	nop ; not executed offset: 0000091D
	nop ; not executed offset: 0000091E
	nop ; not executed offset: 0000091F
	nop ; not executed offset: 00000920
	nop ; not executed offset: 00000921
	nop ; not executed offset: 00000922
	nop ; not executed offset: 00000923
	nop ; not executed offset: 00000924
	nop ; not executed offset: 00000925
	nop ; not executed offset: 00000926
	nop ; not executed offset: 00000927
	nop ; not executed offset: 00000928
	nop ; not executed offset: 00000929
	nop ; not executed offset: 0000092A
	nop ; not executed offset: 0000092B
	nop ; not executed offset: 0000092C
	nop ; not executed offset: 0000092D
	nop ; not executed offset: 0000092E
	nop ; not executed offset: 0000092F
;stopped writing due to overlap with another section
.BANK 0000 SLOT 0
.ORGA $000009B0
; Called by: 0000::00000691
; Address Also defined as function


;;;;;;;;;;;
; Bank:0001
.BANK 0001 SLOT 1
.ORGA $000062DC
; Called by: 0000::000002AA
	ld hl, $DD10 ;000062DC
	ld a, (hl) ;000062DF
	or a ;000062E0
	jr z, LAB_0001_000062E8 ;000062E1
	nop ; not executed offset: 000062E3
	nop ; not executed offset: 000062E4
	nop ; not executed offset: 000062E5
	nop ; not executed offset: 000062E6
	nop ; not executed offset: 000062E7
LAB_0001_000062E8:
	call $635B ;000062E8
	call $6342 ;000062EB
	call $6382 ;000062EE
	call $63E8 ;000062F1
	LD IX,$DD40 ;000062F4
	bit 7, [ix+0] ;000062F8
	z_UNTAKEN_JUMP_3 ;000062FC
	LD IX,$DD70 ;000062FF
	bit 7, [ix+0] ;00006303
	z_UNTAKEN_JUMP_3 ;00006307
	LD IX,$DDA0 ;0000630A
	bit 7, [ix+0] ;0000630E
	z_UNTAKEN_JUMP_3 ;00006312
	LD IX,$DDD0 ;00006315
	bit 7, [ix+0] ;00006319
	z_UNTAKEN_JUMP_3 ;0000631D
	LD IX,$DE00 ;00006320
	bit 7, [ix+0] ;00006324
	z_UNTAKEN_JUMP_3 ;00006328
	LD IX,$DE30 ;0000632B
	bit 7, [ix+0] ;0000632F
	z_UNTAKEN_JUMP_3 ;00006333
	LD IX,$DE60 ;00006336
	bit 7, [ix+0] ;0000633A
	z_UNTAKEN_JUMP_3 ;0000633E
	ret ;00006341
;stopped writing due to overlap with another section
.BANK 0001 SLOT 1
.ORGA $00006431
; Called by: 0001::000066B3
	ld a, $0080 ;00006431
	ld ($DD03), a ;00006433
	ret ;00006436
	nop ; not executed offset: 00006437
	nop ; not executed offset: 00006438
	nop ; not executed offset: 00006439
	nop ; not executed offset: 0000643A
	nop ; not executed offset: 0000643B
	nop ; not executed offset: 0000643C
	nop ; not executed offset: 0000643D
	nop ; not executed offset: 0000643E
	nop ; not executed offset: 0000643F
	nop ; not executed offset: 00006440
	nop ; not executed offset: 00006441
	nop ; not executed offset: 00006442
	nop ; not executed offset: 00006443
	nop ; not executed offset: 00006444
	nop ; not executed offset: 00006445
	nop ; not executed offset: 00006446
	nop ; not executed offset: 00006447
	nop ; not executed offset: 00006448
	nop ; not executed offset: 00006449
	nop ; not executed offset: 0000644A
	nop ; not executed offset: 0000644B
	nop ; not executed offset: 0000644C
	nop ; not executed offset: 0000644D
	nop ; not executed offset: 0000644E
	nop ; not executed offset: 0000644F
	nop ; not executed offset: 00006450
	nop ; not executed offset: 00006451
	nop ; not executed offset: 00006452
	nop ; not executed offset: 00006453
	nop ; not executed offset: 00006454
	nop ; not executed offset: 00006455
	nop ; not executed offset: 00006456
	nop ; not executed offset: 00006457
	nop ; not executed offset: 00006458
	nop ; not executed offset: 00006459
	nop ; not executed offset: 0000645A
	nop ; not executed offset: 0000645B
	nop ; not executed offset: 0000645C
	nop ; not executed offset: 0000645D
	nop ; not executed offset: 0000645E
	nop ; not executed offset: 0000645F
	nop ; not executed offset: 00006460
	nop ; not executed offset: 00006461
	nop ; not executed offset: 00006462
	nop ; not executed offset: 00006463
	nop ; not executed offset: 00006464
	nop ; not executed offset: 00006465
	nop ; not executed offset: 00006466
	nop ; not executed offset: 00006467
	nop ; not executed offset: 00006468
	nop ; not executed offset: 00006469
	nop ; not executed offset: 0000646A
	nop ; not executed offset: 0000646B
	nop ; not executed offset: 0000646C
	nop ; not executed offset: 0000646D
	nop ; not executed offset: 0000646E
	nop ; not executed offset: 0000646F
	nop ; not executed offset: 00006470
	nop ; not executed offset: 00006471
	nop ; not executed offset: 00006472
	nop ; not executed offset: 00006473
	nop ; not executed offset: 00006474
	nop ; not executed offset: 00006475
	nop ; not executed offset: 00006476
	nop ; not executed offset: 00006477
	nop ; not executed offset: 00006478
	nop ; not executed offset: 00006479
	nop ; not executed offset: 0000647A
	nop ; not executed offset: 0000647B
	nop ; not executed offset: 0000647C
	nop ; not executed offset: 0000647D
	nop ; not executed offset: 0000647E
	nop ; not executed offset: 0000647F
	nop ; not executed offset: 00006480
	nop ; not executed offset: 00006481
	nop ; not executed offset: 00006482
	nop ; not executed offset: 00006483
	nop ; not executed offset: 00006484
	nop ; not executed offset: 00006485
	nop ; not executed offset: 00006486
	nop ; not executed offset: 00006487
	nop ; not executed offset: 00006488
	nop ; not executed offset: 00006489
	nop ; not executed offset: 0000648A
	nop ; not executed offset: 0000648B
	nop ; not executed offset: 0000648C
	nop ; not executed offset: 0000648D
	nop ; not executed offset: 0000648E
	nop ; not executed offset: 0000648F
	nop ; not executed offset: 00006490
	nop ; not executed offset: 00006491
	nop ; not executed offset: 00006492
	nop ; not executed offset: 00006493
	nop ; not executed offset: 00006494
	nop ; not executed offset: 00006495
	nop ; not executed offset: 00006496
	nop ; not executed offset: 00006497
	nop ; not executed offset: 00006498
	nop ; not executed offset: 00006499
	nop ; not executed offset: 0000649A
	nop ; not executed offset: 0000649B
	nop ; not executed offset: 0000649C
	nop ; not executed offset: 0000649D
	nop ; not executed offset: 0000649E
	nop ; not executed offset: 0000649F
	nop ; not executed offset: 000064A0
	nop ; not executed offset: 000064A1
	nop ; not executed offset: 000064A2
	nop ; not executed offset: 000064A3
	nop ; not executed offset: 000064A4
	nop ; not executed offset: 000064A5
	nop ; not executed offset: 000064A6
	nop ; not executed offset: 000064A7
	nop ; not executed offset: 000064A8
	nop ; not executed offset: 000064A9
	nop ; not executed offset: 000064AA
	nop ; not executed offset: 000064AB
	nop ; not executed offset: 000064AC
	nop ; not executed offset: 000064AD
	nop ; not executed offset: 000064AE
	nop ; not executed offset: 000064AF
	nop ; not executed offset: 000064B0
	nop ; not executed offset: 000064B1
	nop ; not executed offset: 000064B2
	nop ; not executed offset: 000064B3
	nop ; not executed offset: 000064B4
	nop ; not executed offset: 000064B5
	nop ; not executed offset: 000064B6
	nop ; not executed offset: 000064B7
	nop ; not executed offset: 000064B8
	nop ; not executed offset: 000064B9
	nop ; not executed offset: 000064BA
	nop ; not executed offset: 000064BB
	nop ; not executed offset: 000064BC
	nop ; not executed offset: 000064BD
	nop ; not executed offset: 000064BE
	nop ; not executed offset: 000064BF
	nop ; not executed offset: 000064C0
	nop ; not executed offset: 000064C1
	nop ; not executed offset: 000064C2
	nop ; not executed offset: 000064C3
	nop ; not executed offset: 000064C4
	nop ; not executed offset: 000064C5
	nop ; not executed offset: 000064C6
	nop ; not executed offset: 000064C7
	nop ; not executed offset: 000064C8
	nop ; not executed offset: 000064C9
	nop ; not executed offset: 000064CA
	nop ; not executed offset: 000064CB
	nop ; not executed offset: 000064CC
	nop ; not executed offset: 000064CD
	nop ; not executed offset: 000064CE
	nop ; not executed offset: 000064CF
	nop ; not executed offset: 000064D0
	nop ; not executed offset: 000064D1
	nop ; not executed offset: 000064D2
	nop ; not executed offset: 000064D3
	nop ; not executed offset: 000064D4
	nop ; not executed offset: 000064D5
	nop ; not executed offset: 000064D6
	nop ; not executed offset: 000064D7
	nop ; not executed offset: 000064D8
	nop ; not executed offset: 000064D9
	nop ; not executed offset: 000064DA
	nop ; not executed offset: 000064DB
	nop ; not executed offset: 000064DC
	nop ; not executed offset: 000064DD
	nop ; not executed offset: 000064DE
	nop ; not executed offset: 000064DF
	nop ; not executed offset: 000064E0
	nop ; not executed offset: 000064E1
	nop ; not executed offset: 000064E2
	nop ; not executed offset: 000064E3
	nop ; not executed offset: 000064E4
	nop ; not executed offset: 000064E5
	nop ; not executed offset: 000064E6
	nop ; not executed offset: 000064E7
	nop ; not executed offset: 000064E8
	nop ; not executed offset: 000064E9
	nop ; not executed offset: 000064EA
	nop ; not executed offset: 000064EB
	nop ; not executed offset: 000064EC
	nop ; not executed offset: 000064ED
	nop ; not executed offset: 000064EE
	nop ; not executed offset: 000064EF
	nop ; not executed offset: 000064F0
	nop ; not executed offset: 000064F1
	nop ; not executed offset: 000064F2
	nop ; not executed offset: 000064F3
	nop ; not executed offset: 000064F4
	nop ; not executed offset: 000064F5
	nop ; not executed offset: 000064F6
	nop ; not executed offset: 000064F7
	nop ; not executed offset: 000064F8
	nop ; not executed offset: 000064F9
	nop ; not executed offset: 000064FA
	nop ; not executed offset: 000064FB
	nop ; not executed offset: 000064FC
	nop ; not executed offset: 000064FD
	nop ; not executed offset: 000064FE
	nop ; not executed offset: 000064FF
	nop ; not executed offset: 00006500
	nop ; not executed offset: 00006501
	nop ; not executed offset: 00006502
	nop ; not executed offset: 00006503
	nop ; not executed offset: 00006504
	nop ; not executed offset: 00006505
	nop ; not executed offset: 00006506
	nop ; not executed offset: 00006507
	nop ; not executed offset: 00006508
	nop ; not executed offset: 00006509
	nop ; not executed offset: 0000650A
	nop ; not executed offset: 0000650B
	nop ; not executed offset: 0000650C
	nop ; not executed offset: 0000650D
	nop ; not executed offset: 0000650E
	nop ; not executed offset: 0000650F
	nop ; not executed offset: 00006510
	nop ; not executed offset: 00006511
	nop ; not executed offset: 00006512
	nop ; not executed offset: 00006513
	nop ; not executed offset: 00006514
	nop ; not executed offset: 00006515
	nop ; not executed offset: 00006516
	nop ; not executed offset: 00006517
	nop ; not executed offset: 00006518
	nop ; not executed offset: 00006519
	nop ; not executed offset: 0000651A
	nop ; not executed offset: 0000651B
	nop ; not executed offset: 0000651C
	nop ; not executed offset: 0000651D
	nop ; not executed offset: 0000651E
	nop ; not executed offset: 0000651F
	nop ; not executed offset: 00006520
	nop ; not executed offset: 00006521
	nop ; not executed offset: 00006522
	nop ; not executed offset: 00006523
	nop ; not executed offset: 00006524
	nop ; not executed offset: 00006525
	nop ; not executed offset: 00006526
	nop ; not executed offset: 00006527
	nop ; not executed offset: 00006528
	nop ; not executed offset: 00006529
	nop ; not executed offset: 0000652A
	nop ; not executed offset: 0000652B
	nop ; not executed offset: 0000652C
	nop ; not executed offset: 0000652D
	nop ; not executed offset: 0000652E
	nop ; not executed offset: 0000652F
	nop ; not executed offset: 00006530
	nop ; not executed offset: 00006531
	nop ; not executed offset: 00006532
	nop ; not executed offset: 00006533
	nop ; not executed offset: 00006534
	nop ; not executed offset: 00006535
	nop ; not executed offset: 00006536
	nop ; not executed offset: 00006537
	nop ; not executed offset: 00006538
	nop ; not executed offset: 00006539
	nop ; not executed offset: 0000653A
	nop ; not executed offset: 0000653B
	nop ; not executed offset: 0000653C
	nop ; not executed offset: 0000653D
	nop ; not executed offset: 0000653E
	nop ; not executed offset: 0000653F
	nop ; not executed offset: 00006540
	nop ; not executed offset: 00006541
	nop ; not executed offset: 00006542
	nop ; not executed offset: 00006543
	nop ; not executed offset: 00006544
	nop ; not executed offset: 00006545
	nop ; not executed offset: 00006546
	nop ; not executed offset: 00006547
	nop ; not executed offset: 00006548
	nop ; not executed offset: 00006549
	nop ; not executed offset: 0000654A
	nop ; not executed offset: 0000654B
	nop ; not executed offset: 0000654C
	nop ; not executed offset: 0000654D
	nop ; not executed offset: 0000654E
	nop ; not executed offset: 0000654F
	nop ; not executed offset: 00006550
	nop ; not executed offset: 00006551
	nop ; not executed offset: 00006552
	nop ; not executed offset: 00006553
	nop ; not executed offset: 00006554
	nop ; not executed offset: 00006555
	nop ; not executed offset: 00006556
	nop ; not executed offset: 00006557
	nop ; not executed offset: 00006558
	nop ; not executed offset: 00006559
	nop ; not executed offset: 0000655A
	nop ; not executed offset: 0000655B
	nop ; not executed offset: 0000655C
	nop ; not executed offset: 0000655D
	nop ; not executed offset: 0000655E
	nop ; not executed offset: 0000655F
	nop ; not executed offset: 00006560
	nop ; not executed offset: 00006561
	nop ; not executed offset: 00006562
	nop ; not executed offset: 00006563
	nop ; not executed offset: 00006564
	nop ; not executed offset: 00006565
	nop ; not executed offset: 00006566
	nop ; not executed offset: 00006567
	nop ; not executed offset: 00006568
	nop ; not executed offset: 00006569
	nop ; not executed offset: 0000656A
	nop ; not executed offset: 0000656B
	nop ; not executed offset: 0000656C
	nop ; not executed offset: 0000656D
	nop ; not executed offset: 0000656E
	nop ; not executed offset: 0000656F
	nop ; not executed offset: 00006570
	nop ; not executed offset: 00006571
	nop ; not executed offset: 00006572
	nop ; not executed offset: 00006573
	nop ; not executed offset: 00006574
	nop ; not executed offset: 00006575
	nop ; not executed offset: 00006576
	nop ; not executed offset: 00006577
	nop ; not executed offset: 00006578
	nop ; not executed offset: 00006579
	nop ; not executed offset: 0000657A
	nop ; not executed offset: 0000657B
	nop ; not executed offset: 0000657C
	nop ; not executed offset: 0000657D
	nop ; not executed offset: 0000657E
	nop ; not executed offset: 0000657F
	nop ; not executed offset: 00006580
	nop ; not executed offset: 00006581
	nop ; not executed offset: 00006582
	nop ; not executed offset: 00006583
	nop ; not executed offset: 00006584
	nop ; not executed offset: 00006585
	nop ; not executed offset: 00006586
	nop ; not executed offset: 00006587
	nop ; not executed offset: 00006588
	nop ; not executed offset: 00006589
	nop ; not executed offset: 0000658A
	nop ; not executed offset: 0000658B
	nop ; not executed offset: 0000658C
	nop ; not executed offset: 0000658D
	nop ; not executed offset: 0000658E
	nop ; not executed offset: 0000658F
	nop ; not executed offset: 00006590
	nop ; not executed offset: 00006591
	nop ; not executed offset: 00006592
	nop ; not executed offset: 00006593
	nop ; not executed offset: 00006594
	nop ; not executed offset: 00006595
	nop ; not executed offset: 00006596
	nop ; not executed offset: 00006597
	nop ; not executed offset: 00006598
	nop ; not executed offset: 00006599
	nop ; not executed offset: 0000659A
	nop ; not executed offset: 0000659B
	nop ; not executed offset: 0000659C
	nop ; not executed offset: 0000659D
	nop ; not executed offset: 0000659E
	nop ; not executed offset: 0000659F
	nop ; not executed offset: 000065A0
	nop ; not executed offset: 000065A1
	nop ; not executed offset: 000065A2
	nop ; not executed offset: 000065A3
	nop ; not executed offset: 000065A4
	nop ; not executed offset: 000065A5
	nop ; not executed offset: 000065A6
	nop ; not executed offset: 000065A7
	nop ; not executed offset: 000065A8
	nop ; not executed offset: 000065A9
	nop ; not executed offset: 000065AA
	nop ; not executed offset: 000065AB
	nop ; not executed offset: 000065AC
	nop ; not executed offset: 000065AD
	nop ; not executed offset: 000065AE
	nop ; not executed offset: 000065AF
	nop ; not executed offset: 000065B0
	nop ; not executed offset: 000065B1
	nop ; not executed offset: 000065B2
	nop ; not executed offset: 000065B3
	nop ; not executed offset: 000065B4
	nop ; not executed offset: 000065B5
	nop ; not executed offset: 000065B6
	nop ; not executed offset: 000065B7
	nop ; not executed offset: 000065B8
	nop ; not executed offset: 000065B9
	nop ; not executed offset: 000065BA
	nop ; not executed offset: 000065BB
	nop ; not executed offset: 000065BC
	nop ; not executed offset: 000065BD
	nop ; not executed offset: 000065BE
	nop ; not executed offset: 000065BF
	nop ; not executed offset: 000065C0
	nop ; not executed offset: 000065C1
	nop ; not executed offset: 000065C2
	nop ; not executed offset: 000065C3
	nop ; not executed offset: 000065C4
	nop ; not executed offset: 000065C5
	nop ; not executed offset: 000065C6
	nop ; not executed offset: 000065C7
	nop ; not executed offset: 000065C8
	nop ; not executed offset: 000065C9
	nop ; not executed offset: 000065CA
	nop ; not executed offset: 000065CB
	nop ; not executed offset: 000065CC
	nop ; not executed offset: 000065CD
	nop ; not executed offset: 000065CE
	nop ; not executed offset: 000065CF
	nop ; not executed offset: 000065D0
	nop ; not executed offset: 000065D1
	nop ; not executed offset: 000065D2
	nop ; not executed offset: 000065D3
	nop ; not executed offset: 000065D4
	nop ; not executed offset: 000065D5
	nop ; not executed offset: 000065D6
	nop ; not executed offset: 000065D7
	nop ; not executed offset: 000065D8
	nop ; not executed offset: 000065D9
	nop ; not executed offset: 000065DA
	nop ; not executed offset: 000065DB
	nop ; not executed offset: 000065DC
	nop ; not executed offset: 000065DD
	nop ; not executed offset: 000065DE
	nop ; not executed offset: 000065DF
	nop ; not executed offset: 000065E0
	nop ; not executed offset: 000065E1
	nop ; not executed offset: 000065E2
	nop ; not executed offset: 000065E3
	nop ; not executed offset: 000065E4
	nop ; not executed offset: 000065E5
	nop ; not executed offset: 000065E6
	nop ; not executed offset: 000065E7
	nop ; not executed offset: 000065E8
	nop ; not executed offset: 000065E9
	nop ; not executed offset: 000065EA
	nop ; not executed offset: 000065EB
	nop ; not executed offset: 000065EC
	nop ; not executed offset: 000065ED
	nop ; not executed offset: 000065EE
	nop ; not executed offset: 000065EF
	nop ; not executed offset: 000065F0
	nop ; not executed offset: 000065F1
	nop ; not executed offset: 000065F2
	nop ; not executed offset: 000065F3
	nop ; not executed offset: 000065F4
	nop ; not executed offset: 000065F5
	nop ; not executed offset: 000065F6
	nop ; not executed offset: 000065F7
	nop ; not executed offset: 000065F8
	nop ; not executed offset: 000065F9
	nop ; not executed offset: 000065FA
	nop ; not executed offset: 000065FB
	nop ; not executed offset: 000065FC
	nop ; not executed offset: 000065FD
	nop ; not executed offset: 000065FE
	nop ; not executed offset: 000065FF
	nop ; not executed offset: 00006600
	nop ; not executed offset: 00006601
	nop ; not executed offset: 00006602
	nop ; not executed offset: 00006603
	nop ; not executed offset: 00006604
	nop ; not executed offset: 00006605
	nop ; not executed offset: 00006606
	nop ; not executed offset: 00006607
	nop ; not executed offset: 00006608
	nop ; not executed offset: 00006609
	nop ; not executed offset: 0000660A
	nop ; not executed offset: 0000660B
	nop ; not executed offset: 0000660C
	nop ; not executed offset: 0000660D
	nop ; not executed offset: 0000660E
	nop ; not executed offset: 0000660F
	nop ; not executed offset: 00006610
	nop ; not executed offset: 00006611
	nop ; not executed offset: 00006612
	nop ; not executed offset: 00006613
	nop ; not executed offset: 00006614
	nop ; not executed offset: 00006615
	nop ; not executed offset: 00006616
	nop ; not executed offset: 00006617
	nop ; not executed offset: 00006618
	nop ; not executed offset: 00006619
	nop ; not executed offset: 0000661A
	nop ; not executed offset: 0000661B
	nop ; not executed offset: 0000661C
	nop ; not executed offset: 0000661D
	nop ; not executed offset: 0000661E
	nop ; not executed offset: 0000661F
	nop ; not executed offset: 00006620
	nop ; not executed offset: 00006621
	nop ; not executed offset: 00006622
	nop ; not executed offset: 00006623
	nop ; not executed offset: 00006624
	nop ; not executed offset: 00006625
	nop ; not executed offset: 00006626
	nop ; not executed offset: 00006627
	nop ; not executed offset: 00006628
	nop ; not executed offset: 00006629
	nop ; not executed offset: 0000662A
	nop ; not executed offset: 0000662B
	nop ; not executed offset: 0000662C
	nop ; not executed offset: 0000662D
	nop ; not executed offset: 0000662E
	nop ; not executed offset: 0000662F
	nop ; not executed offset: 00006630
	nop ; not executed offset: 00006631
	nop ; not executed offset: 00006632
	nop ; not executed offset: 00006633
	nop ; not executed offset: 00006634
	nop ; not executed offset: 00006635
	nop ; not executed offset: 00006636
	nop ; not executed offset: 00006637
	nop ; not executed offset: 00006638
	nop ; not executed offset: 00006639
	nop ; not executed offset: 0000663A
	nop ; not executed offset: 0000663B
	nop ; not executed offset: 0000663C
	nop ; not executed offset: 0000663D
	nop ; not executed offset: 0000663E
	nop ; not executed offset: 0000663F
	nop ; not executed offset: 00006640
	nop ; not executed offset: 00006641
	nop ; not executed offset: 00006642
	nop ; not executed offset: 00006643
	nop ; not executed offset: 00006644
	nop ; not executed offset: 00006645
	nop ; not executed offset: 00006646
	nop ; not executed offset: 00006647
	nop ; not executed offset: 00006648
	nop ; not executed offset: 00006649
	nop ; not executed offset: 0000664A
	nop ; not executed offset: 0000664B
	nop ; not executed offset: 0000664C
	nop ; not executed offset: 0000664D
	nop ; not executed offset: 0000664E
	nop ; not executed offset: 0000664F
	nop ; not executed offset: 00006650
	nop ; not executed offset: 00006651
	nop ; not executed offset: 00006652
	nop ; not executed offset: 00006653
	nop ; not executed offset: 00006654
	nop ; not executed offset: 00006655
	nop ; not executed offset: 00006656
	nop ; not executed offset: 00006657
	nop ; not executed offset: 00006658
	nop ; not executed offset: 00006659
	nop ; not executed offset: 0000665A
	nop ; not executed offset: 0000665B
	nop ; not executed offset: 0000665C
	nop ; not executed offset: 0000665D
	nop ; not executed offset: 0000665E
	nop ; not executed offset: 0000665F
	nop ; not executed offset: 00006660
	nop ; not executed offset: 00006661
	nop ; not executed offset: 00006662
	nop ; not executed offset: 00006663
	nop ; not executed offset: 00006664
	nop ; not executed offset: 00006665
	nop ; not executed offset: 00006666
	nop ; not executed offset: 00006667
	nop ; not executed offset: 00006668
	nop ; not executed offset: 00006669
	nop ; not executed offset: 0000666A
	nop ; not executed offset: 0000666B
	nop ; not executed offset: 0000666C
	nop ; not executed offset: 0000666D
	nop ; not executed offset: 0000666E
	nop ; not executed offset: 0000666F
	nop ; not executed offset: 00006670
	nop ; not executed offset: 00006671
	nop ; not executed offset: 00006672
	nop ; not executed offset: 00006673
	nop ; not executed offset: 00006674
	nop ; not executed offset: 00006675
	nop ; not executed offset: 00006676
	nop ; not executed offset: 00006677
	nop ; not executed offset: 00006678
	nop ; not executed offset: 00006679
	nop ; not executed offset: 0000667A
	nop ; not executed offset: 0000667B
	nop ; not executed offset: 0000667C
	nop ; not executed offset: 0000667D
	nop ; not executed offset: 0000667E
	nop ; not executed offset: 0000667F
	nop ; not executed offset: 00006680
	nop ; not executed offset: 00006681
	nop ; not executed offset: 00006682
	nop ; not executed offset: 00006683
	nop ; not executed offset: 00006684
	nop ; not executed offset: 00006685
	nop ; not executed offset: 00006686
	nop ; not executed offset: 00006687
	nop ; not executed offset: 00006688
	nop ; not executed offset: 00006689
	nop ; not executed offset: 0000668A
	nop ; not executed offset: 0000668B
	nop ; not executed offset: 0000668C
	nop ; not executed offset: 0000668D
;stopped writing due to overlap with another section
.BANK 0001 SLOT 1
.ORGA $0000668E
; Called by: 0001::000063F0
	push hl ;0000668E
	push bc ;0000668F
	push de ;00006690
	ld hl, $DD03 ;00006691
	ld de, $DD04 ;00006694
	ld bc, $018C ;00006697
	ld (hl), $0000 ;0000669A
	LDIR ;0000669C
	pop de ;0000669E
	pop bc ;0000669F
	pop hl ;000066A0
;stopped writing due to overlap with another section
