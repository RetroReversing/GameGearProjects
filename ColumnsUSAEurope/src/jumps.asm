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
; Called by: 0000::00000CDE
; Called by: 0000::00001000
; Called by: 0000::00001015
; Called by: 0000::00001021
; Called by: 0000::000010B0
; Called by: 0000::000010D2
; Called by: 0000::00001106
; Called by: 0000::000013DA
; Called by: 0000::00001452
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
; Called by: 0000::000001FE
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
;stopped writing due to overlap with another section

.BANK 0000 SLOT 0
.ORGA $000002C8
; Called by: 0000::000001FE
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
; Called by: 0000::00000D0C
; Address Also defined as function

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
	jr c, LAB_0000_00000723 ;z_UNTAKEN_JUMP_2 ;0000071F
	ld d, $0000 ;00000721
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

.BANK 0000 SLOT 0
.ORGA $00000AC0
; Called by: 0000::00000D26
; Address Also defined as function

.BANK 0000 SLOT 0
.ORGA $00000AC2
; Called by: 0000::00000EED
; Address Also defined as function

.BANK 0000 SLOT 0
.ORGA $00000FAB
; Called by: 0000::000001FE
	call $0CD8 ;00000FAB
	ld a, $00A1 ;00000FAE
	ld ($DD04), a ;00000FB0
	call $0CE1 ;00000FB3
	call $0CF0 ;00000FB6
	ld hl, $41E9 ;00000FB9
	ld de, $0000 ;00000FBC
	call $0694 ;00000FBF
	ld hl, $41BA ;00000FC2
	ld de, $CD00 ;00000FC5
	call $06D1 ;00000FC8
	ld hl, $CD00 ;00000FCB
	ld de, $3AD8 ;00000FCE
	ld bc, $0312 ;00000FD1
	call $060B ;00000FD4
	ld hl, $41E1 ;00000FD7
	call $04E4 ;00000FDA
	ld a, $0002 ;00000FDD
	ld ($C014), a ;00000FDF
	xor a ;00000FE2
	ld ($C0A8), a ;00000FE3
	ld ($C0A7), a ;00000FE6
	ld ($C002), a ;00000FE9
	ei ;00000FEC
	ld a, $00FC ;00000FED
	out ($0002), a ;00000FEF
	ld a, $0001 ;00000FF1
	out ($0001), a ;00000FF3
	ld hl, $00F0 ;00000FF5
	ld ($C012), hl ;00000FF8
	ld a, $0001 ;00000FFB
	ld ($C018), a ;00000FFD
	jp $01FF ;00001000
;stopped writing due to overlap with another section

.BANK 0000 SLOT 0
.ORGA $00001003
; Called by: 0000::000001FE
	ld d, $0008 ;00001003
	call $0C1D ;00001005
	ld a, ($C00D) ;00001008
	and $0080 ;0000100B
	z_UNTAKEN_JUMP_2 ;0000100D
	call $022F ;0000100F
	jp nz, $01FF ;z_UNTAKEN_JUMP_3 ;00001012
	call $0506 ;00001015
	xor a ;00001018
	ld ($C0A4), a ;00001019
	ld a, $0002 ;0000101C
	ld ($C018), a ;0000101E
	jp $01FF ;00001021
;stopped writing due to overlap with another section

.BANK 0000 SLOT 0
.ORGA $00001024
; Called by: 0000::000001FE
	call $0CD8 ;00001024
	call $0EDC ;00001027
	call $0CE1 ;0000102A
	call $0CF0 ;0000102D
	call $0D04 ;00001030
	ld hl, $3D79 ;00001033
	ld de, $32A0 ;00001036
	ld a, $000E ;00001039
	call $070B ;0000103B
	ld de, $0000 ;0000103E
	ld hl, $4377 ;00001041
	call $0694 ;00001044
	ld de, $CD00 ;00001047
	ld hl, $503E ;0000104A
	call $06D1 ;0000104D
	ld hl, $CD00 ;00001050
	ld de, $390C ;00001053
	ld bc, $0828 ;00001056
	call $060B ;00001059
	xor a ;0000105C
	ld de, $3B4E ;0000105D
	call $216B ;00001060
	ld a, $0001 ;00001063
	ld de, $3BDA ;00001065
	call $216B ;00001068
	ld a, $0002 ;0000106B
	ld de, $3C5C ;0000106D
	call $216B ;00001070
	ld a, $0004 ;00001073
	ld de, $3D1E ;00001075
	call $216B ;00001078
	ld hl, $3D37 ;0000107B
	call $0652 ;0000107E
	ld hl, $4335 ;00001081
	call $04E4 ;00001084
	xor a ;00001087
	ld ($D000), a ;00001088
	ld ($C00B), a ;0000108B
	ld hl, $2C80 ;0000108E
	ld ($C100), hl ;00001091
	ld hl, $2CC7 ;00001094
	ld ($C120), hl ;00001097
	ld a, $0002 ;0000109A
	ld ($C014), a ;0000109C
	ei ;0000109F
	ld a, $0081 ;000010A0
	ld ($DD04), a ;000010A2
	ld hl, $0258 ;000010A5
	ld ($C012), hl ;000010A8
	ld a, $0003 ;000010AB
	ld ($C018), a ;000010AD
	jp $01FF ;000010B0
;stopped writing due to overlap with another section

.BANK 0000 SLOT 0
.ORGA $000010B3
; Called by: 0000::000001FE
	ld d, $0008 ;000010B3
	call $0C1D ;000010B5
	ld hl, ($C012) ;000010B8
	ld a, l ;000010BB
	or h ;000010BC
	z_UNTAKEN_JUMP_2 ;000010BD
	ld a, ($C00D) ;000010BF
	and $0080 ;000010C2
	jr nz, LAB_0000_000010EE ;z_UNTAKEN_JUMP_2 ;000010C4
	call $04C6 ;000010C6
	call $1D60 ;000010C9
	call $022F ;000010CC
	jp nz, $01FF ;000010CF
	nop ; not executed offset: 000010D2
	nop ; not executed offset: 000010D3
	nop ; not executed offset: 000010D4
	nop ; not executed offset: 000010D5
	nop ; not executed offset: 000010D6
	nop ; not executed offset: 000010D7
	nop ; not executed offset: 000010D8
	nop ; not executed offset: 000010D9
	nop ; not executed offset: 000010DA
	nop ; not executed offset: 000010DB
	nop ; not executed offset: 000010DC
	nop ; not executed offset: 000010DD
	nop ; not executed offset: 000010DE
	nop ; not executed offset: 000010DF
	nop ; not executed offset: 000010E0
	nop ; not executed offset: 000010E1
	nop ; not executed offset: 000010E2
	nop ; not executed offset: 000010E3
	nop ; not executed offset: 000010E4
	nop ; not executed offset: 000010E5
	nop ; not executed offset: 000010E6
	nop ; not executed offset: 000010E7
	nop ; not executed offset: 000010E8
	nop ; not executed offset: 000010E9
	nop ; not executed offset: 000010EA
	nop ; not executed offset: 000010EB
	nop ; not executed offset: 000010EC
	nop ; not executed offset: 000010ED
LAB_0000_000010EE:
	ld a, ($C10E) ;000010EE
	or a ;000010F1
	z_UNTAKEN_JUMP_2 ;000010F2
	add a, a ;000010F4
	ld ($C005), a ;000010F5
	ld a, $0001 ;000010F8
	ld ($C00B), a ;000010FA
	ld a, $00FF ;000010FD
	out ($0002), a ;000010FF
	ld a, $0006 ;00001101
	ld ($C018), a ;00001103
	jp $01FF ;00001106
	nop ; not executed offset: 00001109
	nop ; not executed offset: 0000110A
	nop ; not executed offset: 0000110B
	nop ; not executed offset: 0000110C
	nop ; not executed offset: 0000110D
	nop ; not executed offset: 0000110E
	nop ; not executed offset: 0000110F
	nop ; not executed offset: 00001110
	nop ; not executed offset: 00001111
	nop ; not executed offset: 00001112
	nop ; not executed offset: 00001113
	nop ; not executed offset: 00001114
	nop ; not executed offset: 00001115
	nop ; not executed offset: 00001116
	nop ; not executed offset: 00001117
	nop ; not executed offset: 00001118
	nop ; not executed offset: 00001119
	nop ; not executed offset: 0000111A
	nop ; not executed offset: 0000111B
	nop ; not executed offset: 0000111C
	nop ; not executed offset: 0000111D
	nop ; not executed offset: 0000111E
	nop ; not executed offset: 0000111F
	nop ; not executed offset: 00001120
	nop ; not executed offset: 00001121
	nop ; not executed offset: 00001122
	nop ; not executed offset: 00001123
	nop ; not executed offset: 00001124
	nop ; not executed offset: 00001125
	nop ; not executed offset: 00001126
	nop ; not executed offset: 00001127
	nop ; not executed offset: 00001128
	nop ; not executed offset: 00001129
	nop ; not executed offset: 0000112A
	nop ; not executed offset: 0000112B
	nop ; not executed offset: 0000112C
	nop ; not executed offset: 0000112D
	nop ; not executed offset: 0000112E
	nop ; not executed offset: 0000112F
	nop ; not executed offset: 00001130
	nop ; not executed offset: 00001131
	nop ; not executed offset: 00001132
	nop ; not executed offset: 00001133
	nop ; not executed offset: 00001134
	nop ; not executed offset: 00001135
	nop ; not executed offset: 00001136
	nop ; not executed offset: 00001137
	nop ; not executed offset: 00001138
	nop ; not executed offset: 00001139
	nop ; not executed offset: 0000113A
	nop ; not executed offset: 0000113B
	nop ; not executed offset: 0000113C
	nop ; not executed offset: 0000113D
	nop ; not executed offset: 0000113E
	nop ; not executed offset: 0000113F
	nop ; not executed offset: 00001140
	nop ; not executed offset: 00001141
	nop ; not executed offset: 00001142
	nop ; not executed offset: 00001143
	nop ; not executed offset: 00001144
	nop ; not executed offset: 00001145
	nop ; not executed offset: 00001146
	nop ; not executed offset: 00001147
	nop ; not executed offset: 00001148
	nop ; not executed offset: 00001149
	nop ; not executed offset: 0000114A
	nop ; not executed offset: 0000114B
	nop ; not executed offset: 0000114C
	nop ; not executed offset: 0000114D
	nop ; not executed offset: 0000114E
	nop ; not executed offset: 0000114F
	nop ; not executed offset: 00001150
	nop ; not executed offset: 00001151
	nop ; not executed offset: 00001152
	nop ; not executed offset: 00001153
	nop ; not executed offset: 00001154
	nop ; not executed offset: 00001155
	nop ; not executed offset: 00001156
	nop ; not executed offset: 00001157
	nop ; not executed offset: 00001158
	nop ; not executed offset: 00001159
	nop ; not executed offset: 0000115A
	nop ; not executed offset: 0000115B
	nop ; not executed offset: 0000115C
	nop ; not executed offset: 0000115D
	nop ; not executed offset: 0000115E
	nop ; not executed offset: 0000115F
	nop ; not executed offset: 00001160
	nop ; not executed offset: 00001161
	nop ; not executed offset: 00001162
	nop ; not executed offset: 00001163
	nop ; not executed offset: 00001164
	nop ; not executed offset: 00001165
	nop ; not executed offset: 00001166
	nop ; not executed offset: 00001167
	nop ; not executed offset: 00001168
	nop ; not executed offset: 00001169
	nop ; not executed offset: 0000116A
	nop ; not executed offset: 0000116B
	nop ; not executed offset: 0000116C
	nop ; not executed offset: 0000116D
	nop ; not executed offset: 0000116E
	nop ; not executed offset: 0000116F
	nop ; not executed offset: 00001170
	nop ; not executed offset: 00001171
	nop ; not executed offset: 00001172
	nop ; not executed offset: 00001173
	nop ; not executed offset: 00001174
	nop ; not executed offset: 00001175
	nop ; not executed offset: 00001176
	nop ; not executed offset: 00001177
	nop ; not executed offset: 00001178
	nop ; not executed offset: 00001179
	nop ; not executed offset: 0000117A
	nop ; not executed offset: 0000117B
	nop ; not executed offset: 0000117C
	nop ; not executed offset: 0000117D
	nop ; not executed offset: 0000117E
	nop ; not executed offset: 0000117F
	nop ; not executed offset: 00001180
	nop ; not executed offset: 00001181
	nop ; not executed offset: 00001182
	nop ; not executed offset: 00001183
	nop ; not executed offset: 00001184
	nop ; not executed offset: 00001185
	nop ; not executed offset: 00001186
	nop ; not executed offset: 00001187
	nop ; not executed offset: 00001188
	nop ; not executed offset: 00001189
	nop ; not executed offset: 0000118A
	nop ; not executed offset: 0000118B
	nop ; not executed offset: 0000118C
	nop ; not executed offset: 0000118D
	nop ; not executed offset: 0000118E
	nop ; not executed offset: 0000118F
	nop ; not executed offset: 00001190
	nop ; not executed offset: 00001191
	nop ; not executed offset: 00001192
	nop ; not executed offset: 00001193
	nop ; not executed offset: 00001194
	nop ; not executed offset: 00001195
	nop ; not executed offset: 00001196
	nop ; not executed offset: 00001197
	nop ; not executed offset: 00001198
	nop ; not executed offset: 00001199
	nop ; not executed offset: 0000119A
	nop ; not executed offset: 0000119B
	nop ; not executed offset: 0000119C
	nop ; not executed offset: 0000119D
	nop ; not executed offset: 0000119E
	nop ; not executed offset: 0000119F
	nop ; not executed offset: 000011A0
	nop ; not executed offset: 000011A1
	nop ; not executed offset: 000011A2
	nop ; not executed offset: 000011A3
	nop ; not executed offset: 000011A4
	nop ; not executed offset: 000011A5
	nop ; not executed offset: 000011A6
	nop ; not executed offset: 000011A7
	nop ; not executed offset: 000011A8
	nop ; not executed offset: 000011A9
	nop ; not executed offset: 000011AA
	nop ; not executed offset: 000011AB
	nop ; not executed offset: 000011AC
	nop ; not executed offset: 000011AD
	nop ; not executed offset: 000011AE
	nop ; not executed offset: 000011AF
	nop ; not executed offset: 000011B0
	nop ; not executed offset: 000011B1
	nop ; not executed offset: 000011B2
	nop ; not executed offset: 000011B3
	nop ; not executed offset: 000011B4
	nop ; not executed offset: 000011B5
	nop ; not executed offset: 000011B6
	nop ; not executed offset: 000011B7
	nop ; not executed offset: 000011B8
	nop ; not executed offset: 000011B9
	nop ; not executed offset: 000011BA
	nop ; not executed offset: 000011BB
	nop ; not executed offset: 000011BC
	nop ; not executed offset: 000011BD
	nop ; not executed offset: 000011BE
	nop ; not executed offset: 000011BF
	nop ; not executed offset: 000011C0
	nop ; not executed offset: 000011C1
	nop ; not executed offset: 000011C2
	nop ; not executed offset: 000011C3
	nop ; not executed offset: 000011C4
	nop ; not executed offset: 000011C5
	nop ; not executed offset: 000011C6
	nop ; not executed offset: 000011C7
	nop ; not executed offset: 000011C8
	nop ; not executed offset: 000011C9
	nop ; not executed offset: 000011CA
	nop ; not executed offset: 000011CB
	nop ; not executed offset: 000011CC
	nop ; not executed offset: 000011CD
	nop ; not executed offset: 000011CE
	nop ; not executed offset: 000011CF
	nop ; not executed offset: 000011D0
	nop ; not executed offset: 000011D1
	nop ; not executed offset: 000011D2
	nop ; not executed offset: 000011D3
	nop ; not executed offset: 000011D4
	nop ; not executed offset: 000011D5
	nop ; not executed offset: 000011D6
	nop ; not executed offset: 000011D7
	nop ; not executed offset: 000011D8
	nop ; not executed offset: 000011D9
	nop ; not executed offset: 000011DA
	nop ; not executed offset: 000011DB
	nop ; not executed offset: 000011DC
	nop ; not executed offset: 000011DD
	nop ; not executed offset: 000011DE
	nop ; not executed offset: 000011DF
	nop ; not executed offset: 000011E0
	nop ; not executed offset: 000011E1
	nop ; not executed offset: 000011E2
	nop ; not executed offset: 000011E3
	nop ; not executed offset: 000011E4
	nop ; not executed offset: 000011E5
	nop ; not executed offset: 000011E6
	nop ; not executed offset: 000011E7
	nop ; not executed offset: 000011E8
	nop ; not executed offset: 000011E9
	nop ; not executed offset: 000011EA
	nop ; not executed offset: 000011EB
	nop ; not executed offset: 000011EC
	nop ; not executed offset: 000011ED
	nop ; not executed offset: 000011EE
	nop ; not executed offset: 000011EF
	nop ; not executed offset: 000011F0
	nop ; not executed offset: 000011F1
	nop ; not executed offset: 000011F2
	nop ; not executed offset: 000011F3
	nop ; not executed offset: 000011F4
	nop ; not executed offset: 000011F5
	nop ; not executed offset: 000011F6
	nop ; not executed offset: 000011F7
	nop ; not executed offset: 000011F8
	nop ; not executed offset: 000011F9
	nop ; not executed offset: 000011FA
	nop ; not executed offset: 000011FB
	nop ; not executed offset: 000011FC
	nop ; not executed offset: 000011FD
	nop ; not executed offset: 000011FE
	nop ; not executed offset: 000011FF
	nop ; not executed offset: 00001200
	nop ; not executed offset: 00001201
	nop ; not executed offset: 00001202
	nop ; not executed offset: 00001203
	nop ; not executed offset: 00001204
	nop ; not executed offset: 00001205
	nop ; not executed offset: 00001206
	nop ; not executed offset: 00001207
	nop ; not executed offset: 00001208
	nop ; not executed offset: 00001209
	nop ; not executed offset: 0000120A
	nop ; not executed offset: 0000120B
	nop ; not executed offset: 0000120C
	nop ; not executed offset: 0000120D
	nop ; not executed offset: 0000120E
	nop ; not executed offset: 0000120F
	nop ; not executed offset: 00001210
	nop ; not executed offset: 00001211
	nop ; not executed offset: 00001212
	nop ; not executed offset: 00001213
	nop ; not executed offset: 00001214
	nop ; not executed offset: 00001215
	nop ; not executed offset: 00001216
	nop ; not executed offset: 00001217
	nop ; not executed offset: 00001218
	nop ; not executed offset: 00001219
	nop ; not executed offset: 0000121A
	nop ; not executed offset: 0000121B
	nop ; not executed offset: 0000121C
	nop ; not executed offset: 0000121D
	nop ; not executed offset: 0000121E
	nop ; not executed offset: 0000121F
	nop ; not executed offset: 00001220
	nop ; not executed offset: 00001221
	nop ; not executed offset: 00001222
	nop ; not executed offset: 00001223
	nop ; not executed offset: 00001224
	nop ; not executed offset: 00001225
	nop ; not executed offset: 00001226
	nop ; not executed offset: 00001227
	nop ; not executed offset: 00001228
	nop ; not executed offset: 00001229
	nop ; not executed offset: 0000122A
	nop ; not executed offset: 0000122B
	nop ; not executed offset: 0000122C
	nop ; not executed offset: 0000122D
	nop ; not executed offset: 0000122E
	nop ; not executed offset: 0000122F
	nop ; not executed offset: 00001230
	nop ; not executed offset: 00001231
	nop ; not executed offset: 00001232
	nop ; not executed offset: 00001233
	nop ; not executed offset: 00001234
	nop ; not executed offset: 00001235
	nop ; not executed offset: 00001236
	nop ; not executed offset: 00001237
	nop ; not executed offset: 00001238
	nop ; not executed offset: 00001239
	nop ; not executed offset: 0000123A
	nop ; not executed offset: 0000123B
	nop ; not executed offset: 0000123C
	nop ; not executed offset: 0000123D
	nop ; not executed offset: 0000123E
	nop ; not executed offset: 0000123F
	nop ; not executed offset: 00001240
	nop ; not executed offset: 00001241
	nop ; not executed offset: 00001242
	nop ; not executed offset: 00001243
	nop ; not executed offset: 00001244
	nop ; not executed offset: 00001245
	nop ; not executed offset: 00001246
	nop ; not executed offset: 00001247
	nop ; not executed offset: 00001248
	nop ; not executed offset: 00001249
	nop ; not executed offset: 0000124A
	nop ; not executed offset: 0000124B
	nop ; not executed offset: 0000124C
	nop ; not executed offset: 0000124D
	nop ; not executed offset: 0000124E
	nop ; not executed offset: 0000124F
	nop ; not executed offset: 00001250
	nop ; not executed offset: 00001251
	nop ; not executed offset: 00001252
	nop ; not executed offset: 00001253
	nop ; not executed offset: 00001254
	nop ; not executed offset: 00001255
	nop ; not executed offset: 00001256
	nop ; not executed offset: 00001257
	nop ; not executed offset: 00001258
	nop ; not executed offset: 00001259
	nop ; not executed offset: 0000125A
	nop ; not executed offset: 0000125B
	nop ; not executed offset: 0000125C
	nop ; not executed offset: 0000125D
	nop ; not executed offset: 0000125E
	nop ; not executed offset: 0000125F
	nop ; not executed offset: 00001260
	nop ; not executed offset: 00001261
	nop ; not executed offset: 00001262
	nop ; not executed offset: 00001263
	nop ; not executed offset: 00001264
	nop ; not executed offset: 00001265
	nop ; not executed offset: 00001266
	nop ; not executed offset: 00001267
	nop ; not executed offset: 00001268
	nop ; not executed offset: 00001269
	nop ; not executed offset: 0000126A
	nop ; not executed offset: 0000126B
	nop ; not executed offset: 0000126C
	nop ; not executed offset: 0000126D
	nop ; not executed offset: 0000126E
	nop ; not executed offset: 0000126F
	nop ; not executed offset: 00001270
	nop ; not executed offset: 00001271
	nop ; not executed offset: 00001272
	nop ; not executed offset: 00001273
	nop ; not executed offset: 00001274
	nop ; not executed offset: 00001275
	nop ; not executed offset: 00001276
	nop ; not executed offset: 00001277
	nop ; not executed offset: 00001278
	nop ; not executed offset: 00001279
	nop ; not executed offset: 0000127A
	nop ; not executed offset: 0000127B
	nop ; not executed offset: 0000127C
	nop ; not executed offset: 0000127D
	nop ; not executed offset: 0000127E
	nop ; not executed offset: 0000127F
	nop ; not executed offset: 00001280
	nop ; not executed offset: 00001281
	nop ; not executed offset: 00001282
	nop ; not executed offset: 00001283
	nop ; not executed offset: 00001284
	nop ; not executed offset: 00001285
	nop ; not executed offset: 00001286
	nop ; not executed offset: 00001287
	nop ; not executed offset: 00001288
	nop ; not executed offset: 00001289
	nop ; not executed offset: 0000128A
	nop ; not executed offset: 0000128B
	nop ; not executed offset: 0000128C
	nop ; not executed offset: 0000128D
	nop ; not executed offset: 0000128E
	nop ; not executed offset: 0000128F
	nop ; not executed offset: 00001290
	nop ; not executed offset: 00001291
	nop ; not executed offset: 00001292
	nop ; not executed offset: 00001293
	nop ; not executed offset: 00001294
	nop ; not executed offset: 00001295
	nop ; not executed offset: 00001296
	nop ; not executed offset: 00001297
	nop ; not executed offset: 00001298
	nop ; not executed offset: 00001299
	nop ; not executed offset: 0000129A
	nop ; not executed offset: 0000129B
	nop ; not executed offset: 0000129C
	nop ; not executed offset: 0000129D
	nop ; not executed offset: 0000129E
	nop ; not executed offset: 0000129F
	nop ; not executed offset: 000012A0
	nop ; not executed offset: 000012A1
	nop ; not executed offset: 000012A2
	nop ; not executed offset: 000012A3
	nop ; not executed offset: 000012A4
	nop ; not executed offset: 000012A5
	nop ; not executed offset: 000012A6
	nop ; not executed offset: 000012A7
	nop ; not executed offset: 000012A8
	nop ; not executed offset: 000012A9
	nop ; not executed offset: 000012AA
	nop ; not executed offset: 000012AB
	nop ; not executed offset: 000012AC
	nop ; not executed offset: 000012AD
	nop ; not executed offset: 000012AE
	nop ; not executed offset: 000012AF
	nop ; not executed offset: 000012B0
	nop ; not executed offset: 000012B1
	nop ; not executed offset: 000012B2
	nop ; not executed offset: 000012B3
	nop ; not executed offset: 000012B4
	nop ; not executed offset: 000012B5
	nop ; not executed offset: 000012B6
	nop ; not executed offset: 000012B7
	nop ; not executed offset: 000012B8
	nop ; not executed offset: 000012B9
	nop ; not executed offset: 000012BA
	nop ; not executed offset: 000012BB
	nop ; not executed offset: 000012BC
	nop ; not executed offset: 000012BD
	nop ; not executed offset: 000012BE
	nop ; not executed offset: 000012BF
	nop ; not executed offset: 000012C0
	nop ; not executed offset: 000012C1
	nop ; not executed offset: 000012C2
	nop ; not executed offset: 000012C3
	nop ; not executed offset: 000012C4
	nop ; not executed offset: 000012C5
	nop ; not executed offset: 000012C6
	nop ; not executed offset: 000012C7
	nop ; not executed offset: 000012C8
	nop ; not executed offset: 000012C9
	nop ; not executed offset: 000012CA
	nop ; not executed offset: 000012CB
	nop ; not executed offset: 000012CC
	nop ; not executed offset: 000012CD
	nop ; not executed offset: 000012CE
	nop ; not executed offset: 000012CF
	nop ; not executed offset: 000012D0
	nop ; not executed offset: 000012D1
	nop ; not executed offset: 000012D2
	nop ; not executed offset: 000012D3
	nop ; not executed offset: 000012D4
	nop ; not executed offset: 000012D5
	nop ; not executed offset: 000012D6
	nop ; not executed offset: 000012D7
	nop ; not executed offset: 000012D8
	nop ; not executed offset: 000012D9
	nop ; not executed offset: 000012DA
	nop ; not executed offset: 000012DB
	nop ; not executed offset: 000012DC
	nop ; not executed offset: 000012DD
	nop ; not executed offset: 000012DE
	nop ; not executed offset: 000012DF
	nop ; not executed offset: 000012E0
	nop ; not executed offset: 000012E1
	nop ; not executed offset: 000012E2
	nop ; not executed offset: 000012E3
	nop ; not executed offset: 000012E4
	nop ; not executed offset: 000012E5
	nop ; not executed offset: 000012E6
	nop ; not executed offset: 000012E7
	nop ; not executed offset: 000012E8
	nop ; not executed offset: 000012E9
	nop ; not executed offset: 000012EA
	nop ; not executed offset: 000012EB
	nop ; not executed offset: 000012EC
	nop ; not executed offset: 000012ED
	nop ; not executed offset: 000012EE
	nop ; not executed offset: 000012EF
	nop ; not executed offset: 000012F0
	nop ; not executed offset: 000012F1
	nop ; not executed offset: 000012F2
	nop ; not executed offset: 000012F3
	nop ; not executed offset: 000012F4
	nop ; not executed offset: 000012F5
	nop ; not executed offset: 000012F6
	nop ; not executed offset: 000012F7
	nop ; not executed offset: 000012F8
	nop ; not executed offset: 000012F9
	nop ; not executed offset: 000012FA
	nop ; not executed offset: 000012FB
	nop ; not executed offset: 000012FC
	nop ; not executed offset: 000012FD
	nop ; not executed offset: 000012FE
	nop ; not executed offset: 000012FF
	nop ; not executed offset: 00001300
	nop ; not executed offset: 00001301
	nop ; not executed offset: 00001302
	nop ; not executed offset: 00001303
	nop ; not executed offset: 00001304
	nop ; not executed offset: 00001305
	nop ; not executed offset: 00001306
	nop ; not executed offset: 00001307
	nop ; not executed offset: 00001308
	nop ; not executed offset: 00001309
	nop ; not executed offset: 0000130A
	nop ; not executed offset: 0000130B
	nop ; not executed offset: 0000130C
	nop ; not executed offset: 0000130D
	nop ; not executed offset: 0000130E
	nop ; not executed offset: 0000130F
	nop ; not executed offset: 00001310
	nop ; not executed offset: 00001311
	nop ; not executed offset: 00001312
	nop ; not executed offset: 00001313
	nop ; not executed offset: 00001314
	nop ; not executed offset: 00001315
	nop ; not executed offset: 00001316
	nop ; not executed offset: 00001317
	nop ; not executed offset: 00001318
	nop ; not executed offset: 00001319
	nop ; not executed offset: 0000131A
	nop ; not executed offset: 0000131B
	nop ; not executed offset: 0000131C
	nop ; not executed offset: 0000131D
	nop ; not executed offset: 0000131E
	nop ; not executed offset: 0000131F
	nop ; not executed offset: 00001320
	nop ; not executed offset: 00001321
	nop ; not executed offset: 00001322
	nop ; not executed offset: 00001323
	nop ; not executed offset: 00001324
	nop ; not executed offset: 00001325
	nop ; not executed offset: 00001326
	nop ; not executed offset: 00001327
	nop ; not executed offset: 00001328
	nop ; not executed offset: 00001329
	nop ; not executed offset: 0000132A
	nop ; not executed offset: 0000132B
	nop ; not executed offset: 0000132C
	nop ; not executed offset: 0000132D
	nop ; not executed offset: 0000132E
	nop ; not executed offset: 0000132F
	nop ; not executed offset: 00001330
	nop ; not executed offset: 00001331
	nop ; not executed offset: 00001332
	nop ; not executed offset: 00001333
	nop ; not executed offset: 00001334
	nop ; not executed offset: 00001335
	nop ; not executed offset: 00001336
	nop ; not executed offset: 00001337
	nop ; not executed offset: 00001338
	nop ; not executed offset: 00001339
	nop ; not executed offset: 0000133A
	nop ; not executed offset: 0000133B
	nop ; not executed offset: 0000133C
	nop ; not executed offset: 0000133D
	nop ; not executed offset: 0000133E
	nop ; not executed offset: 0000133F
	nop ; not executed offset: 00001340
	nop ; not executed offset: 00001341
	nop ; not executed offset: 00001342
	nop ; not executed offset: 00001343
	nop ; not executed offset: 00001344
	nop ; not executed offset: 00001345
	nop ; not executed offset: 00001346
	nop ; not executed offset: 00001347
	nop ; not executed offset: 00001348
	nop ; not executed offset: 00001349
	nop ; not executed offset: 0000134A
	nop ; not executed offset: 0000134B
	nop ; not executed offset: 0000134C
	nop ; not executed offset: 0000134D
	nop ; not executed offset: 0000134E
	nop ; not executed offset: 0000134F
	nop ; not executed offset: 00001350
	nop ; not executed offset: 00001351
	nop ; not executed offset: 00001352
	nop ; not executed offset: 00001353
	nop ; not executed offset: 00001354
	nop ; not executed offset: 00001355
	nop ; not executed offset: 00001356
	nop ; not executed offset: 00001357
	nop ; not executed offset: 00001358
	nop ; not executed offset: 00001359
	nop ; not executed offset: 0000135A
	nop ; not executed offset: 0000135B
	nop ; not executed offset: 0000135C
	nop ; not executed offset: 0000135D
	nop ; not executed offset: 0000135E
	nop ; not executed offset: 0000135F
	nop ; not executed offset: 00001360
	nop ; not executed offset: 00001361
	nop ; not executed offset: 00001362
	nop ; not executed offset: 00001363
	nop ; not executed offset: 00001364
	nop ; not executed offset: 00001365
	nop ; not executed offset: 00001366
	nop ; not executed offset: 00001367
	nop ; not executed offset: 00001368
	nop ; not executed offset: 00001369
	nop ; not executed offset: 0000136A
	nop ; not executed offset: 0000136B
	nop ; not executed offset: 0000136C
	nop ; not executed offset: 0000136D
	nop ; not executed offset: 0000136E
	nop ; not executed offset: 0000136F
	nop ; not executed offset: 00001370
	nop ; not executed offset: 00001371
	nop ; not executed offset: 00001372
	nop ; not executed offset: 00001373
	nop ; not executed offset: 00001374
	nop ; not executed offset: 00001375
	nop ; not executed offset: 00001376
	nop ; not executed offset: 00001377
	nop ; not executed offset: 00001378
	nop ; not executed offset: 00001379
	nop ; not executed offset: 0000137A
	nop ; not executed offset: 0000137B
	nop ; not executed offset: 0000137C
	nop ; not executed offset: 0000137D
	nop ; not executed offset: 0000137E
	nop ; not executed offset: 0000137F
	nop ; not executed offset: 00001380
	nop ; not executed offset: 00001381
	nop ; not executed offset: 00001382
	nop ; not executed offset: 00001383
	nop ; not executed offset: 00001384
	nop ; not executed offset: 00001385
	nop ; not executed offset: 00001386
	nop ; not executed offset: 00001387
	nop ; not executed offset: 00001388
	nop ; not executed offset: 00001389
	nop ; not executed offset: 0000138A
	nop ; not executed offset: 0000138B
	nop ; not executed offset: 0000138C
	nop ; not executed offset: 0000138D
	nop ; not executed offset: 0000138E
	nop ; not executed offset: 0000138F
	nop ; not executed offset: 00001390
	nop ; not executed offset: 00001391
	nop ; not executed offset: 00001392
	nop ; not executed offset: 00001393
	nop ; not executed offset: 00001394
	nop ; not executed offset: 00001395
	nop ; not executed offset: 00001396
	nop ; not executed offset: 00001397
	nop ; not executed offset: 00001398
	nop ; not executed offset: 00001399
;stopped writing due to overlap with another section

.BANK 0000 SLOT 0
.ORGA $0000139A
; Called by: 0000::000001FE
	ld d, $0008 ;0000139A
	call $0CCA ;0000139C
	call $0C55 ;0000139F
	call $05AD ;000013A2
	call $0D0F ;000013A5
	ld a, $0005 ;000013A8
	ld de, $CD0A ;000013AA
	call $2183 ;000013AD
	ld a, $0006 ;000013B0
	ld de, $CD5E ;000013B2
	call $2183 ;000013B5
	ld a, $0007 ;000013B8
	ld de, $CDB0 ;000013BA
	call $2183 ;000013BD
	ld hl, $2CED ;000013C0
	ld ($C100), hl ;000013C3
	call $01FF ;000013C6
	ld de, $3B4C ;000013C9
	ld hl, $CD00 ;000013CC
	ld bc, $0728 ;000013CF
	call $0620 ;000013D2
	ld a, $0008 ;000013D5
	ld ($C018), a ;000013D7
	jp $01FF ;000013DA
	nop ; not executed offset: 000013DD
	nop ; not executed offset: 000013DE
	nop ; not executed offset: 000013DF
	nop ; not executed offset: 000013E0
	nop ; not executed offset: 000013E1
	nop ; not executed offset: 000013E2
	nop ; not executed offset: 000013E3
	nop ; not executed offset: 000013E4
	nop ; not executed offset: 000013E5
	nop ; not executed offset: 000013E6
	nop ; not executed offset: 000013E7
	nop ; not executed offset: 000013E8
	nop ; not executed offset: 000013E9
	nop ; not executed offset: 000013EA
	nop ; not executed offset: 000013EB
	nop ; not executed offset: 000013EC
	nop ; not executed offset: 000013ED
	nop ; not executed offset: 000013EE
	nop ; not executed offset: 000013EF
	nop ; not executed offset: 000013F0
	nop ; not executed offset: 000013F1
	nop ; not executed offset: 000013F2
	nop ; not executed offset: 000013F3
	nop ; not executed offset: 000013F4
	nop ; not executed offset: 000013F5
	nop ; not executed offset: 000013F6
	nop ; not executed offset: 000013F7
	nop ; not executed offset: 000013F8
	nop ; not executed offset: 000013F9
	nop ; not executed offset: 000013FA
	nop ; not executed offset: 000013FB
	nop ; not executed offset: 000013FC
	nop ; not executed offset: 000013FD
	nop ; not executed offset: 000013FE
	nop ; not executed offset: 000013FF
	nop ; not executed offset: 00001400
	nop ; not executed offset: 00001401
	nop ; not executed offset: 00001402
	nop ; not executed offset: 00001403
	nop ; not executed offset: 00001404
	nop ; not executed offset: 00001405
	nop ; not executed offset: 00001406
	nop ; not executed offset: 00001407
	nop ; not executed offset: 00001408
	nop ; not executed offset: 00001409
	nop ; not executed offset: 0000140A
	nop ; not executed offset: 0000140B
	nop ; not executed offset: 0000140C
	nop ; not executed offset: 0000140D
	nop ; not executed offset: 0000140E
	nop ; not executed offset: 0000140F
	nop ; not executed offset: 00001410
	nop ; not executed offset: 00001411
	nop ; not executed offset: 00001412
	nop ; not executed offset: 00001413
	nop ; not executed offset: 00001414
	nop ; not executed offset: 00001415
	nop ; not executed offset: 00001416
	nop ; not executed offset: 00001417
	nop ; not executed offset: 00001418
	nop ; not executed offset: 00001419
	nop ; not executed offset: 0000141A
	nop ; not executed offset: 0000141B
	nop ; not executed offset: 0000141C
	nop ; not executed offset: 0000141D
	nop ; not executed offset: 0000141E
	nop ; not executed offset: 0000141F
	nop ; not executed offset: 00001420
	nop ; not executed offset: 00001421
	nop ; not executed offset: 00001422
	nop ; not executed offset: 00001423
	nop ; not executed offset: 00001424
	nop ; not executed offset: 00001425
	nop ; not executed offset: 00001426
	nop ; not executed offset: 00001427
	nop ; not executed offset: 00001428
	nop ; not executed offset: 00001429
	nop ; not executed offset: 0000142A
	nop ; not executed offset: 0000142B
	nop ; not executed offset: 0000142C
	nop ; not executed offset: 0000142D
	nop ; not executed offset: 0000142E
	nop ; not executed offset: 0000142F
	nop ; not executed offset: 00001430
	nop ; not executed offset: 00001431
	nop ; not executed offset: 00001432
	nop ; not executed offset: 00001433
	nop ; not executed offset: 00001434
	nop ; not executed offset: 00001435
	nop ; not executed offset: 00001436
	nop ; not executed offset: 00001437
	nop ; not executed offset: 00001438
	nop ; not executed offset: 00001439
	nop ; not executed offset: 0000143A
	nop ; not executed offset: 0000143B
	nop ; not executed offset: 0000143C
	nop ; not executed offset: 0000143D
	nop ; not executed offset: 0000143E
;stopped writing due to overlap with another section

.BANK 0000 SLOT 0
.ORGA $0000143F
; Called by: 0000::000001FE
	ld a, ($C00B) ;0000143F
	or a ;00001442
	z_UNTAKEN_JUMP_2 ;00001443
	ld a, ($C00D) ;00001445
	and $00B0 ;00001448
	z_UNTAKEN_JUMP_2 ;0000144A
	call $04C6 ;0000144C
	call $1D60 ;0000144F
	jp $01FF ;00001452
	nop ; not executed offset: 00001455
	nop ; not executed offset: 00001456
	nop ; not executed offset: 00001457
	nop ; not executed offset: 00001458
	nop ; not executed offset: 00001459
	nop ; not executed offset: 0000145A
	nop ; not executed offset: 0000145B
	nop ; not executed offset: 0000145C
	nop ; not executed offset: 0000145D
	nop ; not executed offset: 0000145E
	nop ; not executed offset: 0000145F
	nop ; not executed offset: 00001460
	nop ; not executed offset: 00001461
	nop ; not executed offset: 00001462
	nop ; not executed offset: 00001463
	nop ; not executed offset: 00001464
	nop ; not executed offset: 00001465
	nop ; not executed offset: 00001466
	nop ; not executed offset: 00001467
	nop ; not executed offset: 00001468
	nop ; not executed offset: 00001469
	nop ; not executed offset: 0000146A
	nop ; not executed offset: 0000146B
	nop ; not executed offset: 0000146C
	nop ; not executed offset: 0000146D
	nop ; not executed offset: 0000146E
	nop ; not executed offset: 0000146F
	nop ; not executed offset: 00001470
	nop ; not executed offset: 00001471
	nop ; not executed offset: 00001472
	nop ; not executed offset: 00001473
	nop ; not executed offset: 00001474
	nop ; not executed offset: 00001475
	nop ; not executed offset: 00001476
	nop ; not executed offset: 00001477
	nop ; not executed offset: 00001478
	nop ; not executed offset: 00001479
	nop ; not executed offset: 0000147A
	nop ; not executed offset: 0000147B
	nop ; not executed offset: 0000147C
	nop ; not executed offset: 0000147D
	nop ; not executed offset: 0000147E
	nop ; not executed offset: 0000147F
	nop ; not executed offset: 00001480
	nop ; not executed offset: 00001481
	nop ; not executed offset: 00001482
	nop ; not executed offset: 00001483
	nop ; not executed offset: 00001484
	nop ; not executed offset: 00001485
	nop ; not executed offset: 00001486
	nop ; not executed offset: 00001487
	nop ; not executed offset: 00001488
	nop ; not executed offset: 00001489
	nop ; not executed offset: 0000148A
	nop ; not executed offset: 0000148B
	nop ; not executed offset: 0000148C
	nop ; not executed offset: 0000148D
	nop ; not executed offset: 0000148E
	nop ; not executed offset: 0000148F
	nop ; not executed offset: 00001490
	nop ; not executed offset: 00001491
	nop ; not executed offset: 00001492
	nop ; not executed offset: 00001493
	nop ; not executed offset: 00001494
	nop ; not executed offset: 00001495
	nop ; not executed offset: 00001496
	nop ; not executed offset: 00001497
	nop ; not executed offset: 00001498
	nop ; not executed offset: 00001499
	nop ; not executed offset: 0000149A
	nop ; not executed offset: 0000149B
	nop ; not executed offset: 0000149C
	nop ; not executed offset: 0000149D
	nop ; not executed offset: 0000149E
	nop ; not executed offset: 0000149F
	nop ; not executed offset: 000014A0
	nop ; not executed offset: 000014A1
	nop ; not executed offset: 000014A2
	nop ; not executed offset: 000014A3
	nop ; not executed offset: 000014A4
	nop ; not executed offset: 000014A5
	nop ; not executed offset: 000014A6
	nop ; not executed offset: 000014A7
	nop ; not executed offset: 000014A8
	nop ; not executed offset: 000014A9
	nop ; not executed offset: 000014AA
	nop ; not executed offset: 000014AB
	nop ; not executed offset: 000014AC
	nop ; not executed offset: 000014AD
	nop ; not executed offset: 000014AE
	nop ; not executed offset: 000014AF
	nop ; not executed offset: 000014B0
	nop ; not executed offset: 000014B1
	nop ; not executed offset: 000014B2
	nop ; not executed offset: 000014B3
	nop ; not executed offset: 000014B4
	nop ; not executed offset: 000014B5
	nop ; not executed offset: 000014B6
	nop ; not executed offset: 000014B7
	nop ; not executed offset: 000014B8
	nop ; not executed offset: 000014B9
	nop ; not executed offset: 000014BA
	nop ; not executed offset: 000014BB
	nop ; not executed offset: 000014BC
	nop ; not executed offset: 000014BD
	nop ; not executed offset: 000014BE
	nop ; not executed offset: 000014BF
	nop ; not executed offset: 000014C0
	nop ; not executed offset: 000014C1
	nop ; not executed offset: 000014C2
	nop ; not executed offset: 000014C3
	nop ; not executed offset: 000014C4
	nop ; not executed offset: 000014C5
	nop ; not executed offset: 000014C6
	nop ; not executed offset: 000014C7
	nop ; not executed offset: 000014C8
	nop ; not executed offset: 000014C9
	nop ; not executed offset: 000014CA
	nop ; not executed offset: 000014CB
	nop ; not executed offset: 000014CC
	nop ; not executed offset: 000014CD
	nop ; not executed offset: 000014CE
	nop ; not executed offset: 000014CF
	nop ; not executed offset: 000014D0
	nop ; not executed offset: 000014D1
	nop ; not executed offset: 000014D2
	nop ; not executed offset: 000014D3
	nop ; not executed offset: 000014D4
	nop ; not executed offset: 000014D5
	nop ; not executed offset: 000014D6
	nop ; not executed offset: 000014D7
	nop ; not executed offset: 000014D8
	nop ; not executed offset: 000014D9
	nop ; not executed offset: 000014DA
	nop ; not executed offset: 000014DB
	nop ; not executed offset: 000014DC
	nop ; not executed offset: 000014DD
	nop ; not executed offset: 000014DE
	nop ; not executed offset: 000014DF
	nop ; not executed offset: 000014E0
	nop ; not executed offset: 000014E1
	nop ; not executed offset: 000014E2
	nop ; not executed offset: 000014E3
	nop ; not executed offset: 000014E4
	nop ; not executed offset: 000014E5
	nop ; not executed offset: 000014E6
	nop ; not executed offset: 000014E7
	nop ; not executed offset: 000014E8
	nop ; not executed offset: 000014E9
	nop ; not executed offset: 000014EA
	nop ; not executed offset: 000014EB
	nop ; not executed offset: 000014EC
	nop ; not executed offset: 000014ED
	nop ; not executed offset: 000014EE
	nop ; not executed offset: 000014EF
	nop ; not executed offset: 000014F0
	nop ; not executed offset: 000014F1
	nop ; not executed offset: 000014F2
	nop ; not executed offset: 000014F3
	nop ; not executed offset: 000014F4
	nop ; not executed offset: 000014F5
	nop ; not executed offset: 000014F6
	nop ; not executed offset: 000014F7
	nop ; not executed offset: 000014F8
	nop ; not executed offset: 000014F9
	nop ; not executed offset: 000014FA
	nop ; not executed offset: 000014FB
	nop ; not executed offset: 000014FC
	nop ; not executed offset: 000014FD
	nop ; not executed offset: 000014FE
	nop ; not executed offset: 000014FF
	nop ; not executed offset: 00001500
	nop ; not executed offset: 00001501
	nop ; not executed offset: 00001502
	nop ; not executed offset: 00001503
	nop ; not executed offset: 00001504
	nop ; not executed offset: 00001505
	nop ; not executed offset: 00001506
	nop ; not executed offset: 00001507
	nop ; not executed offset: 00001508
	nop ; not executed offset: 00001509
	nop ; not executed offset: 0000150A
	nop ; not executed offset: 0000150B
	nop ; not executed offset: 0000150C
	nop ; not executed offset: 0000150D
	nop ; not executed offset: 0000150E
	nop ; not executed offset: 0000150F
	nop ; not executed offset: 00001510
	nop ; not executed offset: 00001511
	nop ; not executed offset: 00001512
	nop ; not executed offset: 00001513
	nop ; not executed offset: 00001514
	nop ; not executed offset: 00001515
	nop ; not executed offset: 00001516
	nop ; not executed offset: 00001517
	nop ; not executed offset: 00001518
	nop ; not executed offset: 00001519
	nop ; not executed offset: 0000151A
	nop ; not executed offset: 0000151B
	nop ; not executed offset: 0000151C
	nop ; not executed offset: 0000151D
	nop ; not executed offset: 0000151E
	nop ; not executed offset: 0000151F
	nop ; not executed offset: 00001520
	nop ; not executed offset: 00001521
	nop ; not executed offset: 00001522
	nop ; not executed offset: 00001523
	nop ; not executed offset: 00001524
	nop ; not executed offset: 00001525
	nop ; not executed offset: 00001526
	nop ; not executed offset: 00001527
	nop ; not executed offset: 00001528
	nop ; not executed offset: 00001529
	nop ; not executed offset: 0000152A
	nop ; not executed offset: 0000152B
	nop ; not executed offset: 0000152C
	nop ; not executed offset: 0000152D
	nop ; not executed offset: 0000152E
	nop ; not executed offset: 0000152F
	nop ; not executed offset: 00001530
	nop ; not executed offset: 00001531
	nop ; not executed offset: 00001532
	nop ; not executed offset: 00001533
	nop ; not executed offset: 00001534
	nop ; not executed offset: 00001535
	nop ; not executed offset: 00001536
	nop ; not executed offset: 00001537
	nop ; not executed offset: 00001538
	nop ; not executed offset: 00001539
	nop ; not executed offset: 0000153A
	nop ; not executed offset: 0000153B
	nop ; not executed offset: 0000153C
	nop ; not executed offset: 0000153D
	nop ; not executed offset: 0000153E
	nop ; not executed offset: 0000153F
	nop ; not executed offset: 00001540
	nop ; not executed offset: 00001541
	nop ; not executed offset: 00001542
	nop ; not executed offset: 00001543
	nop ; not executed offset: 00001544
	nop ; not executed offset: 00001545
	nop ; not executed offset: 00001546
	nop ; not executed offset: 00001547
	nop ; not executed offset: 00001548
	nop ; not executed offset: 00001549
	nop ; not executed offset: 0000154A
	nop ; not executed offset: 0000154B
	nop ; not executed offset: 0000154C
	nop ; not executed offset: 0000154D
	nop ; not executed offset: 0000154E
	nop ; not executed offset: 0000154F
	nop ; not executed offset: 00001550
	nop ; not executed offset: 00001551
	nop ; not executed offset: 00001552
	nop ; not executed offset: 00001553
	nop ; not executed offset: 00001554
	nop ; not executed offset: 00001555
	nop ; not executed offset: 00001556
	nop ; not executed offset: 00001557
	nop ; not executed offset: 00001558
	nop ; not executed offset: 00001559
	nop ; not executed offset: 0000155A
	nop ; not executed offset: 0000155B
	nop ; not executed offset: 0000155C
	nop ; not executed offset: 0000155D
	nop ; not executed offset: 0000155E
	nop ; not executed offset: 0000155F
	nop ; not executed offset: 00001560
	nop ; not executed offset: 00001561
	nop ; not executed offset: 00001562
	nop ; not executed offset: 00001563
	nop ; not executed offset: 00001564
	nop ; not executed offset: 00001565
	nop ; not executed offset: 00001566
	nop ; not executed offset: 00001567
	nop ; not executed offset: 00001568
	nop ; not executed offset: 00001569
	nop ; not executed offset: 0000156A
	nop ; not executed offset: 0000156B
	nop ; not executed offset: 0000156C
	nop ; not executed offset: 0000156D
	nop ; not executed offset: 0000156E
	nop ; not executed offset: 0000156F
	nop ; not executed offset: 00001570
	nop ; not executed offset: 00001571
	nop ; not executed offset: 00001572
	nop ; not executed offset: 00001573
	nop ; not executed offset: 00001574
	nop ; not executed offset: 00001575
	nop ; not executed offset: 00001576
	nop ; not executed offset: 00001577
	nop ; not executed offset: 00001578
	nop ; not executed offset: 00001579
	nop ; not executed offset: 0000157A
	nop ; not executed offset: 0000157B
	nop ; not executed offset: 0000157C
	nop ; not executed offset: 0000157D
	nop ; not executed offset: 0000157E
	nop ; not executed offset: 0000157F
	nop ; not executed offset: 00001580
	nop ; not executed offset: 00001581
	nop ; not executed offset: 00001582
	nop ; not executed offset: 00001583
	nop ; not executed offset: 00001584
	nop ; not executed offset: 00001585
	nop ; not executed offset: 00001586
	nop ; not executed offset: 00001587
	nop ; not executed offset: 00001588
	nop ; not executed offset: 00001589
	nop ; not executed offset: 0000158A
	nop ; not executed offset: 0000158B
	nop ; not executed offset: 0000158C
	nop ; not executed offset: 0000158D
	nop ; not executed offset: 0000158E
	nop ; not executed offset: 0000158F
	nop ; not executed offset: 00001590
	nop ; not executed offset: 00001591
	nop ; not executed offset: 00001592
	nop ; not executed offset: 00001593
	nop ; not executed offset: 00001594
	nop ; not executed offset: 00001595
	nop ; not executed offset: 00001596
	nop ; not executed offset: 00001597
	nop ; not executed offset: 00001598
	nop ; not executed offset: 00001599
	nop ; not executed offset: 0000159A
	nop ; not executed offset: 0000159B
	nop ; not executed offset: 0000159C
	nop ; not executed offset: 0000159D
	nop ; not executed offset: 0000159E
	nop ; not executed offset: 0000159F
	nop ; not executed offset: 000015A0
	nop ; not executed offset: 000015A1
	nop ; not executed offset: 000015A2
	nop ; not executed offset: 000015A3
	nop ; not executed offset: 000015A4
	nop ; not executed offset: 000015A5
	nop ; not executed offset: 000015A6
	nop ; not executed offset: 000015A7
	nop ; not executed offset: 000015A8
	nop ; not executed offset: 000015A9
	nop ; not executed offset: 000015AA
	nop ; not executed offset: 000015AB
	nop ; not executed offset: 000015AC
	nop ; not executed offset: 000015AD
	nop ; not executed offset: 000015AE
	nop ; not executed offset: 000015AF
	nop ; not executed offset: 000015B0
	nop ; not executed offset: 000015B1
	nop ; not executed offset: 000015B2
	nop ; not executed offset: 000015B3
	nop ; not executed offset: 000015B4
	nop ; not executed offset: 000015B5
	nop ; not executed offset: 000015B6
	nop ; not executed offset: 000015B7
	nop ; not executed offset: 000015B8
	nop ; not executed offset: 000015B9
	nop ; not executed offset: 000015BA
	nop ; not executed offset: 000015BB
	nop ; not executed offset: 000015BC
	nop ; not executed offset: 000015BD
	nop ; not executed offset: 000015BE
	nop ; not executed offset: 000015BF
	nop ; not executed offset: 000015C0
	nop ; not executed offset: 000015C1
	nop ; not executed offset: 000015C2
	nop ; not executed offset: 000015C3
	nop ; not executed offset: 000015C4
	nop ; not executed offset: 000015C5
	nop ; not executed offset: 000015C6
	nop ; not executed offset: 000015C7
	nop ; not executed offset: 000015C8
	nop ; not executed offset: 000015C9
	nop ; not executed offset: 000015CA
	nop ; not executed offset: 000015CB
	nop ; not executed offset: 000015CC
	nop ; not executed offset: 000015CD
	nop ; not executed offset: 000015CE
	nop ; not executed offset: 000015CF
	nop ; not executed offset: 000015D0
	nop ; not executed offset: 000015D1
	nop ; not executed offset: 000015D2
	nop ; not executed offset: 000015D3
	nop ; not executed offset: 000015D4
	nop ; not executed offset: 000015D5
	nop ; not executed offset: 000015D6
	nop ; not executed offset: 000015D7
	nop ; not executed offset: 000015D8
	nop ; not executed offset: 000015D9
	nop ; not executed offset: 000015DA
	nop ; not executed offset: 000015DB
	nop ; not executed offset: 000015DC
	nop ; not executed offset: 000015DD
	nop ; not executed offset: 000015DE
	nop ; not executed offset: 000015DF
	nop ; not executed offset: 000015E0
	nop ; not executed offset: 000015E1
	nop ; not executed offset: 000015E2
	nop ; not executed offset: 000015E3
	nop ; not executed offset: 000015E4
	nop ; not executed offset: 000015E5
	nop ; not executed offset: 000015E6
	nop ; not executed offset: 000015E7
	nop ; not executed offset: 000015E8
	nop ; not executed offset: 000015E9
	nop ; not executed offset: 000015EA
	nop ; not executed offset: 000015EB
	nop ; not executed offset: 000015EC
	nop ; not executed offset: 000015ED
	nop ; not executed offset: 000015EE
	nop ; not executed offset: 000015EF
	nop ; not executed offset: 000015F0
	nop ; not executed offset: 000015F1
	nop ; not executed offset: 000015F2
	nop ; not executed offset: 000015F3
	nop ; not executed offset: 000015F4
	nop ; not executed offset: 000015F5
	nop ; not executed offset: 000015F6
	nop ; not executed offset: 000015F7
	nop ; not executed offset: 000015F8
	nop ; not executed offset: 000015F9
	nop ; not executed offset: 000015FA
	nop ; not executed offset: 000015FB
	nop ; not executed offset: 000015FC
	nop ; not executed offset: 000015FD
	nop ; not executed offset: 000015FE
	nop ; not executed offset: 000015FF
	nop ; not executed offset: 00001600
	nop ; not executed offset: 00001601
	nop ; not executed offset: 00001602
	nop ; not executed offset: 00001603
	nop ; not executed offset: 00001604
	nop ; not executed offset: 00001605
	nop ; not executed offset: 00001606
	nop ; not executed offset: 00001607
	nop ; not executed offset: 00001608
	nop ; not executed offset: 00001609
	nop ; not executed offset: 0000160A
	nop ; not executed offset: 0000160B
	nop ; not executed offset: 0000160C
	nop ; not executed offset: 0000160D
	nop ; not executed offset: 0000160E
	nop ; not executed offset: 0000160F
	nop ; not executed offset: 00001610
	nop ; not executed offset: 00001611
	nop ; not executed offset: 00001612
	nop ; not executed offset: 00001613
	nop ; not executed offset: 00001614
	nop ; not executed offset: 00001615
	nop ; not executed offset: 00001616
	nop ; not executed offset: 00001617
	nop ; not executed offset: 00001618
	nop ; not executed offset: 00001619
	nop ; not executed offset: 0000161A
	nop ; not executed offset: 0000161B
	nop ; not executed offset: 0000161C
	nop ; not executed offset: 0000161D
	nop ; not executed offset: 0000161E
	nop ; not executed offset: 0000161F
	nop ; not executed offset: 00001620
	nop ; not executed offset: 00001621
	nop ; not executed offset: 00001622
	nop ; not executed offset: 00001623
	nop ; not executed offset: 00001624
	nop ; not executed offset: 00001625
	nop ; not executed offset: 00001626
	nop ; not executed offset: 00001627
	nop ; not executed offset: 00001628
	nop ; not executed offset: 00001629
	nop ; not executed offset: 0000162A
	nop ; not executed offset: 0000162B
	nop ; not executed offset: 0000162C
	nop ; not executed offset: 0000162D
	nop ; not executed offset: 0000162E
	nop ; not executed offset: 0000162F
	nop ; not executed offset: 00001630
	nop ; not executed offset: 00001631
	nop ; not executed offset: 00001632
	nop ; not executed offset: 00001633
	nop ; not executed offset: 00001634
	nop ; not executed offset: 00001635
	nop ; not executed offset: 00001636
	nop ; not executed offset: 00001637
	nop ; not executed offset: 00001638
	nop ; not executed offset: 00001639
	nop ; not executed offset: 0000163A
	nop ; not executed offset: 0000163B
	nop ; not executed offset: 0000163C
	nop ; not executed offset: 0000163D
	nop ; not executed offset: 0000163E
	nop ; not executed offset: 0000163F
	nop ; not executed offset: 00001640
	nop ; not executed offset: 00001641
	nop ; not executed offset: 00001642
	nop ; not executed offset: 00001643
	nop ; not executed offset: 00001644
	nop ; not executed offset: 00001645
	nop ; not executed offset: 00001646
	nop ; not executed offset: 00001647
	nop ; not executed offset: 00001648
	nop ; not executed offset: 00001649
	nop ; not executed offset: 0000164A
	nop ; not executed offset: 0000164B
	nop ; not executed offset: 0000164C
	nop ; not executed offset: 0000164D
	nop ; not executed offset: 0000164E
	nop ; not executed offset: 0000164F
	nop ; not executed offset: 00001650
	nop ; not executed offset: 00001651
	nop ; not executed offset: 00001652
	nop ; not executed offset: 00001653
	nop ; not executed offset: 00001654
	nop ; not executed offset: 00001655
	nop ; not executed offset: 00001656
	nop ; not executed offset: 00001657
	nop ; not executed offset: 00001658
	nop ; not executed offset: 00001659
	nop ; not executed offset: 0000165A
	nop ; not executed offset: 0000165B
	nop ; not executed offset: 0000165C
	nop ; not executed offset: 0000165D
	nop ; not executed offset: 0000165E
	nop ; not executed offset: 0000165F
	nop ; not executed offset: 00001660
	nop ; not executed offset: 00001661
	nop ; not executed offset: 00001662
	nop ; not executed offset: 00001663
	nop ; not executed offset: 00001664
	nop ; not executed offset: 00001665
	nop ; not executed offset: 00001666
	nop ; not executed offset: 00001667
	nop ; not executed offset: 00001668
	nop ; not executed offset: 00001669
	nop ; not executed offset: 0000166A
	nop ; not executed offset: 0000166B
	nop ; not executed offset: 0000166C
	nop ; not executed offset: 0000166D
	nop ; not executed offset: 0000166E
	nop ; not executed offset: 0000166F
	nop ; not executed offset: 00001670
	nop ; not executed offset: 00001671
	nop ; not executed offset: 00001672
	nop ; not executed offset: 00001673
	nop ; not executed offset: 00001674
	nop ; not executed offset: 00001675
	nop ; not executed offset: 00001676
	nop ; not executed offset: 00001677
	nop ; not executed offset: 00001678
	nop ; not executed offset: 00001679
	nop ; not executed offset: 0000167A
	nop ; not executed offset: 0000167B
	nop ; not executed offset: 0000167C
	nop ; not executed offset: 0000167D
	nop ; not executed offset: 0000167E
	nop ; not executed offset: 0000167F
	nop ; not executed offset: 00001680
	nop ; not executed offset: 00001681
	nop ; not executed offset: 00001682
	nop ; not executed offset: 00001683
	nop ; not executed offset: 00001684
	nop ; not executed offset: 00001685
	nop ; not executed offset: 00001686
	nop ; not executed offset: 00001687
	nop ; not executed offset: 00001688
	nop ; not executed offset: 00001689
	nop ; not executed offset: 0000168A
	nop ; not executed offset: 0000168B
	nop ; not executed offset: 0000168C
	nop ; not executed offset: 0000168D
	nop ; not executed offset: 0000168E
	nop ; not executed offset: 0000168F
	nop ; not executed offset: 00001690
	nop ; not executed offset: 00001691
	nop ; not executed offset: 00001692
	nop ; not executed offset: 00001693
	nop ; not executed offset: 00001694
	nop ; not executed offset: 00001695
	nop ; not executed offset: 00001696
	nop ; not executed offset: 00001697
	nop ; not executed offset: 00001698
	nop ; not executed offset: 00001699
	nop ; not executed offset: 0000169A
	nop ; not executed offset: 0000169B
	nop ; not executed offset: 0000169C
	nop ; not executed offset: 0000169D
	nop ; not executed offset: 0000169E
	nop ; not executed offset: 0000169F
	nop ; not executed offset: 000016A0
	nop ; not executed offset: 000016A1
	nop ; not executed offset: 000016A2
	nop ; not executed offset: 000016A3
	nop ; not executed offset: 000016A4
	nop ; not executed offset: 000016A5
	nop ; not executed offset: 000016A6
	nop ; not executed offset: 000016A7
	nop ; not executed offset: 000016A8
	nop ; not executed offset: 000016A9
	nop ; not executed offset: 000016AA
	nop ; not executed offset: 000016AB
	nop ; not executed offset: 000016AC
	nop ; not executed offset: 000016AD
	nop ; not executed offset: 000016AE
	nop ; not executed offset: 000016AF
	nop ; not executed offset: 000016B0
	nop ; not executed offset: 000016B1
	nop ; not executed offset: 000016B2
	nop ; not executed offset: 000016B3
	nop ; not executed offset: 000016B4
	nop ; not executed offset: 000016B5
	nop ; not executed offset: 000016B6
	nop ; not executed offset: 000016B7
	nop ; not executed offset: 000016B8
	nop ; not executed offset: 000016B9
	nop ; not executed offset: 000016BA
	nop ; not executed offset: 000016BB
	nop ; not executed offset: 000016BC
	nop ; not executed offset: 000016BD
	nop ; not executed offset: 000016BE
	nop ; not executed offset: 000016BF
	nop ; not executed offset: 000016C0
	nop ; not executed offset: 000016C1
	nop ; not executed offset: 000016C2
	nop ; not executed offset: 000016C3
	nop ; not executed offset: 000016C4
	nop ; not executed offset: 000016C5
	nop ; not executed offset: 000016C6
	nop ; not executed offset: 000016C7
	nop ; not executed offset: 000016C8
	nop ; not executed offset: 000016C9
	nop ; not executed offset: 000016CA
	nop ; not executed offset: 000016CB
	nop ; not executed offset: 000016CC
	nop ; not executed offset: 000016CD
	nop ; not executed offset: 000016CE
	nop ; not executed offset: 000016CF
	nop ; not executed offset: 000016D0
	nop ; not executed offset: 000016D1
	nop ; not executed offset: 000016D2
	nop ; not executed offset: 000016D3
	nop ; not executed offset: 000016D4
	nop ; not executed offset: 000016D5
	nop ; not executed offset: 000016D6
	nop ; not executed offset: 000016D7
	nop ; not executed offset: 000016D8
	nop ; not executed offset: 000016D9
	nop ; not executed offset: 000016DA
	nop ; not executed offset: 000016DB
	nop ; not executed offset: 000016DC
	nop ; not executed offset: 000016DD
	nop ; not executed offset: 000016DE
	nop ; not executed offset: 000016DF
	nop ; not executed offset: 000016E0
	nop ; not executed offset: 000016E1
	nop ; not executed offset: 000016E2
	nop ; not executed offset: 000016E3
	nop ; not executed offset: 000016E4
	nop ; not executed offset: 000016E5
	nop ; not executed offset: 000016E6
	nop ; not executed offset: 000016E7
	nop ; not executed offset: 000016E8
	nop ; not executed offset: 000016E9
	nop ; not executed offset: 000016EA
	nop ; not executed offset: 000016EB
	nop ; not executed offset: 000016EC
	nop ; not executed offset: 000016ED
	nop ; not executed offset: 000016EE
	nop ; not executed offset: 000016EF
	nop ; not executed offset: 000016F0
	nop ; not executed offset: 000016F1
	nop ; not executed offset: 000016F2
	nop ; not executed offset: 000016F3
	nop ; not executed offset: 000016F4
	nop ; not executed offset: 000016F5
	nop ; not executed offset: 000016F6
	nop ; not executed offset: 000016F7
	nop ; not executed offset: 000016F8
	nop ; not executed offset: 000016F9
	nop ; not executed offset: 000016FA
	nop ; not executed offset: 000016FB
	nop ; not executed offset: 000016FC
	nop ; not executed offset: 000016FD
	nop ; not executed offset: 000016FE
	nop ; not executed offset: 000016FF
	nop ; not executed offset: 00001700
	nop ; not executed offset: 00001701
	nop ; not executed offset: 00001702
	nop ; not executed offset: 00001703
	nop ; not executed offset: 00001704
	nop ; not executed offset: 00001705
	nop ; not executed offset: 00001706
	nop ; not executed offset: 00001707
	nop ; not executed offset: 00001708
	nop ; not executed offset: 00001709
	nop ; not executed offset: 0000170A
	nop ; not executed offset: 0000170B
	nop ; not executed offset: 0000170C
	nop ; not executed offset: 0000170D
	nop ; not executed offset: 0000170E
	nop ; not executed offset: 0000170F
	nop ; not executed offset: 00001710
	nop ; not executed offset: 00001711
	nop ; not executed offset: 00001712
	nop ; not executed offset: 00001713
	nop ; not executed offset: 00001714
	nop ; not executed offset: 00001715
	nop ; not executed offset: 00001716
	nop ; not executed offset: 00001717
	nop ; not executed offset: 00001718
	nop ; not executed offset: 00001719
	nop ; not executed offset: 0000171A
	nop ; not executed offset: 0000171B
	nop ; not executed offset: 0000171C
	nop ; not executed offset: 0000171D
	nop ; not executed offset: 0000171E
	nop ; not executed offset: 0000171F
	nop ; not executed offset: 00001720
	nop ; not executed offset: 00001721
	nop ; not executed offset: 00001722
	nop ; not executed offset: 00001723
	nop ; not executed offset: 00001724
	nop ; not executed offset: 00001725
	nop ; not executed offset: 00001726
	nop ; not executed offset: 00001727
	nop ; not executed offset: 00001728
	nop ; not executed offset: 00001729
	nop ; not executed offset: 0000172A
	nop ; not executed offset: 0000172B
	nop ; not executed offset: 0000172C
	nop ; not executed offset: 0000172D
	nop ; not executed offset: 0000172E
	nop ; not executed offset: 0000172F
	nop ; not executed offset: 00001730
	nop ; not executed offset: 00001731
	nop ; not executed offset: 00001732
	nop ; not executed offset: 00001733
	nop ; not executed offset: 00001734
	nop ; not executed offset: 00001735
	nop ; not executed offset: 00001736
	nop ; not executed offset: 00001737
	nop ; not executed offset: 00001738
	nop ; not executed offset: 00001739
	nop ; not executed offset: 0000173A
	nop ; not executed offset: 0000173B
	nop ; not executed offset: 0000173C
	nop ; not executed offset: 0000173D
	nop ; not executed offset: 0000173E
	nop ; not executed offset: 0000173F
	nop ; not executed offset: 00001740
	nop ; not executed offset: 00001741
	nop ; not executed offset: 00001742
	nop ; not executed offset: 00001743
	nop ; not executed offset: 00001744
	nop ; not executed offset: 00001745
	nop ; not executed offset: 00001746
	nop ; not executed offset: 00001747
	nop ; not executed offset: 00001748
	nop ; not executed offset: 00001749
	nop ; not executed offset: 0000174A
	nop ; not executed offset: 0000174B
	nop ; not executed offset: 0000174C
	nop ; not executed offset: 0000174D
	nop ; not executed offset: 0000174E
	nop ; not executed offset: 0000174F
	nop ; not executed offset: 00001750
	nop ; not executed offset: 00001751
	nop ; not executed offset: 00001752
	nop ; not executed offset: 00001753
	nop ; not executed offset: 00001754
	nop ; not executed offset: 00001755
	nop ; not executed offset: 00001756
	nop ; not executed offset: 00001757
	nop ; not executed offset: 00001758
	nop ; not executed offset: 00001759
	nop ; not executed offset: 0000175A
	nop ; not executed offset: 0000175B
	nop ; not executed offset: 0000175C
	nop ; not executed offset: 0000175D
	nop ; not executed offset: 0000175E
	nop ; not executed offset: 0000175F
	nop ; not executed offset: 00001760
	nop ; not executed offset: 00001761
	nop ; not executed offset: 00001762
	nop ; not executed offset: 00001763
	nop ; not executed offset: 00001764
	nop ; not executed offset: 00001765
	nop ; not executed offset: 00001766
	nop ; not executed offset: 00001767
	nop ; not executed offset: 00001768
	nop ; not executed offset: 00001769
	nop ; not executed offset: 0000176A
	nop ; not executed offset: 0000176B
	nop ; not executed offset: 0000176C
	nop ; not executed offset: 0000176D
	nop ; not executed offset: 0000176E
	nop ; not executed offset: 0000176F
	nop ; not executed offset: 00001770
	nop ; not executed offset: 00001771
	nop ; not executed offset: 00001772
	nop ; not executed offset: 00001773
	nop ; not executed offset: 00001774
	nop ; not executed offset: 00001775
	nop ; not executed offset: 00001776
	nop ; not executed offset: 00001777
	nop ; not executed offset: 00001778
	nop ; not executed offset: 00001779
	nop ; not executed offset: 0000177A
	nop ; not executed offset: 0000177B
	nop ; not executed offset: 0000177C
	nop ; not executed offset: 0000177D
	nop ; not executed offset: 0000177E
	nop ; not executed offset: 0000177F
	nop ; not executed offset: 00001780
	nop ; not executed offset: 00001781
	nop ; not executed offset: 00001782
	nop ; not executed offset: 00001783
	nop ; not executed offset: 00001784
	nop ; not executed offset: 00001785
	nop ; not executed offset: 00001786
	nop ; not executed offset: 00001787
	nop ; not executed offset: 00001788
	nop ; not executed offset: 00001789
	nop ; not executed offset: 0000178A
	nop ; not executed offset: 0000178B
	nop ; not executed offset: 0000178C
	nop ; not executed offset: 0000178D
	nop ; not executed offset: 0000178E
	nop ; not executed offset: 0000178F
	nop ; not executed offset: 00001790
	nop ; not executed offset: 00001791
	nop ; not executed offset: 00001792
	nop ; not executed offset: 00001793
	nop ; not executed offset: 00001794
	nop ; not executed offset: 00001795
	nop ; not executed offset: 00001796
	nop ; not executed offset: 00001797
	nop ; not executed offset: 00001798
	nop ; not executed offset: 00001799
	nop ; not executed offset: 0000179A
	nop ; not executed offset: 0000179B
	nop ; not executed offset: 0000179C
	nop ; not executed offset: 0000179D
	nop ; not executed offset: 0000179E
	nop ; not executed offset: 0000179F
	nop ; not executed offset: 000017A0
	nop ; not executed offset: 000017A1
	nop ; not executed offset: 000017A2
	nop ; not executed offset: 000017A3
	nop ; not executed offset: 000017A4
	nop ; not executed offset: 000017A5
	nop ; not executed offset: 000017A6
	nop ; not executed offset: 000017A7
	nop ; not executed offset: 000017A8
	nop ; not executed offset: 000017A9
	nop ; not executed offset: 000017AA
	nop ; not executed offset: 000017AB
	nop ; not executed offset: 000017AC
	nop ; not executed offset: 000017AD
	nop ; not executed offset: 000017AE
	nop ; not executed offset: 000017AF
	nop ; not executed offset: 000017B0
	nop ; not executed offset: 000017B1
	nop ; not executed offset: 000017B2
	nop ; not executed offset: 000017B3
	nop ; not executed offset: 000017B4
	nop ; not executed offset: 000017B5
	nop ; not executed offset: 000017B6
	nop ; not executed offset: 000017B7
	nop ; not executed offset: 000017B8
	nop ; not executed offset: 000017B9
	nop ; not executed offset: 000017BA
	nop ; not executed offset: 000017BB
	nop ; not executed offset: 000017BC
	nop ; not executed offset: 000017BD
	nop ; not executed offset: 000017BE
	nop ; not executed offset: 000017BF
	nop ; not executed offset: 000017C0
	nop ; not executed offset: 000017C1
	nop ; not executed offset: 000017C2
	nop ; not executed offset: 000017C3
	nop ; not executed offset: 000017C4
	nop ; not executed offset: 000017C5
	nop ; not executed offset: 000017C6
	nop ; not executed offset: 000017C7
	nop ; not executed offset: 000017C8
	nop ; not executed offset: 000017C9
	nop ; not executed offset: 000017CA
	nop ; not executed offset: 000017CB
	nop ; not executed offset: 000017CC
	nop ; not executed offset: 000017CD
	nop ; not executed offset: 000017CE
	nop ; not executed offset: 000017CF
	nop ; not executed offset: 000017D0
	nop ; not executed offset: 000017D1
	nop ; not executed offset: 000017D2
	nop ; not executed offset: 000017D3
	nop ; not executed offset: 000017D4
	nop ; not executed offset: 000017D5
	nop ; not executed offset: 000017D6
	nop ; not executed offset: 000017D7
	nop ; not executed offset: 000017D8
	nop ; not executed offset: 000017D9
	nop ; not executed offset: 000017DA
	nop ; not executed offset: 000017DB
	nop ; not executed offset: 000017DC
	nop ; not executed offset: 000017DD
	nop ; not executed offset: 000017DE
	nop ; not executed offset: 000017DF
	nop ; not executed offset: 000017E0
	nop ; not executed offset: 000017E1
	nop ; not executed offset: 000017E2
	nop ; not executed offset: 000017E3
	nop ; not executed offset: 000017E4
	nop ; not executed offset: 000017E5
	nop ; not executed offset: 000017E6
	nop ; not executed offset: 000017E7
	nop ; not executed offset: 000017E8
	nop ; not executed offset: 000017E9
	nop ; not executed offset: 000017EA
	nop ; not executed offset: 000017EB
	nop ; not executed offset: 000017EC
	nop ; not executed offset: 000017ED
	nop ; not executed offset: 000017EE
	nop ; not executed offset: 000017EF
	nop ; not executed offset: 000017F0
	nop ; not executed offset: 000017F1
	nop ; not executed offset: 000017F2
	nop ; not executed offset: 000017F3
	nop ; not executed offset: 000017F4
	nop ; not executed offset: 000017F5
	nop ; not executed offset: 000017F6
	nop ; not executed offset: 000017F7
	nop ; not executed offset: 000017F8
	nop ; not executed offset: 000017F9
	nop ; not executed offset: 000017FA
	nop ; not executed offset: 000017FB
	nop ; not executed offset: 000017FC
	nop ; not executed offset: 000017FD
	nop ; not executed offset: 000017FE
	nop ; not executed offset: 000017FF
	nop ; not executed offset: 00001800
	nop ; not executed offset: 00001801
	nop ; not executed offset: 00001802
	nop ; not executed offset: 00001803
	nop ; not executed offset: 00001804
	nop ; not executed offset: 00001805
	nop ; not executed offset: 00001806
	nop ; not executed offset: 00001807
	nop ; not executed offset: 00001808
	nop ; not executed offset: 00001809
	nop ; not executed offset: 0000180A
	nop ; not executed offset: 0000180B
	nop ; not executed offset: 0000180C
	nop ; not executed offset: 0000180D
	nop ; not executed offset: 0000180E
	nop ; not executed offset: 0000180F
	nop ; not executed offset: 00001810
	nop ; not executed offset: 00001811
	nop ; not executed offset: 00001812
	nop ; not executed offset: 00001813
	nop ; not executed offset: 00001814
	nop ; not executed offset: 00001815
	nop ; not executed offset: 00001816
	nop ; not executed offset: 00001817
	nop ; not executed offset: 00001818
	nop ; not executed offset: 00001819
	nop ; not executed offset: 0000181A
	nop ; not executed offset: 0000181B
	nop ; not executed offset: 0000181C
	nop ; not executed offset: 0000181D
	nop ; not executed offset: 0000181E
	nop ; not executed offset: 0000181F
	nop ; not executed offset: 00001820
	nop ; not executed offset: 00001821
	nop ; not executed offset: 00001822
	nop ; not executed offset: 00001823
	nop ; not executed offset: 00001824
	nop ; not executed offset: 00001825
	nop ; not executed offset: 00001826
	nop ; not executed offset: 00001827
	nop ; not executed offset: 00001828
	nop ; not executed offset: 00001829
	nop ; not executed offset: 0000182A
	nop ; not executed offset: 0000182B
	nop ; not executed offset: 0000182C
	nop ; not executed offset: 0000182D
	nop ; not executed offset: 0000182E
	nop ; not executed offset: 0000182F
	nop ; not executed offset: 00001830
	nop ; not executed offset: 00001831
	nop ; not executed offset: 00001832
	nop ; not executed offset: 00001833
	nop ; not executed offset: 00001834
	nop ; not executed offset: 00001835
	nop ; not executed offset: 00001836
	nop ; not executed offset: 00001837
	nop ; not executed offset: 00001838
	nop ; not executed offset: 00001839
	nop ; not executed offset: 0000183A
	nop ; not executed offset: 0000183B
	nop ; not executed offset: 0000183C
	nop ; not executed offset: 0000183D
	nop ; not executed offset: 0000183E
	nop ; not executed offset: 0000183F
	nop ; not executed offset: 00001840
	nop ; not executed offset: 00001841
	nop ; not executed offset: 00001842
	nop ; not executed offset: 00001843
	nop ; not executed offset: 00001844
	nop ; not executed offset: 00001845
	nop ; not executed offset: 00001846
	nop ; not executed offset: 00001847
	nop ; not executed offset: 00001848
	nop ; not executed offset: 00001849
	nop ; not executed offset: 0000184A
	nop ; not executed offset: 0000184B
	nop ; not executed offset: 0000184C
	nop ; not executed offset: 0000184D
	nop ; not executed offset: 0000184E
	nop ; not executed offset: 0000184F
	nop ; not executed offset: 00001850
	nop ; not executed offset: 00001851
	nop ; not executed offset: 00001852
	nop ; not executed offset: 00001853
	nop ; not executed offset: 00001854
	nop ; not executed offset: 00001855
	nop ; not executed offset: 00001856
	nop ; not executed offset: 00001857
	nop ; not executed offset: 00001858
	nop ; not executed offset: 00001859
	nop ; not executed offset: 0000185A
	nop ; not executed offset: 0000185B
	nop ; not executed offset: 0000185C
	nop ; not executed offset: 0000185D
	nop ; not executed offset: 0000185E
	nop ; not executed offset: 0000185F
	nop ; not executed offset: 00001860
	nop ; not executed offset: 00001861
	nop ; not executed offset: 00001862
	nop ; not executed offset: 00001863
	nop ; not executed offset: 00001864
	nop ; not executed offset: 00001865
	nop ; not executed offset: 00001866
	nop ; not executed offset: 00001867
	nop ; not executed offset: 00001868
	nop ; not executed offset: 00001869
	nop ; not executed offset: 0000186A
	nop ; not executed offset: 0000186B
	nop ; not executed offset: 0000186C
	nop ; not executed offset: 0000186D
	nop ; not executed offset: 0000186E
	nop ; not executed offset: 0000186F
	nop ; not executed offset: 00001870
	nop ; not executed offset: 00001871
	nop ; not executed offset: 00001872
	nop ; not executed offset: 00001873
	nop ; not executed offset: 00001874
	nop ; not executed offset: 00001875
	nop ; not executed offset: 00001876
	nop ; not executed offset: 00001877
	nop ; not executed offset: 00001878
	nop ; not executed offset: 00001879
	nop ; not executed offset: 0000187A
	nop ; not executed offset: 0000187B
	nop ; not executed offset: 0000187C
	nop ; not executed offset: 0000187D
	nop ; not executed offset: 0000187E
	nop ; not executed offset: 0000187F
	nop ; not executed offset: 00001880
	nop ; not executed offset: 00001881
	nop ; not executed offset: 00001882
	nop ; not executed offset: 00001883
	nop ; not executed offset: 00001884
	nop ; not executed offset: 00001885
	nop ; not executed offset: 00001886
	nop ; not executed offset: 00001887
	nop ; not executed offset: 00001888
	nop ; not executed offset: 00001889
	nop ; not executed offset: 0000188A
	nop ; not executed offset: 0000188B
; Reached max number of instruction bytes


.BANK 0000 SLOT 0
.ORGA $00002C80
; Called by: 0000::000004DA
	LD   (IX+$0002),$0001 ;00002C80
	LD   (IX+$0003),$0001 ;00002C84
	LD   (IX+$000E),$0000 ;00002C88
	LD   (IX+$000F),$0002 ;00002C8C
	LD   (IX+$0006),$0078 ;00002C90
	LD   (IX+$0009),$0058 ;00002C94
	ld hl, $2C9E ;00002C98
	jp $3996 ;00002C9B
;stopped writing due to overlap with another section

.BANK 0000 SLOT 0
.ORGA $00002C9E
; Called by: 0000::000004DA
	in a, ($0001) ;00002C9E
	and $000C ;00002CA0
	z_UNTAKEN_JUMP_2 ;00002CA2
	cp $000C ;00002CA4
	jr z, LAB_0000_00002CBE ;00002CA6
	nop ; not executed offset: 00002CA8
	nop ; not executed offset: 00002CA9
	nop ; not executed offset: 00002CAA
	nop ; not executed offset: 00002CAB
	nop ; not executed offset: 00002CAC
	nop ; not executed offset: 00002CAD
	nop ; not executed offset: 00002CAE
	nop ; not executed offset: 00002CAF
	nop ; not executed offset: 00002CB0
	nop ; not executed offset: 00002CB1
	nop ; not executed offset: 00002CB2
	nop ; not executed offset: 00002CB3
	nop ; not executed offset: 00002CB4
	nop ; not executed offset: 00002CB5
	nop ; not executed offset: 00002CB6
	nop ; not executed offset: 00002CB7
	nop ; not executed offset: 00002CB8
	nop ; not executed offset: 00002CB9
	nop ; not executed offset: 00002CBA
	nop ; not executed offset: 00002CBB
	nop ; not executed offset: 00002CBC
	nop ; not executed offset: 00002CBD
LAB_0000_00002CBE:
	LD   (IX+$000E),$0000 ;00002CBE
	LD   (IX+$0006),$0078 ;00002CC2
	ret ;00002CC6
;stopped writing due to overlap with another section

.BANK 0000 SLOT 0
.ORGA $00002CC7
; Called by: 0000::000004DA
	LD   (IX+$0003),$0002 ;00002CC7
	LD   (IX+$0006),$0087 ;00002CCB
	LD   (IX+$0009),$0070 ;00002CCF
	ld hl, $2CD9 ;00002CD3
	jp $3996 ;00002CD6
;stopped writing due to overlap with another section

.BANK 0000 SLOT 0
.ORGA $00002CD9
; Called by: 0000::000004DA
	in a, ($0001) ;00002CD9
	and $000C ;00002CDB
	z_UNTAKEN_JUMP_2 ;00002CDD
	cp $000C ;00002CDF
	jr z, LAB_0000_00002CE8 ;00002CE1
	nop ; not executed offset: 00002CE3
	nop ; not executed offset: 00002CE4
	nop ; not executed offset: 00002CE5
	nop ; not executed offset: 00002CE6
	nop ; not executed offset: 00002CE7
LAB_0000_00002CE8:
	LD   (IX+$0002),$0001 ;00002CE8
	ret ;00002CEC
;stopped writing due to overlap with another section

.BANK 0000 SLOT 0
.ORGA $00002CED
; Called by: 0000::000004DA
	LD   (IX+$0002),$0001 ;00002CED
	LD   (IX+$0003),$0001 ;00002CF1
	LD   (IX+$000E),$0000 ;00002CF5
	LD   (IX+$000F),$0002 ;00002CF9
	LD   (IX+$0006),$0078 ;00002CFD
	LD   (IX+$0009),$0058 ;00002D01
	ld hl, $2D0B ;00002D05
	jp $3996 ;00002D08
;stopped writing due to overlap with another section

.BANK 0000 SLOT 0
.ORGA $00002D0B
; Called by: 0000::000004DA
	ld a, ($C00D) ;00002D0B
	and $0003 ;00002D0E
	ret z ;00002D10
	nop ; not executed offset: 00002D11
	nop ; not executed offset: 00002D12
	nop ; not executed offset: 00002D13
	nop ; not executed offset: 00002D14
	nop ; not executed offset: 00002D15
	nop ; not executed offset: 00002D16
	nop ; not executed offset: 00002D17
	nop ; not executed offset: 00002D18
	nop ; not executed offset: 00002D19
	nop ; not executed offset: 00002D1A
	nop ; not executed offset: 00002D1B
	nop ; not executed offset: 00002D1C
	nop ; not executed offset: 00002D1D
	nop ; not executed offset: 00002D1E
	nop ; not executed offset: 00002D1F
	nop ; not executed offset: 00002D20
	nop ; not executed offset: 00002D21
	nop ; not executed offset: 00002D22
	nop ; not executed offset: 00002D23
	nop ; not executed offset: 00002D24
	nop ; not executed offset: 00002D25
	nop ; not executed offset: 00002D26
	nop ; not executed offset: 00002D27
	nop ; not executed offset: 00002D28
	nop ; not executed offset: 00002D29
	nop ; not executed offset: 00002D2A
	nop ; not executed offset: 00002D2B
	nop ; not executed offset: 00002D2C
	nop ; not executed offset: 00002D2D
	nop ; not executed offset: 00002D2E
	nop ; not executed offset: 00002D2F
	nop ; not executed offset: 00002D30
	nop ; not executed offset: 00002D31
	nop ; not executed offset: 00002D32
	nop ; not executed offset: 00002D33
	nop ; not executed offset: 00002D34
	nop ; not executed offset: 00002D35
	nop ; not executed offset: 00002D36
	nop ; not executed offset: 00002D37
	nop ; not executed offset: 00002D38
	nop ; not executed offset: 00002D39
	nop ; not executed offset: 00002D3A
	nop ; not executed offset: 00002D3B
	nop ; not executed offset: 00002D3C
	nop ; not executed offset: 00002D3D
	nop ; not executed offset: 00002D3E
	nop ; not executed offset: 00002D3F
	nop ; not executed offset: 00002D40
	nop ; not executed offset: 00002D41
	nop ; not executed offset: 00002D42
	nop ; not executed offset: 00002D43
	nop ; not executed offset: 00002D44
	nop ; not executed offset: 00002D45
	nop ; not executed offset: 00002D46
	nop ; not executed offset: 00002D47
	nop ; not executed offset: 00002D48
	nop ; not executed offset: 00002D49
	nop ; not executed offset: 00002D4A
	nop ; not executed offset: 00002D4B
	nop ; not executed offset: 00002D4C
	nop ; not executed offset: 00002D4D
	nop ; not executed offset: 00002D4E
	nop ; not executed offset: 00002D4F
	nop ; not executed offset: 00002D50
	nop ; not executed offset: 00002D51
	nop ; not executed offset: 00002D52
	nop ; not executed offset: 00002D53
	nop ; not executed offset: 00002D54
	nop ; not executed offset: 00002D55
	nop ; not executed offset: 00002D56
	nop ; not executed offset: 00002D57
	nop ; not executed offset: 00002D58
	nop ; not executed offset: 00002D59
	nop ; not executed offset: 00002D5A
	nop ; not executed offset: 00002D5B
	nop ; not executed offset: 00002D5C
	nop ; not executed offset: 00002D5D
	nop ; not executed offset: 00002D5E
	nop ; not executed offset: 00002D5F
	nop ; not executed offset: 00002D60
	nop ; not executed offset: 00002D61
	nop ; not executed offset: 00002D62
	nop ; not executed offset: 00002D63
	nop ; not executed offset: 00002D64
	nop ; not executed offset: 00002D65
	nop ; not executed offset: 00002D66
	nop ; not executed offset: 00002D67
	nop ; not executed offset: 00002D68
	nop ; not executed offset: 00002D69
	nop ; not executed offset: 00002D6A
	nop ; not executed offset: 00002D6B
	nop ; not executed offset: 00002D6C
	nop ; not executed offset: 00002D6D
	nop ; not executed offset: 00002D6E
	nop ; not executed offset: 00002D6F
	nop ; not executed offset: 00002D70
	nop ; not executed offset: 00002D71
	nop ; not executed offset: 00002D72
	nop ; not executed offset: 00002D73
	nop ; not executed offset: 00002D74
	nop ; not executed offset: 00002D75
	nop ; not executed offset: 00002D76
	nop ; not executed offset: 00002D77
	nop ; not executed offset: 00002D78
	nop ; not executed offset: 00002D79
	nop ; not executed offset: 00002D7A
	nop ; not executed offset: 00002D7B
	nop ; not executed offset: 00002D7C
	nop ; not executed offset: 00002D7D
	nop ; not executed offset: 00002D7E
	nop ; not executed offset: 00002D7F
	nop ; not executed offset: 00002D80
	nop ; not executed offset: 00002D81
	nop ; not executed offset: 00002D82
	nop ; not executed offset: 00002D83
	nop ; not executed offset: 00002D84
	nop ; not executed offset: 00002D85
	nop ; not executed offset: 00002D86
	nop ; not executed offset: 00002D87
	nop ; not executed offset: 00002D88
	nop ; not executed offset: 00002D89
	nop ; not executed offset: 00002D8A
	nop ; not executed offset: 00002D8B
	nop ; not executed offset: 00002D8C
	nop ; not executed offset: 00002D8D
	nop ; not executed offset: 00002D8E
	nop ; not executed offset: 00002D8F
	nop ; not executed offset: 00002D90
	nop ; not executed offset: 00002D91
	nop ; not executed offset: 00002D92
	nop ; not executed offset: 00002D93
	nop ; not executed offset: 00002D94
	nop ; not executed offset: 00002D95
	nop ; not executed offset: 00002D96
	nop ; not executed offset: 00002D97
	nop ; not executed offset: 00002D98
	nop ; not executed offset: 00002D99
	nop ; not executed offset: 00002D9A
	nop ; not executed offset: 00002D9B
	nop ; not executed offset: 00002D9C
	nop ; not executed offset: 00002D9D
	nop ; not executed offset: 00002D9E
	nop ; not executed offset: 00002D9F
	nop ; not executed offset: 00002DA0
	nop ; not executed offset: 00002DA1
	nop ; not executed offset: 00002DA2
	nop ; not executed offset: 00002DA3
	nop ; not executed offset: 00002DA4
	nop ; not executed offset: 00002DA5
	nop ; not executed offset: 00002DA6
	nop ; not executed offset: 00002DA7
	nop ; not executed offset: 00002DA8
	nop ; not executed offset: 00002DA9
	nop ; not executed offset: 00002DAA
	nop ; not executed offset: 00002DAB
	nop ; not executed offset: 00002DAC
	nop ; not executed offset: 00002DAD
	nop ; not executed offset: 00002DAE
	nop ; not executed offset: 00002DAF
	nop ; not executed offset: 00002DB0
	nop ; not executed offset: 00002DB1
	nop ; not executed offset: 00002DB2
	nop ; not executed offset: 00002DB3
	nop ; not executed offset: 00002DB4
	nop ; not executed offset: 00002DB5
	nop ; not executed offset: 00002DB6
	nop ; not executed offset: 00002DB7
	nop ; not executed offset: 00002DB8
	nop ; not executed offset: 00002DB9
	nop ; not executed offset: 00002DBA
	nop ; not executed offset: 00002DBB
	nop ; not executed offset: 00002DBC
	nop ; not executed offset: 00002DBD
	nop ; not executed offset: 00002DBE
	nop ; not executed offset: 00002DBF
	nop ; not executed offset: 00002DC0
	nop ; not executed offset: 00002DC1
	nop ; not executed offset: 00002DC2
	nop ; not executed offset: 00002DC3
	nop ; not executed offset: 00002DC4
	nop ; not executed offset: 00002DC5
	nop ; not executed offset: 00002DC6
	nop ; not executed offset: 00002DC7
	nop ; not executed offset: 00002DC8
	nop ; not executed offset: 00002DC9
	nop ; not executed offset: 00002DCA
	nop ; not executed offset: 00002DCB
	nop ; not executed offset: 00002DCC
	nop ; not executed offset: 00002DCD
	nop ; not executed offset: 00002DCE
	nop ; not executed offset: 00002DCF
	nop ; not executed offset: 00002DD0
	nop ; not executed offset: 00002DD1
	nop ; not executed offset: 00002DD2
	nop ; not executed offset: 00002DD3
	nop ; not executed offset: 00002DD4
	nop ; not executed offset: 00002DD5
	nop ; not executed offset: 00002DD6
	nop ; not executed offset: 00002DD7
	nop ; not executed offset: 00002DD8
	nop ; not executed offset: 00002DD9
	nop ; not executed offset: 00002DDA
	nop ; not executed offset: 00002DDB
	nop ; not executed offset: 00002DDC
	nop ; not executed offset: 00002DDD
	nop ; not executed offset: 00002DDE
	nop ; not executed offset: 00002DDF
	nop ; not executed offset: 00002DE0
	nop ; not executed offset: 00002DE1
	nop ; not executed offset: 00002DE2
	nop ; not executed offset: 00002DE3
	nop ; not executed offset: 00002DE4
	nop ; not executed offset: 00002DE5
	nop ; not executed offset: 00002DE6
	nop ; not executed offset: 00002DE7
	nop ; not executed offset: 00002DE8
	nop ; not executed offset: 00002DE9
	nop ; not executed offset: 00002DEA
	nop ; not executed offset: 00002DEB
	nop ; not executed offset: 00002DEC
	nop ; not executed offset: 00002DED
	nop ; not executed offset: 00002DEE
	nop ; not executed offset: 00002DEF
	nop ; not executed offset: 00002DF0
	nop ; not executed offset: 00002DF1
	nop ; not executed offset: 00002DF2
	nop ; not executed offset: 00002DF3
	nop ; not executed offset: 00002DF4
	nop ; not executed offset: 00002DF5
	nop ; not executed offset: 00002DF6
	nop ; not executed offset: 00002DF7
	nop ; not executed offset: 00002DF8
	nop ; not executed offset: 00002DF9
	nop ; not executed offset: 00002DFA
	nop ; not executed offset: 00002DFB
	nop ; not executed offset: 00002DFC
	nop ; not executed offset: 00002DFD
	nop ; not executed offset: 00002DFE
	nop ; not executed offset: 00002DFF
	nop ; not executed offset: 00002E00
	nop ; not executed offset: 00002E01
	nop ; not executed offset: 00002E02
	nop ; not executed offset: 00002E03
	nop ; not executed offset: 00002E04
	nop ; not executed offset: 00002E05
	nop ; not executed offset: 00002E06
	nop ; not executed offset: 00002E07
	nop ; not executed offset: 00002E08
	nop ; not executed offset: 00002E09
	nop ; not executed offset: 00002E0A
	nop ; not executed offset: 00002E0B
	nop ; not executed offset: 00002E0C
	nop ; not executed offset: 00002E0D
	nop ; not executed offset: 00002E0E
	nop ; not executed offset: 00002E0F
	nop ; not executed offset: 00002E10
	nop ; not executed offset: 00002E11
	nop ; not executed offset: 00002E12
	nop ; not executed offset: 00002E13
	nop ; not executed offset: 00002E14
	nop ; not executed offset: 00002E15
	nop ; not executed offset: 00002E16
	nop ; not executed offset: 00002E17
	nop ; not executed offset: 00002E18
	nop ; not executed offset: 00002E19
	nop ; not executed offset: 00002E1A
	nop ; not executed offset: 00002E1B
	nop ; not executed offset: 00002E1C
	nop ; not executed offset: 00002E1D
	nop ; not executed offset: 00002E1E
	nop ; not executed offset: 00002E1F
	nop ; not executed offset: 00002E20
	nop ; not executed offset: 00002E21
	nop ; not executed offset: 00002E22
	nop ; not executed offset: 00002E23
	nop ; not executed offset: 00002E24
	nop ; not executed offset: 00002E25
	nop ; not executed offset: 00002E26
	nop ; not executed offset: 00002E27
	nop ; not executed offset: 00002E28
	nop ; not executed offset: 00002E29
	nop ; not executed offset: 00002E2A
	nop ; not executed offset: 00002E2B
	nop ; not executed offset: 00002E2C
	nop ; not executed offset: 00002E2D
	nop ; not executed offset: 00002E2E
	nop ; not executed offset: 00002E2F
	nop ; not executed offset: 00002E30
	nop ; not executed offset: 00002E31
	nop ; not executed offset: 00002E32
	nop ; not executed offset: 00002E33
	nop ; not executed offset: 00002E34
	nop ; not executed offset: 00002E35
	nop ; not executed offset: 00002E36
	nop ; not executed offset: 00002E37
	nop ; not executed offset: 00002E38
	nop ; not executed offset: 00002E39
	nop ; not executed offset: 00002E3A
	nop ; not executed offset: 00002E3B
	nop ; not executed offset: 00002E3C
	nop ; not executed offset: 00002E3D
	nop ; not executed offset: 00002E3E
	nop ; not executed offset: 00002E3F
	nop ; not executed offset: 00002E40
	nop ; not executed offset: 00002E41
	nop ; not executed offset: 00002E42
	nop ; not executed offset: 00002E43
	nop ; not executed offset: 00002E44
	nop ; not executed offset: 00002E45
	nop ; not executed offset: 00002E46
	nop ; not executed offset: 00002E47
	nop ; not executed offset: 00002E48
	nop ; not executed offset: 00002E49
	nop ; not executed offset: 00002E4A
	nop ; not executed offset: 00002E4B
	nop ; not executed offset: 00002E4C
	nop ; not executed offset: 00002E4D
	nop ; not executed offset: 00002E4E
	nop ; not executed offset: 00002E4F
	nop ; not executed offset: 00002E50
	nop ; not executed offset: 00002E51
	nop ; not executed offset: 00002E52
	nop ; not executed offset: 00002E53
	nop ; not executed offset: 00002E54
	nop ; not executed offset: 00002E55
	nop ; not executed offset: 00002E56
	nop ; not executed offset: 00002E57
	nop ; not executed offset: 00002E58
	nop ; not executed offset: 00002E59
	nop ; not executed offset: 00002E5A
	nop ; not executed offset: 00002E5B
	nop ; not executed offset: 00002E5C
	nop ; not executed offset: 00002E5D
	nop ; not executed offset: 00002E5E
	nop ; not executed offset: 00002E5F
	nop ; not executed offset: 00002E60
	nop ; not executed offset: 00002E61
	nop ; not executed offset: 00002E62
	nop ; not executed offset: 00002E63
	nop ; not executed offset: 00002E64
	nop ; not executed offset: 00002E65
	nop ; not executed offset: 00002E66
	nop ; not executed offset: 00002E67
	nop ; not executed offset: 00002E68
	nop ; not executed offset: 00002E69
	nop ; not executed offset: 00002E6A
	nop ; not executed offset: 00002E6B
	nop ; not executed offset: 00002E6C
	nop ; not executed offset: 00002E6D
	nop ; not executed offset: 00002E6E
	nop ; not executed offset: 00002E6F
	nop ; not executed offset: 00002E70
	nop ; not executed offset: 00002E71
	nop ; not executed offset: 00002E72
	nop ; not executed offset: 00002E73
	nop ; not executed offset: 00002E74
	nop ; not executed offset: 00002E75
	nop ; not executed offset: 00002E76
	nop ; not executed offset: 00002E77
	nop ; not executed offset: 00002E78
	nop ; not executed offset: 00002E79
	nop ; not executed offset: 00002E7A
	nop ; not executed offset: 00002E7B
	nop ; not executed offset: 00002E7C
	nop ; not executed offset: 00002E7D
	nop ; not executed offset: 00002E7E
	nop ; not executed offset: 00002E7F
	nop ; not executed offset: 00002E80
	nop ; not executed offset: 00002E81
	nop ; not executed offset: 00002E82
	nop ; not executed offset: 00002E83
	nop ; not executed offset: 00002E84
	nop ; not executed offset: 00002E85
	nop ; not executed offset: 00002E86
	nop ; not executed offset: 00002E87
	nop ; not executed offset: 00002E88
	nop ; not executed offset: 00002E89
	nop ; not executed offset: 00002E8A
	nop ; not executed offset: 00002E8B
	nop ; not executed offset: 00002E8C
	nop ; not executed offset: 00002E8D
	nop ; not executed offset: 00002E8E
	nop ; not executed offset: 00002E8F
	nop ; not executed offset: 00002E90
	nop ; not executed offset: 00002E91
	nop ; not executed offset: 00002E92
	nop ; not executed offset: 00002E93
	nop ; not executed offset: 00002E94
	nop ; not executed offset: 00002E95
	nop ; not executed offset: 00002E96
	nop ; not executed offset: 00002E97
	nop ; not executed offset: 00002E98
	nop ; not executed offset: 00002E99
	nop ; not executed offset: 00002E9A
	nop ; not executed offset: 00002E9B
	nop ; not executed offset: 00002E9C
	nop ; not executed offset: 00002E9D
	nop ; not executed offset: 00002E9E
	nop ; not executed offset: 00002E9F
	nop ; not executed offset: 00002EA0
	nop ; not executed offset: 00002EA1
	nop ; not executed offset: 00002EA2
	nop ; not executed offset: 00002EA3
	nop ; not executed offset: 00002EA4
	nop ; not executed offset: 00002EA5
	nop ; not executed offset: 00002EA6
	nop ; not executed offset: 00002EA7
	nop ; not executed offset: 00002EA8
	nop ; not executed offset: 00002EA9
	nop ; not executed offset: 00002EAA
	nop ; not executed offset: 00002EAB
	nop ; not executed offset: 00002EAC
	nop ; not executed offset: 00002EAD
	nop ; not executed offset: 00002EAE
	nop ; not executed offset: 00002EAF
	nop ; not executed offset: 00002EB0
	nop ; not executed offset: 00002EB1
	nop ; not executed offset: 00002EB2
	nop ; not executed offset: 00002EB3
	nop ; not executed offset: 00002EB4
	nop ; not executed offset: 00002EB5
	nop ; not executed offset: 00002EB6
	nop ; not executed offset: 00002EB7
	nop ; not executed offset: 00002EB8
	nop ; not executed offset: 00002EB9
	nop ; not executed offset: 00002EBA
	nop ; not executed offset: 00002EBB
	nop ; not executed offset: 00002EBC
	nop ; not executed offset: 00002EBD
	nop ; not executed offset: 00002EBE
	nop ; not executed offset: 00002EBF
	nop ; not executed offset: 00002EC0
	nop ; not executed offset: 00002EC1
	nop ; not executed offset: 00002EC2
	nop ; not executed offset: 00002EC3
	nop ; not executed offset: 00002EC4
	nop ; not executed offset: 00002EC5
	nop ; not executed offset: 00002EC6
	nop ; not executed offset: 00002EC7
	nop ; not executed offset: 00002EC8
	nop ; not executed offset: 00002EC9
	nop ; not executed offset: 00002ECA
	nop ; not executed offset: 00002ECB
	nop ; not executed offset: 00002ECC
	nop ; not executed offset: 00002ECD
	nop ; not executed offset: 00002ECE
	nop ; not executed offset: 00002ECF
	nop ; not executed offset: 00002ED0
	nop ; not executed offset: 00002ED1
	nop ; not executed offset: 00002ED2
	nop ; not executed offset: 00002ED3
	nop ; not executed offset: 00002ED4
	nop ; not executed offset: 00002ED5
	nop ; not executed offset: 00002ED6
	nop ; not executed offset: 00002ED7
	nop ; not executed offset: 00002ED8
	nop ; not executed offset: 00002ED9
	nop ; not executed offset: 00002EDA
	nop ; not executed offset: 00002EDB
	nop ; not executed offset: 00002EDC
	nop ; not executed offset: 00002EDD
	nop ; not executed offset: 00002EDE
	nop ; not executed offset: 00002EDF
	nop ; not executed offset: 00002EE0
	nop ; not executed offset: 00002EE1
	nop ; not executed offset: 00002EE2
	nop ; not executed offset: 00002EE3
	nop ; not executed offset: 00002EE4
	nop ; not executed offset: 00002EE5
	nop ; not executed offset: 00002EE6
	nop ; not executed offset: 00002EE7
	nop ; not executed offset: 00002EE8
	nop ; not executed offset: 00002EE9
	nop ; not executed offset: 00002EEA
	nop ; not executed offset: 00002EEB
	nop ; not executed offset: 00002EEC
	nop ; not executed offset: 00002EED
	nop ; not executed offset: 00002EEE
	nop ; not executed offset: 00002EEF
	nop ; not executed offset: 00002EF0
	nop ; not executed offset: 00002EF1
	nop ; not executed offset: 00002EF2
	nop ; not executed offset: 00002EF3
	nop ; not executed offset: 00002EF4
	nop ; not executed offset: 00002EF5
	nop ; not executed offset: 00002EF6
	nop ; not executed offset: 00002EF7
	nop ; not executed offset: 00002EF8
	nop ; not executed offset: 00002EF9
	nop ; not executed offset: 00002EFA
	nop ; not executed offset: 00002EFB
	nop ; not executed offset: 00002EFC
	nop ; not executed offset: 00002EFD
	nop ; not executed offset: 00002EFE
	nop ; not executed offset: 00002EFF
	nop ; not executed offset: 00002F00
	nop ; not executed offset: 00002F01
	nop ; not executed offset: 00002F02
	nop ; not executed offset: 00002F03
	nop ; not executed offset: 00002F04
	nop ; not executed offset: 00002F05
	nop ; not executed offset: 00002F06
	nop ; not executed offset: 00002F07
	nop ; not executed offset: 00002F08
	nop ; not executed offset: 00002F09
	nop ; not executed offset: 00002F0A
	nop ; not executed offset: 00002F0B
	nop ; not executed offset: 00002F0C
	nop ; not executed offset: 00002F0D
	nop ; not executed offset: 00002F0E
	nop ; not executed offset: 00002F0F
	nop ; not executed offset: 00002F10
	nop ; not executed offset: 00002F11
	nop ; not executed offset: 00002F12
	nop ; not executed offset: 00002F13
	nop ; not executed offset: 00002F14
	nop ; not executed offset: 00002F15
	nop ; not executed offset: 00002F16
	nop ; not executed offset: 00002F17
	nop ; not executed offset: 00002F18
	nop ; not executed offset: 00002F19
	nop ; not executed offset: 00002F1A
	nop ; not executed offset: 00002F1B
	nop ; not executed offset: 00002F1C
	nop ; not executed offset: 00002F1D
	nop ; not executed offset: 00002F1E
	nop ; not executed offset: 00002F1F
	nop ; not executed offset: 00002F20
	nop ; not executed offset: 00002F21
	nop ; not executed offset: 00002F22
	nop ; not executed offset: 00002F23
	nop ; not executed offset: 00002F24
	nop ; not executed offset: 00002F25
	nop ; not executed offset: 00002F26
	nop ; not executed offset: 00002F27
	nop ; not executed offset: 00002F28
	nop ; not executed offset: 00002F29
	nop ; not executed offset: 00002F2A
	nop ; not executed offset: 00002F2B
	nop ; not executed offset: 00002F2C
	nop ; not executed offset: 00002F2D
	nop ; not executed offset: 00002F2E
	nop ; not executed offset: 00002F2F
	nop ; not executed offset: 00002F30
	nop ; not executed offset: 00002F31
	nop ; not executed offset: 00002F32
	nop ; not executed offset: 00002F33
	nop ; not executed offset: 00002F34
	nop ; not executed offset: 00002F35
	nop ; not executed offset: 00002F36
	nop ; not executed offset: 00002F37
	nop ; not executed offset: 00002F38
	nop ; not executed offset: 00002F39
	nop ; not executed offset: 00002F3A
	nop ; not executed offset: 00002F3B
	nop ; not executed offset: 00002F3C
	nop ; not executed offset: 00002F3D
	nop ; not executed offset: 00002F3E
	nop ; not executed offset: 00002F3F
	nop ; not executed offset: 00002F40
	nop ; not executed offset: 00002F41
	nop ; not executed offset: 00002F42
	nop ; not executed offset: 00002F43
	nop ; not executed offset: 00002F44
	nop ; not executed offset: 00002F45
	nop ; not executed offset: 00002F46
	nop ; not executed offset: 00002F47
	nop ; not executed offset: 00002F48
	nop ; not executed offset: 00002F49
	nop ; not executed offset: 00002F4A
	nop ; not executed offset: 00002F4B
	nop ; not executed offset: 00002F4C
	nop ; not executed offset: 00002F4D
	nop ; not executed offset: 00002F4E
	nop ; not executed offset: 00002F4F
	nop ; not executed offset: 00002F50
	nop ; not executed offset: 00002F51
	nop ; not executed offset: 00002F52
	nop ; not executed offset: 00002F53
	nop ; not executed offset: 00002F54
	nop ; not executed offset: 00002F55
	nop ; not executed offset: 00002F56
	nop ; not executed offset: 00002F57
	nop ; not executed offset: 00002F58
	nop ; not executed offset: 00002F59
	nop ; not executed offset: 00002F5A
	nop ; not executed offset: 00002F5B
	nop ; not executed offset: 00002F5C
	nop ; not executed offset: 00002F5D
	nop ; not executed offset: 00002F5E
	nop ; not executed offset: 00002F5F
	nop ; not executed offset: 00002F60
	nop ; not executed offset: 00002F61
	nop ; not executed offset: 00002F62
	nop ; not executed offset: 00002F63
	nop ; not executed offset: 00002F64
	nop ; not executed offset: 00002F65
	nop ; not executed offset: 00002F66
	nop ; not executed offset: 00002F67
	nop ; not executed offset: 00002F68
	nop ; not executed offset: 00002F69
	nop ; not executed offset: 00002F6A
	nop ; not executed offset: 00002F6B
	nop ; not executed offset: 00002F6C
	nop ; not executed offset: 00002F6D
	nop ; not executed offset: 00002F6E
	nop ; not executed offset: 00002F6F
	nop ; not executed offset: 00002F70
	nop ; not executed offset: 00002F71
	nop ; not executed offset: 00002F72
	nop ; not executed offset: 00002F73
	nop ; not executed offset: 00002F74
	nop ; not executed offset: 00002F75
	nop ; not executed offset: 00002F76
	nop ; not executed offset: 00002F77
	nop ; not executed offset: 00002F78
	nop ; not executed offset: 00002F79
	nop ; not executed offset: 00002F7A
	nop ; not executed offset: 00002F7B
	nop ; not executed offset: 00002F7C
	nop ; not executed offset: 00002F7D
	nop ; not executed offset: 00002F7E
	nop ; not executed offset: 00002F7F
	nop ; not executed offset: 00002F80
	nop ; not executed offset: 00002F81
	nop ; not executed offset: 00002F82
	nop ; not executed offset: 00002F83
	nop ; not executed offset: 00002F84
	nop ; not executed offset: 00002F85
	nop ; not executed offset: 00002F86
	nop ; not executed offset: 00002F87
	nop ; not executed offset: 00002F88
	nop ; not executed offset: 00002F89
	nop ; not executed offset: 00002F8A
	nop ; not executed offset: 00002F8B
	nop ; not executed offset: 00002F8C
	nop ; not executed offset: 00002F8D
	nop ; not executed offset: 00002F8E
	nop ; not executed offset: 00002F8F
	nop ; not executed offset: 00002F90
	nop ; not executed offset: 00002F91
	nop ; not executed offset: 00002F92
	nop ; not executed offset: 00002F93
	nop ; not executed offset: 00002F94
	nop ; not executed offset: 00002F95
	nop ; not executed offset: 00002F96
	nop ; not executed offset: 00002F97
	nop ; not executed offset: 00002F98
	nop ; not executed offset: 00002F99
	nop ; not executed offset: 00002F9A
	nop ; not executed offset: 00002F9B
	nop ; not executed offset: 00002F9C
	nop ; not executed offset: 00002F9D
	nop ; not executed offset: 00002F9E
	nop ; not executed offset: 00002F9F
	nop ; not executed offset: 00002FA0
	nop ; not executed offset: 00002FA1
	nop ; not executed offset: 00002FA2
	nop ; not executed offset: 00002FA3
	nop ; not executed offset: 00002FA4
	nop ; not executed offset: 00002FA5
	nop ; not executed offset: 00002FA6
	nop ; not executed offset: 00002FA7
	nop ; not executed offset: 00002FA8
	nop ; not executed offset: 00002FA9
	nop ; not executed offset: 00002FAA
	nop ; not executed offset: 00002FAB
	nop ; not executed offset: 00002FAC
	nop ; not executed offset: 00002FAD
	nop ; not executed offset: 00002FAE
	nop ; not executed offset: 00002FAF
	nop ; not executed offset: 00002FB0
	nop ; not executed offset: 00002FB1
	nop ; not executed offset: 00002FB2
	nop ; not executed offset: 00002FB3
	nop ; not executed offset: 00002FB4
	nop ; not executed offset: 00002FB5
	nop ; not executed offset: 00002FB6
	nop ; not executed offset: 00002FB7
	nop ; not executed offset: 00002FB8
	nop ; not executed offset: 00002FB9
	nop ; not executed offset: 00002FBA
	nop ; not executed offset: 00002FBB
	nop ; not executed offset: 00002FBC
	nop ; not executed offset: 00002FBD
	nop ; not executed offset: 00002FBE
	nop ; not executed offset: 00002FBF
	nop ; not executed offset: 00002FC0
	nop ; not executed offset: 00002FC1
	nop ; not executed offset: 00002FC2
	nop ; not executed offset: 00002FC3
	nop ; not executed offset: 00002FC4
	nop ; not executed offset: 00002FC5
	nop ; not executed offset: 00002FC6
	nop ; not executed offset: 00002FC7
	nop ; not executed offset: 00002FC8
	nop ; not executed offset: 00002FC9
	nop ; not executed offset: 00002FCA
	nop ; not executed offset: 00002FCB
	nop ; not executed offset: 00002FCC
	nop ; not executed offset: 00002FCD
	nop ; not executed offset: 00002FCE
	nop ; not executed offset: 00002FCF
	nop ; not executed offset: 00002FD0
	nop ; not executed offset: 00002FD1
	nop ; not executed offset: 00002FD2
	nop ; not executed offset: 00002FD3
	nop ; not executed offset: 00002FD4
	nop ; not executed offset: 00002FD5
	nop ; not executed offset: 00002FD6
	nop ; not executed offset: 00002FD7
	nop ; not executed offset: 00002FD8
	nop ; not executed offset: 00002FD9
	nop ; not executed offset: 00002FDA
	nop ; not executed offset: 00002FDB
	nop ; not executed offset: 00002FDC
	nop ; not executed offset: 00002FDD
	nop ; not executed offset: 00002FDE
	nop ; not executed offset: 00002FDF
	nop ; not executed offset: 00002FE0
	nop ; not executed offset: 00002FE1
	nop ; not executed offset: 00002FE2
	nop ; not executed offset: 00002FE3
	nop ; not executed offset: 00002FE4
	nop ; not executed offset: 00002FE5
	nop ; not executed offset: 00002FE6
	nop ; not executed offset: 00002FE7
	nop ; not executed offset: 00002FE8
	nop ; not executed offset: 00002FE9
	nop ; not executed offset: 00002FEA
	nop ; not executed offset: 00002FEB
	nop ; not executed offset: 00002FEC
	nop ; not executed offset: 00002FED
	nop ; not executed offset: 00002FEE
	nop ; not executed offset: 00002FEF
	nop ; not executed offset: 00002FF0
	nop ; not executed offset: 00002FF1
	nop ; not executed offset: 00002FF2
	nop ; not executed offset: 00002FF3
	nop ; not executed offset: 00002FF4
	nop ; not executed offset: 00002FF5
	nop ; not executed offset: 00002FF6
	nop ; not executed offset: 00002FF7
	nop ; not executed offset: 00002FF8
	nop ; not executed offset: 00002FF9
	nop ; not executed offset: 00002FFA
	nop ; not executed offset: 00002FFB
	nop ; not executed offset: 00002FFC
	nop ; not executed offset: 00002FFD
	nop ; not executed offset: 00002FFE
	nop ; not executed offset: 00002FFF
	nop ; not executed offset: 00003000
	nop ; not executed offset: 00003001
	nop ; not executed offset: 00003002
	nop ; not executed offset: 00003003
	nop ; not executed offset: 00003004
	nop ; not executed offset: 00003005
	nop ; not executed offset: 00003006
	nop ; not executed offset: 00003007
	nop ; not executed offset: 00003008
	nop ; not executed offset: 00003009
	nop ; not executed offset: 0000300A
	nop ; not executed offset: 0000300B
	nop ; not executed offset: 0000300C
	nop ; not executed offset: 0000300D
	nop ; not executed offset: 0000300E
	nop ; not executed offset: 0000300F
	nop ; not executed offset: 00003010
	nop ; not executed offset: 00003011
	nop ; not executed offset: 00003012
	nop ; not executed offset: 00003013
	nop ; not executed offset: 00003014
	nop ; not executed offset: 00003015
	nop ; not executed offset: 00003016
	nop ; not executed offset: 00003017
	nop ; not executed offset: 00003018
	nop ; not executed offset: 00003019
	nop ; not executed offset: 0000301A
	nop ; not executed offset: 0000301B
	nop ; not executed offset: 0000301C
	nop ; not executed offset: 0000301D
	nop ; not executed offset: 0000301E
	nop ; not executed offset: 0000301F
	nop ; not executed offset: 00003020
	nop ; not executed offset: 00003021
	nop ; not executed offset: 00003022
	nop ; not executed offset: 00003023
	nop ; not executed offset: 00003024
	nop ; not executed offset: 00003025
	nop ; not executed offset: 00003026
	nop ; not executed offset: 00003027
	nop ; not executed offset: 00003028
	nop ; not executed offset: 00003029
	nop ; not executed offset: 0000302A
	nop ; not executed offset: 0000302B
	nop ; not executed offset: 0000302C
	nop ; not executed offset: 0000302D
	nop ; not executed offset: 0000302E
	nop ; not executed offset: 0000302F
	nop ; not executed offset: 00003030
	nop ; not executed offset: 00003031
	nop ; not executed offset: 00003032
	nop ; not executed offset: 00003033
	nop ; not executed offset: 00003034
	nop ; not executed offset: 00003035
	nop ; not executed offset: 00003036
	nop ; not executed offset: 00003037
	nop ; not executed offset: 00003038
	nop ; not executed offset: 00003039
	nop ; not executed offset: 0000303A
	nop ; not executed offset: 0000303B
	nop ; not executed offset: 0000303C
	nop ; not executed offset: 0000303D
	nop ; not executed offset: 0000303E
	nop ; not executed offset: 0000303F
	nop ; not executed offset: 00003040
	nop ; not executed offset: 00003041
	nop ; not executed offset: 00003042
	nop ; not executed offset: 00003043
	nop ; not executed offset: 00003044
	nop ; not executed offset: 00003045
	nop ; not executed offset: 00003046
	nop ; not executed offset: 00003047
	nop ; not executed offset: 00003048
	nop ; not executed offset: 00003049
	nop ; not executed offset: 0000304A
	nop ; not executed offset: 0000304B
	nop ; not executed offset: 0000304C
	nop ; not executed offset: 0000304D
	nop ; not executed offset: 0000304E
	nop ; not executed offset: 0000304F
	nop ; not executed offset: 00003050
	nop ; not executed offset: 00003051
	nop ; not executed offset: 00003052
	nop ; not executed offset: 00003053
	nop ; not executed offset: 00003054
	nop ; not executed offset: 00003055
	nop ; not executed offset: 00003056
	nop ; not executed offset: 00003057
	nop ; not executed offset: 00003058
	nop ; not executed offset: 00003059
	nop ; not executed offset: 0000305A
	nop ; not executed offset: 0000305B
	nop ; not executed offset: 0000305C
	nop ; not executed offset: 0000305D
	nop ; not executed offset: 0000305E
	nop ; not executed offset: 0000305F
	nop ; not executed offset: 00003060
	nop ; not executed offset: 00003061
	nop ; not executed offset: 00003062
	nop ; not executed offset: 00003063
	nop ; not executed offset: 00003064
	nop ; not executed offset: 00003065
	nop ; not executed offset: 00003066
	nop ; not executed offset: 00003067
	nop ; not executed offset: 00003068
	nop ; not executed offset: 00003069
	nop ; not executed offset: 0000306A
	nop ; not executed offset: 0000306B
	nop ; not executed offset: 0000306C
	nop ; not executed offset: 0000306D
	nop ; not executed offset: 0000306E
	nop ; not executed offset: 0000306F
	nop ; not executed offset: 00003070
	nop ; not executed offset: 00003071
	nop ; not executed offset: 00003072
	nop ; not executed offset: 00003073
	nop ; not executed offset: 00003074
	nop ; not executed offset: 00003075
	nop ; not executed offset: 00003076
	nop ; not executed offset: 00003077
	nop ; not executed offset: 00003078
	nop ; not executed offset: 00003079
	nop ; not executed offset: 0000307A
	nop ; not executed offset: 0000307B
	nop ; not executed offset: 0000307C
	nop ; not executed offset: 0000307D
	nop ; not executed offset: 0000307E
	nop ; not executed offset: 0000307F
	nop ; not executed offset: 00003080
	nop ; not executed offset: 00003081
	nop ; not executed offset: 00003082
	nop ; not executed offset: 00003083
	nop ; not executed offset: 00003084
	nop ; not executed offset: 00003085
	nop ; not executed offset: 00003086
	nop ; not executed offset: 00003087
	nop ; not executed offset: 00003088
	nop ; not executed offset: 00003089
	nop ; not executed offset: 0000308A
	nop ; not executed offset: 0000308B
	nop ; not executed offset: 0000308C
	nop ; not executed offset: 0000308D
	nop ; not executed offset: 0000308E
	nop ; not executed offset: 0000308F
	nop ; not executed offset: 00003090
	nop ; not executed offset: 00003091
	nop ; not executed offset: 00003092
	nop ; not executed offset: 00003093
	nop ; not executed offset: 00003094
	nop ; not executed offset: 00003095
	nop ; not executed offset: 00003096
	nop ; not executed offset: 00003097
	nop ; not executed offset: 00003098
	nop ; not executed offset: 00003099
	nop ; not executed offset: 0000309A
	nop ; not executed offset: 0000309B
	nop ; not executed offset: 0000309C
	nop ; not executed offset: 0000309D
	nop ; not executed offset: 0000309E
	nop ; not executed offset: 0000309F
	nop ; not executed offset: 000030A0
	nop ; not executed offset: 000030A1
	nop ; not executed offset: 000030A2
	nop ; not executed offset: 000030A3
	nop ; not executed offset: 000030A4
	nop ; not executed offset: 000030A5
	nop ; not executed offset: 000030A6
	nop ; not executed offset: 000030A7
	nop ; not executed offset: 000030A8
	nop ; not executed offset: 000030A9
	nop ; not executed offset: 000030AA
	nop ; not executed offset: 000030AB
	nop ; not executed offset: 000030AC
	nop ; not executed offset: 000030AD
	nop ; not executed offset: 000030AE
	nop ; not executed offset: 000030AF
	nop ; not executed offset: 000030B0
	nop ; not executed offset: 000030B1
	nop ; not executed offset: 000030B2
	nop ; not executed offset: 000030B3
	nop ; not executed offset: 000030B4
	nop ; not executed offset: 000030B5
	nop ; not executed offset: 000030B6
	nop ; not executed offset: 000030B7
	nop ; not executed offset: 000030B8
	nop ; not executed offset: 000030B9
	nop ; not executed offset: 000030BA
	nop ; not executed offset: 000030BB
	nop ; not executed offset: 000030BC
	nop ; not executed offset: 000030BD
	nop ; not executed offset: 000030BE
	nop ; not executed offset: 000030BF
	nop ; not executed offset: 000030C0
	nop ; not executed offset: 000030C1
	nop ; not executed offset: 000030C2
	nop ; not executed offset: 000030C3
	nop ; not executed offset: 000030C4
	nop ; not executed offset: 000030C5
	nop ; not executed offset: 000030C6
	nop ; not executed offset: 000030C7
	nop ; not executed offset: 000030C8
	nop ; not executed offset: 000030C9
	nop ; not executed offset: 000030CA
	nop ; not executed offset: 000030CB
	nop ; not executed offset: 000030CC
	nop ; not executed offset: 000030CD
	nop ; not executed offset: 000030CE
	nop ; not executed offset: 000030CF
	nop ; not executed offset: 000030D0
	nop ; not executed offset: 000030D1
	nop ; not executed offset: 000030D2
	nop ; not executed offset: 000030D3
	nop ; not executed offset: 000030D4
	nop ; not executed offset: 000030D5
	nop ; not executed offset: 000030D6
	nop ; not executed offset: 000030D7
	nop ; not executed offset: 000030D8
	nop ; not executed offset: 000030D9
	nop ; not executed offset: 000030DA
	nop ; not executed offset: 000030DB
	nop ; not executed offset: 000030DC
	nop ; not executed offset: 000030DD
	nop ; not executed offset: 000030DE
	nop ; not executed offset: 000030DF
	nop ; not executed offset: 000030E0
	nop ; not executed offset: 000030E1
	nop ; not executed offset: 000030E2
	nop ; not executed offset: 000030E3
	nop ; not executed offset: 000030E4
	nop ; not executed offset: 000030E5
	nop ; not executed offset: 000030E6
	nop ; not executed offset: 000030E7
	nop ; not executed offset: 000030E8
	nop ; not executed offset: 000030E9
	nop ; not executed offset: 000030EA
	nop ; not executed offset: 000030EB
	nop ; not executed offset: 000030EC
	nop ; not executed offset: 000030ED
	nop ; not executed offset: 000030EE
	nop ; not executed offset: 000030EF
	nop ; not executed offset: 000030F0
	nop ; not executed offset: 000030F1
	nop ; not executed offset: 000030F2
	nop ; not executed offset: 000030F3
	nop ; not executed offset: 000030F4
	nop ; not executed offset: 000030F5
	nop ; not executed offset: 000030F6
	nop ; not executed offset: 000030F7
	nop ; not executed offset: 000030F8
	nop ; not executed offset: 000030F9
	nop ; not executed offset: 000030FA
	nop ; not executed offset: 000030FB
	nop ; not executed offset: 000030FC
	nop ; not executed offset: 000030FD
	nop ; not executed offset: 000030FE
	nop ; not executed offset: 000030FF
	nop ; not executed offset: 00003100
	nop ; not executed offset: 00003101
	nop ; not executed offset: 00003102
	nop ; not executed offset: 00003103
	nop ; not executed offset: 00003104
	nop ; not executed offset: 00003105
	nop ; not executed offset: 00003106
	nop ; not executed offset: 00003107
	nop ; not executed offset: 00003108
	nop ; not executed offset: 00003109
	nop ; not executed offset: 0000310A
	nop ; not executed offset: 0000310B
	nop ; not executed offset: 0000310C
	nop ; not executed offset: 0000310D
	nop ; not executed offset: 0000310E
	nop ; not executed offset: 0000310F
	nop ; not executed offset: 00003110
	nop ; not executed offset: 00003111
	nop ; not executed offset: 00003112
	nop ; not executed offset: 00003113
	nop ; not executed offset: 00003114
	nop ; not executed offset: 00003115
	nop ; not executed offset: 00003116
	nop ; not executed offset: 00003117
	nop ; not executed offset: 00003118
	nop ; not executed offset: 00003119
	nop ; not executed offset: 0000311A
	nop ; not executed offset: 0000311B
	nop ; not executed offset: 0000311C
	nop ; not executed offset: 0000311D
	nop ; not executed offset: 0000311E
	nop ; not executed offset: 0000311F
	nop ; not executed offset: 00003120
	nop ; not executed offset: 00003121
	nop ; not executed offset: 00003122
	nop ; not executed offset: 00003123
	nop ; not executed offset: 00003124
	nop ; not executed offset: 00003125
	nop ; not executed offset: 00003126
	nop ; not executed offset: 00003127
	nop ; not executed offset: 00003128
	nop ; not executed offset: 00003129
	nop ; not executed offset: 0000312A
	nop ; not executed offset: 0000312B
	nop ; not executed offset: 0000312C
	nop ; not executed offset: 0000312D
	nop ; not executed offset: 0000312E
	nop ; not executed offset: 0000312F
	nop ; not executed offset: 00003130
	nop ; not executed offset: 00003131
	nop ; not executed offset: 00003132
	nop ; not executed offset: 00003133
	nop ; not executed offset: 00003134
	nop ; not executed offset: 00003135
	nop ; not executed offset: 00003136
	nop ; not executed offset: 00003137
	nop ; not executed offset: 00003138
	nop ; not executed offset: 00003139
	nop ; not executed offset: 0000313A
	nop ; not executed offset: 0000313B
	nop ; not executed offset: 0000313C
	nop ; not executed offset: 0000313D
	nop ; not executed offset: 0000313E
	nop ; not executed offset: 0000313F
	nop ; not executed offset: 00003140
	nop ; not executed offset: 00003141
	nop ; not executed offset: 00003142
	nop ; not executed offset: 00003143
	nop ; not executed offset: 00003144
	nop ; not executed offset: 00003145
	nop ; not executed offset: 00003146
	nop ; not executed offset: 00003147
	nop ; not executed offset: 00003148
	nop ; not executed offset: 00003149
	nop ; not executed offset: 0000314A
	nop ; not executed offset: 0000314B
	nop ; not executed offset: 0000314C
	nop ; not executed offset: 0000314D
	nop ; not executed offset: 0000314E
	nop ; not executed offset: 0000314F
	nop ; not executed offset: 00003150
	nop ; not executed offset: 00003151
	nop ; not executed offset: 00003152
	nop ; not executed offset: 00003153
	nop ; not executed offset: 00003154
	nop ; not executed offset: 00003155
	nop ; not executed offset: 00003156
	nop ; not executed offset: 00003157
; Reached max number of instruction bytes


.BANK 0000 SLOT 0
.ORGA $00003996
; Called by: 0000::00002C9B
; Called by: 0000::00002CD6
; Called by: 0000::00002D08
	LD   (IX+$0000),L ;00003996
	LD   (IX+$0001),H ;00003999
	ret ;0000399C
	nop ; not executed offset: 0000399D
	nop ; not executed offset: 0000399E
	nop ; not executed offset: 0000399F
	nop ; not executed offset: 000039A0
	nop ; not executed offset: 000039A1
	nop ; not executed offset: 000039A2
	nop ; not executed offset: 000039A3
	nop ; not executed offset: 000039A4
	nop ; not executed offset: 000039A5
	nop ; not executed offset: 000039A6
	nop ; not executed offset: 000039A7
	nop ; not executed offset: 000039A8
	nop ; not executed offset: 000039A9
	nop ; not executed offset: 000039AA
	nop ; not executed offset: 000039AB
	nop ; not executed offset: 000039AC
	nop ; not executed offset: 000039AD
	nop ; not executed offset: 000039AE
	nop ; not executed offset: 000039AF
	nop ; not executed offset: 000039B0
	nop ; not executed offset: 000039B1
	nop ; not executed offset: 000039B2
	nop ; not executed offset: 000039B3
	nop ; not executed offset: 000039B4
	nop ; not executed offset: 000039B5
	nop ; not executed offset: 000039B6
	nop ; not executed offset: 000039B7
	nop ; not executed offset: 000039B8
	nop ; not executed offset: 000039B9
	nop ; not executed offset: 000039BA
	nop ; not executed offset: 000039BB
	nop ; not executed offset: 000039BC
	nop ; not executed offset: 000039BD
	nop ; not executed offset: 000039BE
	nop ; not executed offset: 000039BF
	nop ; not executed offset: 000039C0
	nop ; not executed offset: 000039C1
	nop ; not executed offset: 000039C2
	nop ; not executed offset: 000039C3
	nop ; not executed offset: 000039C4
	nop ; not executed offset: 000039C5
	nop ; not executed offset: 000039C6
	nop ; not executed offset: 000039C7
	nop ; not executed offset: 000039C8
	nop ; not executed offset: 000039C9
	nop ; not executed offset: 000039CA
	nop ; not executed offset: 000039CB
	nop ; not executed offset: 000039CC
	nop ; not executed offset: 000039CD
	nop ; not executed offset: 000039CE
	nop ; not executed offset: 000039CF
	nop ; not executed offset: 000039D0
	nop ; not executed offset: 000039D1
	nop ; not executed offset: 000039D2
	nop ; not executed offset: 000039D3
	nop ; not executed offset: 000039D4
	nop ; not executed offset: 000039D5
	nop ; not executed offset: 000039D6
	nop ; not executed offset: 000039D7
	nop ; not executed offset: 000039D8
	nop ; not executed offset: 000039D9
	nop ; not executed offset: 000039DA
	nop ; not executed offset: 000039DB
	nop ; not executed offset: 000039DC
	nop ; not executed offset: 000039DD
	nop ; not executed offset: 000039DE
	nop ; not executed offset: 000039DF
	nop ; not executed offset: 000039E0
	nop ; not executed offset: 000039E1
	nop ; not executed offset: 000039E2
	nop ; not executed offset: 000039E3
	nop ; not executed offset: 000039E4
	nop ; not executed offset: 000039E5
	nop ; not executed offset: 000039E6
	nop ; not executed offset: 000039E7
	nop ; not executed offset: 000039E8
	nop ; not executed offset: 000039E9
	nop ; not executed offset: 000039EA
	nop ; not executed offset: 000039EB
	nop ; not executed offset: 000039EC
	nop ; not executed offset: 000039ED
	nop ; not executed offset: 000039EE
	nop ; not executed offset: 000039EF
	nop ; not executed offset: 000039F0
	nop ; not executed offset: 000039F1
	nop ; not executed offset: 000039F2
	nop ; not executed offset: 000039F3
	nop ; not executed offset: 000039F4
	nop ; not executed offset: 000039F5
	nop ; not executed offset: 000039F6
	nop ; not executed offset: 000039F7
	nop ; not executed offset: 000039F8
	nop ; not executed offset: 000039F9
	nop ; not executed offset: 000039FA
	nop ; not executed offset: 000039FB
	nop ; not executed offset: 000039FC
	nop ; not executed offset: 000039FD
	nop ; not executed offset: 000039FE
	nop ; not executed offset: 000039FF
	nop ; not executed offset: 00003A00
	nop ; not executed offset: 00003A01
	nop ; not executed offset: 00003A02
	nop ; not executed offset: 00003A03
	nop ; not executed offset: 00003A04
	nop ; not executed offset: 00003A05
	nop ; not executed offset: 00003A06
	nop ; not executed offset: 00003A07
	nop ; not executed offset: 00003A08
	nop ; not executed offset: 00003A09
	nop ; not executed offset: 00003A0A
	nop ; not executed offset: 00003A0B
	nop ; not executed offset: 00003A0C
	nop ; not executed offset: 00003A0D
	nop ; not executed offset: 00003A0E
	nop ; not executed offset: 00003A0F
	nop ; not executed offset: 00003A10
	nop ; not executed offset: 00003A11
	nop ; not executed offset: 00003A12
	nop ; not executed offset: 00003A13
	nop ; not executed offset: 00003A14
	nop ; not executed offset: 00003A15
	nop ; not executed offset: 00003A16
	nop ; not executed offset: 00003A17
	nop ; not executed offset: 00003A18
	nop ; not executed offset: 00003A19
	nop ; not executed offset: 00003A1A
	nop ; not executed offset: 00003A1B
	nop ; not executed offset: 00003A1C
	nop ; not executed offset: 00003A1D
	nop ; not executed offset: 00003A1E
	nop ; not executed offset: 00003A1F
	nop ; not executed offset: 00003A20
	nop ; not executed offset: 00003A21
	nop ; not executed offset: 00003A22
	nop ; not executed offset: 00003A23
	nop ; not executed offset: 00003A24
	nop ; not executed offset: 00003A25
	nop ; not executed offset: 00003A26
	nop ; not executed offset: 00003A27
	nop ; not executed offset: 00003A28
	nop ; not executed offset: 00003A29
	nop ; not executed offset: 00003A2A
	nop ; not executed offset: 00003A2B
	nop ; not executed offset: 00003A2C
	nop ; not executed offset: 00003A2D
	nop ; not executed offset: 00003A2E
	nop ; not executed offset: 00003A2F
	nop ; not executed offset: 00003A30
	nop ; not executed offset: 00003A31
	nop ; not executed offset: 00003A32
	nop ; not executed offset: 00003A33
	nop ; not executed offset: 00003A34
	nop ; not executed offset: 00003A35
	nop ; not executed offset: 00003A36
	nop ; not executed offset: 00003A37
	nop ; not executed offset: 00003A38
	nop ; not executed offset: 00003A39
	nop ; not executed offset: 00003A3A
	nop ; not executed offset: 00003A3B
	nop ; not executed offset: 00003A3C
	nop ; not executed offset: 00003A3D
	nop ; not executed offset: 00003A3E
	nop ; not executed offset: 00003A3F
	nop ; not executed offset: 00003A40
	nop ; not executed offset: 00003A41
	nop ; not executed offset: 00003A42
	nop ; not executed offset: 00003A43
	nop ; not executed offset: 00003A44
	nop ; not executed offset: 00003A45
	nop ; not executed offset: 00003A46
	nop ; not executed offset: 00003A47
	nop ; not executed offset: 00003A48
	nop ; not executed offset: 00003A49
	nop ; not executed offset: 00003A4A
	nop ; not executed offset: 00003A4B
	nop ; not executed offset: 00003A4C
	nop ; not executed offset: 00003A4D
	nop ; not executed offset: 00003A4E
	nop ; not executed offset: 00003A4F
	nop ; not executed offset: 00003A50
	nop ; not executed offset: 00003A51
	nop ; not executed offset: 00003A52
	nop ; not executed offset: 00003A53
	nop ; not executed offset: 00003A54
	nop ; not executed offset: 00003A55
	nop ; not executed offset: 00003A56
	nop ; not executed offset: 00003A57
	nop ; not executed offset: 00003A58
	nop ; not executed offset: 00003A59
	nop ; not executed offset: 00003A5A
	nop ; not executed offset: 00003A5B
	nop ; not executed offset: 00003A5C
	nop ; not executed offset: 00003A5D
	nop ; not executed offset: 00003A5E
	nop ; not executed offset: 00003A5F
	nop ; not executed offset: 00003A60
	nop ; not executed offset: 00003A61
	nop ; not executed offset: 00003A62
	nop ; not executed offset: 00003A63
	nop ; not executed offset: 00003A64
	nop ; not executed offset: 00003A65
	nop ; not executed offset: 00003A66
	nop ; not executed offset: 00003A67
	nop ; not executed offset: 00003A68
	nop ; not executed offset: 00003A69
	nop ; not executed offset: 00003A6A
	nop ; not executed offset: 00003A6B
	nop ; not executed offset: 00003A6C
	nop ; not executed offset: 00003A6D
	nop ; not executed offset: 00003A6E
	nop ; not executed offset: 00003A6F
	nop ; not executed offset: 00003A70
	nop ; not executed offset: 00003A71
	nop ; not executed offset: 00003A72
	nop ; not executed offset: 00003A73
	nop ; not executed offset: 00003A74
	nop ; not executed offset: 00003A75
	nop ; not executed offset: 00003A76
	nop ; not executed offset: 00003A77
	nop ; not executed offset: 00003A78
	nop ; not executed offset: 00003A79
	nop ; not executed offset: 00003A7A
	nop ; not executed offset: 00003A7B
	nop ; not executed offset: 00003A7C
	nop ; not executed offset: 00003A7D
	nop ; not executed offset: 00003A7E
	nop ; not executed offset: 00003A7F
	nop ; not executed offset: 00003A80
	nop ; not executed offset: 00003A81
	nop ; not executed offset: 00003A82
	nop ; not executed offset: 00003A83
	nop ; not executed offset: 00003A84
	nop ; not executed offset: 00003A85
	nop ; not executed offset: 00003A86
	nop ; not executed offset: 00003A87
	nop ; not executed offset: 00003A88
	nop ; not executed offset: 00003A89
	nop ; not executed offset: 00003A8A
	nop ; not executed offset: 00003A8B
	nop ; not executed offset: 00003A8C
	nop ; not executed offset: 00003A8D
	nop ; not executed offset: 00003A8E
	nop ; not executed offset: 00003A8F
	nop ; not executed offset: 00003A90
	nop ; not executed offset: 00003A91
	nop ; not executed offset: 00003A92
	nop ; not executed offset: 00003A93
	nop ; not executed offset: 00003A94
	nop ; not executed offset: 00003A95
	nop ; not executed offset: 00003A96
	nop ; not executed offset: 00003A97
	nop ; not executed offset: 00003A98
	nop ; not executed offset: 00003A99
	nop ; not executed offset: 00003A9A
	nop ; not executed offset: 00003A9B
	nop ; not executed offset: 00003A9C
	nop ; not executed offset: 00003A9D
	nop ; not executed offset: 00003A9E
	nop ; not executed offset: 00003A9F
	nop ; not executed offset: 00003AA0
	nop ; not executed offset: 00003AA1
	nop ; not executed offset: 00003AA2
	nop ; not executed offset: 00003AA3
	nop ; not executed offset: 00003AA4
	nop ; not executed offset: 00003AA5
	nop ; not executed offset: 00003AA6
	nop ; not executed offset: 00003AA7
	nop ; not executed offset: 00003AA8
	nop ; not executed offset: 00003AA9
	nop ; not executed offset: 00003AAA
	nop ; not executed offset: 00003AAB
	nop ; not executed offset: 00003AAC
	nop ; not executed offset: 00003AAD
	nop ; not executed offset: 00003AAE
	nop ; not executed offset: 00003AAF
	nop ; not executed offset: 00003AB0
	nop ; not executed offset: 00003AB1
	nop ; not executed offset: 00003AB2
	nop ; not executed offset: 00003AB3
	nop ; not executed offset: 00003AB4
	nop ; not executed offset: 00003AB5
	nop ; not executed offset: 00003AB6
	nop ; not executed offset: 00003AB7
	nop ; not executed offset: 00003AB8
	nop ; not executed offset: 00003AB9
	nop ; not executed offset: 00003ABA
	nop ; not executed offset: 00003ABB
	nop ; not executed offset: 00003ABC
	nop ; not executed offset: 00003ABD
	nop ; not executed offset: 00003ABE
	nop ; not executed offset: 00003ABF
	nop ; not executed offset: 00003AC0
	nop ; not executed offset: 00003AC1
	nop ; not executed offset: 00003AC2
	nop ; not executed offset: 00003AC3
	nop ; not executed offset: 00003AC4
	nop ; not executed offset: 00003AC5
	nop ; not executed offset: 00003AC6
	nop ; not executed offset: 00003AC7
	nop ; not executed offset: 00003AC8
	nop ; not executed offset: 00003AC9
	nop ; not executed offset: 00003ACA
	nop ; not executed offset: 00003ACB
	nop ; not executed offset: 00003ACC
	nop ; not executed offset: 00003ACD
	nop ; not executed offset: 00003ACE
	nop ; not executed offset: 00003ACF
	nop ; not executed offset: 00003AD0
	nop ; not executed offset: 00003AD1
	nop ; not executed offset: 00003AD2
	nop ; not executed offset: 00003AD3
	nop ; not executed offset: 00003AD4
	nop ; not executed offset: 00003AD5
	nop ; not executed offset: 00003AD6
	nop ; not executed offset: 00003AD7
	nop ; not executed offset: 00003AD8
	nop ; not executed offset: 00003AD9
	nop ; not executed offset: 00003ADA
	nop ; not executed offset: 00003ADB
	nop ; not executed offset: 00003ADC
	nop ; not executed offset: 00003ADD
	nop ; not executed offset: 00003ADE
	nop ; not executed offset: 00003ADF
	nop ; not executed offset: 00003AE0
	nop ; not executed offset: 00003AE1
	nop ; not executed offset: 00003AE2
	nop ; not executed offset: 00003AE3
	nop ; not executed offset: 00003AE4
	nop ; not executed offset: 00003AE5
	nop ; not executed offset: 00003AE6
	nop ; not executed offset: 00003AE7
	nop ; not executed offset: 00003AE8
	nop ; not executed offset: 00003AE9
	nop ; not executed offset: 00003AEA
	nop ; not executed offset: 00003AEB
	nop ; not executed offset: 00003AEC
	nop ; not executed offset: 00003AED
	nop ; not executed offset: 00003AEE
	nop ; not executed offset: 00003AEF
	nop ; not executed offset: 00003AF0
	nop ; not executed offset: 00003AF1
	nop ; not executed offset: 00003AF2
	nop ; not executed offset: 00003AF3
	nop ; not executed offset: 00003AF4
	nop ; not executed offset: 00003AF5
	nop ; not executed offset: 00003AF6
	nop ; not executed offset: 00003AF7
	nop ; not executed offset: 00003AF8
	nop ; not executed offset: 00003AF9
	nop ; not executed offset: 00003AFA
	nop ; not executed offset: 00003AFB
	nop ; not executed offset: 00003AFC
	nop ; not executed offset: 00003AFD
	nop ; not executed offset: 00003AFE
	nop ; not executed offset: 00003AFF
	nop ; not executed offset: 00003B00
	nop ; not executed offset: 00003B01
	nop ; not executed offset: 00003B02
	nop ; not executed offset: 00003B03
	nop ; not executed offset: 00003B04
	nop ; not executed offset: 00003B05
	nop ; not executed offset: 00003B06
	nop ; not executed offset: 00003B07
	nop ; not executed offset: 00003B08
	nop ; not executed offset: 00003B09
	nop ; not executed offset: 00003B0A
	nop ; not executed offset: 00003B0B
	nop ; not executed offset: 00003B0C
	nop ; not executed offset: 00003B0D
	nop ; not executed offset: 00003B0E
	nop ; not executed offset: 00003B0F
	nop ; not executed offset: 00003B10
	nop ; not executed offset: 00003B11
	nop ; not executed offset: 00003B12
	nop ; not executed offset: 00003B13
	nop ; not executed offset: 00003B14
	nop ; not executed offset: 00003B15
	nop ; not executed offset: 00003B16
	nop ; not executed offset: 00003B17
	nop ; not executed offset: 00003B18
	nop ; not executed offset: 00003B19
	nop ; not executed offset: 00003B1A
	nop ; not executed offset: 00003B1B
	nop ; not executed offset: 00003B1C
	nop ; not executed offset: 00003B1D
	nop ; not executed offset: 00003B1E
	nop ; not executed offset: 00003B1F
	nop ; not executed offset: 00003B20
	nop ; not executed offset: 00003B21
	nop ; not executed offset: 00003B22
	nop ; not executed offset: 00003B23
	nop ; not executed offset: 00003B24
	nop ; not executed offset: 00003B25
	nop ; not executed offset: 00003B26
	nop ; not executed offset: 00003B27
	nop ; not executed offset: 00003B28
	nop ; not executed offset: 00003B29
	nop ; not executed offset: 00003B2A
	nop ; not executed offset: 00003B2B
	nop ; not executed offset: 00003B2C
	nop ; not executed offset: 00003B2D
	nop ; not executed offset: 00003B2E
	nop ; not executed offset: 00003B2F
	nop ; not executed offset: 00003B30
	nop ; not executed offset: 00003B31
	nop ; not executed offset: 00003B32
	nop ; not executed offset: 00003B33
	nop ; not executed offset: 00003B34
	nop ; not executed offset: 00003B35
	nop ; not executed offset: 00003B36
	nop ; not executed offset: 00003B37
	nop ; not executed offset: 00003B38
	nop ; not executed offset: 00003B39
	nop ; not executed offset: 00003B3A
	nop ; not executed offset: 00003B3B
	nop ; not executed offset: 00003B3C
	nop ; not executed offset: 00003B3D
	nop ; not executed offset: 00003B3E
	nop ; not executed offset: 00003B3F
	nop ; not executed offset: 00003B40
	nop ; not executed offset: 00003B41
	nop ; not executed offset: 00003B42
	nop ; not executed offset: 00003B43
	nop ; not executed offset: 00003B44
	nop ; not executed offset: 00003B45
	nop ; not executed offset: 00003B46
	nop ; not executed offset: 00003B47
	nop ; not executed offset: 00003B48
	nop ; not executed offset: 00003B49
	nop ; not executed offset: 00003B4A
	nop ; not executed offset: 00003B4B
	nop ; not executed offset: 00003B4C
	nop ; not executed offset: 00003B4D
	nop ; not executed offset: 00003B4E
	nop ; not executed offset: 00003B4F
	nop ; not executed offset: 00003B50
	nop ; not executed offset: 00003B51
	nop ; not executed offset: 00003B52
	nop ; not executed offset: 00003B53
	nop ; not executed offset: 00003B54
	nop ; not executed offset: 00003B55
	nop ; not executed offset: 00003B56
	nop ; not executed offset: 00003B57
	nop ; not executed offset: 00003B58
	nop ; not executed offset: 00003B59
	nop ; not executed offset: 00003B5A
	nop ; not executed offset: 00003B5B
	nop ; not executed offset: 00003B5C
	nop ; not executed offset: 00003B5D
	nop ; not executed offset: 00003B5E
	nop ; not executed offset: 00003B5F
	nop ; not executed offset: 00003B60
	nop ; not executed offset: 00003B61
	nop ; not executed offset: 00003B62
	nop ; not executed offset: 00003B63
	nop ; not executed offset: 00003B64
	nop ; not executed offset: 00003B65
	nop ; not executed offset: 00003B66
	nop ; not executed offset: 00003B67
	nop ; not executed offset: 00003B68
	nop ; not executed offset: 00003B69
	nop ; not executed offset: 00003B6A
	nop ; not executed offset: 00003B6B
	nop ; not executed offset: 00003B6C
	nop ; not executed offset: 00003B6D
	nop ; not executed offset: 00003B6E
	nop ; not executed offset: 00003B6F
	nop ; not executed offset: 00003B70
	nop ; not executed offset: 00003B71
	nop ; not executed offset: 00003B72
	nop ; not executed offset: 00003B73
	nop ; not executed offset: 00003B74
	nop ; not executed offset: 00003B75
	nop ; not executed offset: 00003B76
	nop ; not executed offset: 00003B77
	nop ; not executed offset: 00003B78
	nop ; not executed offset: 00003B79
	nop ; not executed offset: 00003B7A
	nop ; not executed offset: 00003B7B
	nop ; not executed offset: 00003B7C
	nop ; not executed offset: 00003B7D
	nop ; not executed offset: 00003B7E
	nop ; not executed offset: 00003B7F
	nop ; not executed offset: 00003B80
	nop ; not executed offset: 00003B81
	nop ; not executed offset: 00003B82
	nop ; not executed offset: 00003B83
	nop ; not executed offset: 00003B84
	nop ; not executed offset: 00003B85
	nop ; not executed offset: 00003B86
	nop ; not executed offset: 00003B87
	nop ; not executed offset: 00003B88
	nop ; not executed offset: 00003B89
	nop ; not executed offset: 00003B8A
	nop ; not executed offset: 00003B8B
	nop ; not executed offset: 00003B8C
	nop ; not executed offset: 00003B8D
	nop ; not executed offset: 00003B8E
	nop ; not executed offset: 00003B8F
	nop ; not executed offset: 00003B90
	nop ; not executed offset: 00003B91
	nop ; not executed offset: 00003B92
	nop ; not executed offset: 00003B93
	nop ; not executed offset: 00003B94
	nop ; not executed offset: 00003B95
	nop ; not executed offset: 00003B96
	nop ; not executed offset: 00003B97
	nop ; not executed offset: 00003B98
	nop ; not executed offset: 00003B99
	nop ; not executed offset: 00003B9A
	nop ; not executed offset: 00003B9B
	nop ; not executed offset: 00003B9C
	nop ; not executed offset: 00003B9D
	nop ; not executed offset: 00003B9E
	nop ; not executed offset: 00003B9F
	nop ; not executed offset: 00003BA0
	nop ; not executed offset: 00003BA1
	nop ; not executed offset: 00003BA2
	nop ; not executed offset: 00003BA3
	nop ; not executed offset: 00003BA4
	nop ; not executed offset: 00003BA5
	nop ; not executed offset: 00003BA6
	nop ; not executed offset: 00003BA7
	nop ; not executed offset: 00003BA8
	nop ; not executed offset: 00003BA9
	nop ; not executed offset: 00003BAA
	nop ; not executed offset: 00003BAB
	nop ; not executed offset: 00003BAC
	nop ; not executed offset: 00003BAD
	nop ; not executed offset: 00003BAE
	nop ; not executed offset: 00003BAF
	nop ; not executed offset: 00003BB0
	nop ; not executed offset: 00003BB1
	nop ; not executed offset: 00003BB2
	nop ; not executed offset: 00003BB3
	nop ; not executed offset: 00003BB4
	nop ; not executed offset: 00003BB5
	nop ; not executed offset: 00003BB6
	nop ; not executed offset: 00003BB7
	nop ; not executed offset: 00003BB8
	nop ; not executed offset: 00003BB9
	nop ; not executed offset: 00003BBA
	nop ; not executed offset: 00003BBB
	nop ; not executed offset: 00003BBC
	nop ; not executed offset: 00003BBD
	nop ; not executed offset: 00003BBE
	nop ; not executed offset: 00003BBF
	nop ; not executed offset: 00003BC0
	nop ; not executed offset: 00003BC1
	nop ; not executed offset: 00003BC2
	nop ; not executed offset: 00003BC3
	nop ; not executed offset: 00003BC4
	nop ; not executed offset: 00003BC5
	nop ; not executed offset: 00003BC6
	nop ; not executed offset: 00003BC7
	nop ; not executed offset: 00003BC8
	nop ; not executed offset: 00003BC9
	nop ; not executed offset: 00003BCA
	nop ; not executed offset: 00003BCB
	nop ; not executed offset: 00003BCC
	nop ; not executed offset: 00003BCD
	nop ; not executed offset: 00003BCE
	nop ; not executed offset: 00003BCF
	nop ; not executed offset: 00003BD0
	nop ; not executed offset: 00003BD1
	nop ; not executed offset: 00003BD2
	nop ; not executed offset: 00003BD3
	nop ; not executed offset: 00003BD4
	nop ; not executed offset: 00003BD5
	nop ; not executed offset: 00003BD6
	nop ; not executed offset: 00003BD7
	nop ; not executed offset: 00003BD8
	nop ; not executed offset: 00003BD9
	nop ; not executed offset: 00003BDA
	nop ; not executed offset: 00003BDB
	nop ; not executed offset: 00003BDC
	nop ; not executed offset: 00003BDD
	nop ; not executed offset: 00003BDE
	nop ; not executed offset: 00003BDF
	nop ; not executed offset: 00003BE0
	nop ; not executed offset: 00003BE1
	nop ; not executed offset: 00003BE2
	nop ; not executed offset: 00003BE3
	nop ; not executed offset: 00003BE4
	nop ; not executed offset: 00003BE5
	nop ; not executed offset: 00003BE6
	nop ; not executed offset: 00003BE7
	nop ; not executed offset: 00003BE8
	nop ; not executed offset: 00003BE9
	nop ; not executed offset: 00003BEA
	nop ; not executed offset: 00003BEB
	nop ; not executed offset: 00003BEC
	nop ; not executed offset: 00003BED
	nop ; not executed offset: 00003BEE
	nop ; not executed offset: 00003BEF
	nop ; not executed offset: 00003BF0
	nop ; not executed offset: 00003BF1
	nop ; not executed offset: 00003BF2
	nop ; not executed offset: 00003BF3
	nop ; not executed offset: 00003BF4
	nop ; not executed offset: 00003BF5
	nop ; not executed offset: 00003BF6
	nop ; not executed offset: 00003BF7
	nop ; not executed offset: 00003BF8
	nop ; not executed offset: 00003BF9
	nop ; not executed offset: 00003BFA
	nop ; not executed offset: 00003BFB
	nop ; not executed offset: 00003BFC
	nop ; not executed offset: 00003BFD
	nop ; not executed offset: 00003BFE
	nop ; not executed offset: 00003BFF
	nop ; not executed offset: 00003C00
	nop ; not executed offset: 00003C01
	nop ; not executed offset: 00003C02
	nop ; not executed offset: 00003C03
	nop ; not executed offset: 00003C04
	nop ; not executed offset: 00003C05
	nop ; not executed offset: 00003C06
	nop ; not executed offset: 00003C07
	nop ; not executed offset: 00003C08
	nop ; not executed offset: 00003C09
	nop ; not executed offset: 00003C0A
	nop ; not executed offset: 00003C0B
	nop ; not executed offset: 00003C0C
	nop ; not executed offset: 00003C0D
	nop ; not executed offset: 00003C0E
	nop ; not executed offset: 00003C0F
	nop ; not executed offset: 00003C10
	nop ; not executed offset: 00003C11
	nop ; not executed offset: 00003C12
	nop ; not executed offset: 00003C13
	nop ; not executed offset: 00003C14
	nop ; not executed offset: 00003C15
	nop ; not executed offset: 00003C16
	nop ; not executed offset: 00003C17
	nop ; not executed offset: 00003C18
	nop ; not executed offset: 00003C19
	nop ; not executed offset: 00003C1A
	nop ; not executed offset: 00003C1B
	nop ; not executed offset: 00003C1C
	nop ; not executed offset: 00003C1D
	nop ; not executed offset: 00003C1E
	nop ; not executed offset: 00003C1F
	nop ; not executed offset: 00003C20
	nop ; not executed offset: 00003C21
	nop ; not executed offset: 00003C22
	nop ; not executed offset: 00003C23
	nop ; not executed offset: 00003C24
	nop ; not executed offset: 00003C25
	nop ; not executed offset: 00003C26
	nop ; not executed offset: 00003C27
	nop ; not executed offset: 00003C28
	nop ; not executed offset: 00003C29
	nop ; not executed offset: 00003C2A
	nop ; not executed offset: 00003C2B
	nop ; not executed offset: 00003C2C
	nop ; not executed offset: 00003C2D
	nop ; not executed offset: 00003C2E
	nop ; not executed offset: 00003C2F
	nop ; not executed offset: 00003C30
	nop ; not executed offset: 00003C31
	nop ; not executed offset: 00003C32
	nop ; not executed offset: 00003C33
	nop ; not executed offset: 00003C34
	nop ; not executed offset: 00003C35
	nop ; not executed offset: 00003C36
	nop ; not executed offset: 00003C37
	nop ; not executed offset: 00003C38
	nop ; not executed offset: 00003C39
	nop ; not executed offset: 00003C3A
	nop ; not executed offset: 00003C3B
	nop ; not executed offset: 00003C3C
	nop ; not executed offset: 00003C3D
	nop ; not executed offset: 00003C3E
	nop ; not executed offset: 00003C3F
	nop ; not executed offset: 00003C40
	nop ; not executed offset: 00003C41
	nop ; not executed offset: 00003C42
	nop ; not executed offset: 00003C43
	nop ; not executed offset: 00003C44
	nop ; not executed offset: 00003C45
	nop ; not executed offset: 00003C46
	nop ; not executed offset: 00003C47
	nop ; not executed offset: 00003C48
	nop ; not executed offset: 00003C49
	nop ; not executed offset: 00003C4A
	nop ; not executed offset: 00003C4B
	nop ; not executed offset: 00003C4C
	nop ; not executed offset: 00003C4D
	nop ; not executed offset: 00003C4E
	nop ; not executed offset: 00003C4F
	nop ; not executed offset: 00003C50
	nop ; not executed offset: 00003C51
	nop ; not executed offset: 00003C52
	nop ; not executed offset: 00003C53
	nop ; not executed offset: 00003C54
	nop ; not executed offset: 00003C55
	nop ; not executed offset: 00003C56
	nop ; not executed offset: 00003C57
	nop ; not executed offset: 00003C58
	nop ; not executed offset: 00003C59
	nop ; not executed offset: 00003C5A
	nop ; not executed offset: 00003C5B
	nop ; not executed offset: 00003C5C
	nop ; not executed offset: 00003C5D
	nop ; not executed offset: 00003C5E
	nop ; not executed offset: 00003C5F
	nop ; not executed offset: 00003C60
	nop ; not executed offset: 00003C61
	nop ; not executed offset: 00003C62
	nop ; not executed offset: 00003C63
	nop ; not executed offset: 00003C64
	nop ; not executed offset: 00003C65
	nop ; not executed offset: 00003C66
	nop ; not executed offset: 00003C67
	nop ; not executed offset: 00003C68
	nop ; not executed offset: 00003C69
	nop ; not executed offset: 00003C6A
	nop ; not executed offset: 00003C6B
	nop ; not executed offset: 00003C6C
	nop ; not executed offset: 00003C6D
	nop ; not executed offset: 00003C6E
	nop ; not executed offset: 00003C6F
	nop ; not executed offset: 00003C70
	nop ; not executed offset: 00003C71
	nop ; not executed offset: 00003C72
	nop ; not executed offset: 00003C73
	nop ; not executed offset: 00003C74
	nop ; not executed offset: 00003C75
	nop ; not executed offset: 00003C76
	nop ; not executed offset: 00003C77
	nop ; not executed offset: 00003C78
	nop ; not executed offset: 00003C79
	nop ; not executed offset: 00003C7A
	nop ; not executed offset: 00003C7B
	nop ; not executed offset: 00003C7C
	nop ; not executed offset: 00003C7D
	nop ; not executed offset: 00003C7E
	nop ; not executed offset: 00003C7F
	nop ; not executed offset: 00003C80
	nop ; not executed offset: 00003C81
	nop ; not executed offset: 00003C82
	nop ; not executed offset: 00003C83
	nop ; not executed offset: 00003C84
	nop ; not executed offset: 00003C85
	nop ; not executed offset: 00003C86
	nop ; not executed offset: 00003C87
	nop ; not executed offset: 00003C88
	nop ; not executed offset: 00003C89
	nop ; not executed offset: 00003C8A
	nop ; not executed offset: 00003C8B
	nop ; not executed offset: 00003C8C
	nop ; not executed offset: 00003C8D
	nop ; not executed offset: 00003C8E
	nop ; not executed offset: 00003C8F
	nop ; not executed offset: 00003C90
	nop ; not executed offset: 00003C91
	nop ; not executed offset: 00003C92
	nop ; not executed offset: 00003C93
	nop ; not executed offset: 00003C94
	nop ; not executed offset: 00003C95
	nop ; not executed offset: 00003C96
	nop ; not executed offset: 00003C97
	nop ; not executed offset: 00003C98
	nop ; not executed offset: 00003C99
	nop ; not executed offset: 00003C9A
	nop ; not executed offset: 00003C9B
	nop ; not executed offset: 00003C9C
	nop ; not executed offset: 00003C9D
	nop ; not executed offset: 00003C9E
	nop ; not executed offset: 00003C9F
	nop ; not executed offset: 00003CA0
	nop ; not executed offset: 00003CA1
	nop ; not executed offset: 00003CA2
	nop ; not executed offset: 00003CA3
	nop ; not executed offset: 00003CA4
	nop ; not executed offset: 00003CA5
	nop ; not executed offset: 00003CA6
	nop ; not executed offset: 00003CA7
	nop ; not executed offset: 00003CA8
	nop ; not executed offset: 00003CA9
	nop ; not executed offset: 00003CAA
	nop ; not executed offset: 00003CAB
	nop ; not executed offset: 00003CAC
	nop ; not executed offset: 00003CAD
	nop ; not executed offset: 00003CAE
	nop ; not executed offset: 00003CAF
	nop ; not executed offset: 00003CB0
	nop ; not executed offset: 00003CB1
	nop ; not executed offset: 00003CB2
	nop ; not executed offset: 00003CB3
	nop ; not executed offset: 00003CB4
	nop ; not executed offset: 00003CB5
	nop ; not executed offset: 00003CB6
	nop ; not executed offset: 00003CB7
	nop ; not executed offset: 00003CB8
	nop ; not executed offset: 00003CB9
	nop ; not executed offset: 00003CBA
	nop ; not executed offset: 00003CBB
	nop ; not executed offset: 00003CBC
	nop ; not executed offset: 00003CBD
	nop ; not executed offset: 00003CBE
	nop ; not executed offset: 00003CBF
	nop ; not executed offset: 00003CC0
	nop ; not executed offset: 00003CC1
	nop ; not executed offset: 00003CC2
	nop ; not executed offset: 00003CC3
	nop ; not executed offset: 00003CC4
	nop ; not executed offset: 00003CC5
	nop ; not executed offset: 00003CC6
	nop ; not executed offset: 00003CC7
	nop ; not executed offset: 00003CC8
	nop ; not executed offset: 00003CC9
	nop ; not executed offset: 00003CCA
	nop ; not executed offset: 00003CCB
	nop ; not executed offset: 00003CCC
	nop ; not executed offset: 00003CCD
	nop ; not executed offset: 00003CCE
	nop ; not executed offset: 00003CCF
	nop ; not executed offset: 00003CD0
	nop ; not executed offset: 00003CD1
	nop ; not executed offset: 00003CD2
	nop ; not executed offset: 00003CD3
	nop ; not executed offset: 00003CD4
	nop ; not executed offset: 00003CD5
	nop ; not executed offset: 00003CD6
	nop ; not executed offset: 00003CD7
	nop ; not executed offset: 00003CD8
	nop ; not executed offset: 00003CD9
	nop ; not executed offset: 00003CDA
	nop ; not executed offset: 00003CDB
	nop ; not executed offset: 00003CDC
	nop ; not executed offset: 00003CDD
	nop ; not executed offset: 00003CDE
	nop ; not executed offset: 00003CDF
	nop ; not executed offset: 00003CE0
	nop ; not executed offset: 00003CE1
	nop ; not executed offset: 00003CE2
	nop ; not executed offset: 00003CE3
	nop ; not executed offset: 00003CE4
	nop ; not executed offset: 00003CE5
	nop ; not executed offset: 00003CE6
	nop ; not executed offset: 00003CE7
	nop ; not executed offset: 00003CE8
	nop ; not executed offset: 00003CE9
	nop ; not executed offset: 00003CEA
	nop ; not executed offset: 00003CEB
	nop ; not executed offset: 00003CEC
	nop ; not executed offset: 00003CED
	nop ; not executed offset: 00003CEE
	nop ; not executed offset: 00003CEF
	nop ; not executed offset: 00003CF0
	nop ; not executed offset: 00003CF1
	nop ; not executed offset: 00003CF2
	nop ; not executed offset: 00003CF3
	nop ; not executed offset: 00003CF4
	nop ; not executed offset: 00003CF5
	nop ; not executed offset: 00003CF6
	nop ; not executed offset: 00003CF7
	nop ; not executed offset: 00003CF8
	nop ; not executed offset: 00003CF9
	nop ; not executed offset: 00003CFA
	nop ; not executed offset: 00003CFB
	nop ; not executed offset: 00003CFC
	nop ; not executed offset: 00003CFD
	nop ; not executed offset: 00003CFE
	nop ; not executed offset: 00003CFF
	nop ; not executed offset: 00003D00
	nop ; not executed offset: 00003D01
	nop ; not executed offset: 00003D02
	nop ; not executed offset: 00003D03
	nop ; not executed offset: 00003D04
	nop ; not executed offset: 00003D05
	nop ; not executed offset: 00003D06
	nop ; not executed offset: 00003D07
	nop ; not executed offset: 00003D08
	nop ; not executed offset: 00003D09
	nop ; not executed offset: 00003D0A
	nop ; not executed offset: 00003D0B
	nop ; not executed offset: 00003D0C
	nop ; not executed offset: 00003D0D
	nop ; not executed offset: 00003D0E
	nop ; not executed offset: 00003D0F
	nop ; not executed offset: 00003D10
	nop ; not executed offset: 00003D11
	nop ; not executed offset: 00003D12
	nop ; not executed offset: 00003D13
	nop ; not executed offset: 00003D14
	nop ; not executed offset: 00003D15
	nop ; not executed offset: 00003D16
	nop ; not executed offset: 00003D17
	nop ; not executed offset: 00003D18
	nop ; not executed offset: 00003D19
	nop ; not executed offset: 00003D1A
	nop ; not executed offset: 00003D1B
	nop ; not executed offset: 00003D1C
	nop ; not executed offset: 00003D1D
	nop ; not executed offset: 00003D1E
	nop ; not executed offset: 00003D1F
	nop ; not executed offset: 00003D20
	nop ; not executed offset: 00003D21
	nop ; not executed offset: 00003D22
	nop ; not executed offset: 00003D23
	nop ; not executed offset: 00003D24
	nop ; not executed offset: 00003D25
	nop ; not executed offset: 00003D26
	nop ; not executed offset: 00003D27
	nop ; not executed offset: 00003D28
	nop ; not executed offset: 00003D29
	nop ; not executed offset: 00003D2A
	nop ; not executed offset: 00003D2B
	nop ; not executed offset: 00003D2C
;stopped writing due to overlap with another section


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
	call nz, $676D ;z_UNTAKEN_JUMP_3 ;000062FC
	LD IX,$DD70 ;000062FF
	bit 7, [ix+0] ;00006303
	call nz, $676D ;z_UNTAKEN_JUMP_3 ;00006307
	LD IX,$DDA0 ;0000630A
	bit 7, [ix+0] ;0000630E
	call nz, $676D ;z_UNTAKEN_JUMP_3 ;00006312
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
;stopped writing due to overlap with another section

.BANK 0001 SLOT 1
.ORGA $00006604
; Called by: 0001::00006812
	ld a, (de) ;00006604
	inc de ;00006605
	cp $00E0 ;00006606
	jp nc, $67FD ;z_UNTAKEN_JUMP_3 ;00006608
	bit 3, [ix+0] ;0000660B
	z_UNTAKEN_JUMP_3 ;0000660F
	cp $0080 ;00006612
	jr c, LAB_0001_0000663A ;z_UNTAKEN_JUMP_2 ;00006614
	z_UNTAKEN_JUMP_2 ;00006616
	ex af, af' ;00006618
	LD   A,(IX+$001D) ;00006619
	and $007F ;0000661C
	LD   (IX+$001D),A ;0000661E
	ex af, af' ;00006621
	call $66C0 ;00006622
	LD   (IX+$000B),L ;00006625
	LD   (IX+$000C),H ;00006628
	ld a, (de) ;0000662B
	inc de ;0000662C
	or a ;0000662D
	jp p, $663A ;z_UNTAKEN_JUMP_3 ;0000662E
	LD   A,(IX+$000D) ;00006631
	LD   (IX+$000A),A ;00006634
	dec de ;00006637
	jr LAB_0001_00006643 ;00006638
;stopped writing due to overlap with another section

.BANK 0001 SLOT 1
.ORGA $0000663A
; Called by: 0001::00006631
LAB_0001_0000663A:
	call $66D7 ;0000663A
	LD   (IX+$000A),A ;0000663D
	LD   (IX+$000D),A ;00006640
LAB_0001_00006643:
	LD   (IX+$0003),E ;00006643
	LD   (IX+$0004),D ;00006646
	bit 1, [ix+0] ;00006649
	ret nz ;0000664D
	bit 6, [ix+0] ;0000664E
	z_UNTAKEN_JUMP_2 ;00006652
	res 5, [ix+0] ;00006654
	LD   A,(IX+$000F) ;00006658
	LD   (IX+$000E),A ;0000665B
	xor a ;0000665E
	LD   (IX+$0015),A ;0000665F
	bit 7, [ix+7] ;00006662
	ret nz ;00006666
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
; Called by: 0001::00006405
; Address Also defined as function

.BANK 0001 SLOT 1
.ORGA $000067B1
; Called by: 0001::000067B0
	ld e, a ;000067B1
	add hl, de ;000067B2
	LD   A,(IX+$0001) ;000067B3
	cp $00E0 ;000067B6
	jr nz, LAB_0001_000067BC ;000067B8
	nop ; not executed offset: 000067BA
	nop ; not executed offset: 000067BB
LAB_0001_000067BC:
	ld c, a ;000067BC
	ld a, l ;000067BD
	and $000F ;000067BE
	or c ;000067C0
	out ($007F), a ;000067C1
	ld a, l ;000067C3
	and $00F0 ;000067C4
	or h ;000067C6
	rrca ;000067C7
	rrca ;000067C8
	rrca ;000067C9
	rrca ;000067CA
	out ($007F), a ;000067CB
	call $6542 ;000067CD
	bit 2, [ix+0] ;000067D0
	ret nz ;000067D4
	bit 4, [ix+0] ;000067D5
	ret nz ;000067D9
	ADD  A,(IX+$0008) ;000067DA
	bit 4, a ;000067DD
	jr z, LAB_0001_000067E3 ;000067DF
	nop ; not executed offset: 000067E1
	nop ; not executed offset: 000067E2
LAB_0001_000067E3:
	OR   (IX+$0001) ;000067E3
	and a, $0010 ;000067E6
	out ($007F), a ;000067E8
	ret ;000067EA
	nop ; not executed offset: 000067EB
	nop ; not executed offset: 000067EC
	nop ; not executed offset: 000067ED
	nop ; not executed offset: 000067EE
	nop ; not executed offset: 000067EF
	nop ; not executed offset: 000067F0
	nop ; not executed offset: 000067F1
	nop ; not executed offset: 000067F2
	nop ; not executed offset: 000067F3
	nop ; not executed offset: 000067F4
	nop ; not executed offset: 000067F5
	nop ; not executed offset: 000067F6
	nop ; not executed offset: 000067F7
	nop ; not executed offset: 000067F8
	nop ; not executed offset: 000067F9
	nop ; not executed offset: 000067FA
	nop ; not executed offset: 000067FB
	nop ; not executed offset: 000067FC
;stopped writing due to overlap with another section

.BANK 0001 SLOT 1
.ORGA $000067FD
; Called by: 0001::0000660B
	ld hl, $6811 ;000067FD
	push hl ;00006800
	sub $00E0 ;00006801
	ld hl, $6815 ;00006803
	add a, a ;00006806
	ld c, a ;00006807
	ld b, $0000 ;00006808
	add hl, bc ;0000680A
	ld c, (hl) ;0000680B
	inc hl ;0000680C
	ld h, (hl) ;0000680D
	ld l, c ;0000680E
	ld a, (de) ;0000680F
	jp (hl) ;00006810
	inc de ;00006811
	jp $6604 ;00006812
;stopped writing due to overlap with another section

.BANK 0001 SLOT 1
.ORGA $0000698C
; Called by: 0001::00006810
	LD   (IX+$0010),E ;0000698C
	LD   (IX+$0011),D ;0000698F
	LD   (IX+$0006),$0080 ;00006992
	inc de ;00006996
	inc de ;00006997
	inc de ;00006998
	ret ;00006999
;stopped writing due to overlap with another section

.BANK 0001 SLOT 1
.ORGA $0000699A
; Called by: 0001::00006810
	set 1, [ix+0] ;0000699A
	dec de ;0000699E
	ret ;0000699F
	nop ; not executed offset: 000069A0
	nop ; not executed offset: 000069A1
	nop ; not executed offset: 000069A2
	nop ; not executed offset: 000069A3
	nop ; not executed offset: 000069A4
;stopped writing due to overlap with another section

.BANK 0001 SLOT 1
.ORGA $000069A5
; Called by: 0001::00006810
	LD   (IX+$0007),$0080 ;000069A5
	LD   (IX+$001F),$00FF ;000069A9
	push de ;000069AD
	PUSH IX ;000069AE
	pop hl ;000069B0
	ld b, $0000 ;000069B1
	ld c, $0020 ;000069B3
	add hl, bc ;000069B5
	ex de, hl ;000069B6
	LDI ;000069B7
	LDI ;000069B9
	LDI ;000069BB
	LDI ;000069BD
	LDI ;000069BF
	pop de ;000069C1
	inc de ;000069C2
	inc de ;000069C3
	inc de ;000069C4
	inc de ;000069C5
	ret ;000069C6
	nop ; not executed offset: 000069C7
	nop ; not executed offset: 000069C8
	nop ; not executed offset: 000069C9
	nop ; not executed offset: 000069CA
	nop ; not executed offset: 000069CB
	nop ; not executed offset: 000069CC
	nop ; not executed offset: 000069CD
	nop ; not executed offset: 000069CE
	nop ; not executed offset: 000069CF
	nop ; not executed offset: 000069D0
	nop ; not executed offset: 000069D1
	nop ; not executed offset: 000069D2
	nop ; not executed offset: 000069D3
	nop ; not executed offset: 000069D4
	nop ; not executed offset: 000069D5
	nop ; not executed offset: 000069D6
	nop ; not executed offset: 000069D7
	nop ; not executed offset: 000069D8
	nop ; not executed offset: 000069D9
	nop ; not executed offset: 000069DA
	nop ; not executed offset: 000069DB
	nop ; not executed offset: 000069DC
	nop ; not executed offset: 000069DD
	nop ; not executed offset: 000069DE
	nop ; not executed offset: 000069DF
	nop ; not executed offset: 000069E0
	nop ; not executed offset: 000069E1
	nop ; not executed offset: 000069E2
	nop ; not executed offset: 000069E3
	nop ; not executed offset: 000069E4
	nop ; not executed offset: 000069E5
	nop ; not executed offset: 000069E6
	nop ; not executed offset: 000069E7
	nop ; not executed offset: 000069E8
	nop ; not executed offset: 000069E9
	nop ; not executed offset: 000069EA
	nop ; not executed offset: 000069EB
	nop ; not executed offset: 000069EC
	nop ; not executed offset: 000069ED
	nop ; not executed offset: 000069EE
	nop ; not executed offset: 000069EF
	nop ; not executed offset: 000069F0
	nop ; not executed offset: 000069F1
	nop ; not executed offset: 000069F2
	nop ; not executed offset: 000069F3
	nop ; not executed offset: 000069F4
	nop ; not executed offset: 000069F5
	nop ; not executed offset: 000069F6
	nop ; not executed offset: 000069F7
	nop ; not executed offset: 000069F8
	nop ; not executed offset: 000069F9
	nop ; not executed offset: 000069FA
;stopped writing due to overlap with another section
