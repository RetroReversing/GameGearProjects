;==============================================================
; WLA-DX banking setup
;==============================================================
.memorymap
slotsize $4000
slot 0 $0000
slot 1 $4000
slot 2 $8000
defaultslot 2
.endme

.rombankmap
bankstotal 2
banksize $4000
banks 2
.endro;

; SDSC tag and GG rom header

.sdsctag 1.0, "Hello libRR", "Version", "rr"

.INCLUDE "./common/constants.asm"
.INCLUDE "./functions/_0000_func_00000008.asm"
.INCLUDE "./functions/_0000_func_00000028.asm"
.INCLUDE "./functions/_0000_func_00000030.asm"
.INCLUDE "./functions/_0000_func_000001FF.asm"
.INCLUDE "./functions/_0000_func_0000022F.asm"
.INCLUDE "./functions/_0000_func_00000423.asm"
.INCLUDE "./functions/_0000_func_00000439.asm"
.INCLUDE "./functions/_0000_func_00000445.asm"
.INCLUDE "./functions/_0000_func_00000464.asm"
.INCLUDE "./functions/_0000_func_000004B9.asm"
.INCLUDE "./functions/_0000_func_000004C6.asm"
.INCLUDE "./functions/_0000_func_000004E4.asm"
.INCLUDE "./functions/_0000_func_00000506.asm"
.INCLUDE "./functions/_0000_func_00000521.asm"
.INCLUDE "./functions/_0000_func_00000548.asm"
.INCLUDE "./functions/_0000_func_00000589.asm"
.INCLUDE "./functions/_0000_func_000005F1.asm"
.INCLUDE "./functions/_0000_func_0000060B.asm"
.INCLUDE "./functions/_0000_func_00000652.asm"
.INCLUDE "./functions/_0000_func_00000674.asm"
.INCLUDE "./functions/_0000_func_00000685.asm"
.INCLUDE "./functions/_0000_func_00000694.asm"
.INCLUDE "./functions/_0000_func_000006AB.asm"
.INCLUDE "./functions/_0000_func_000006D1.asm"
.INCLUDE "./functions/_0000_func_000006E8.asm"
.INCLUDE "./functions/_0000_func_0000070B.asm"
.INCLUDE "./functions/_0000_func_00000930.asm"
.INCLUDE "./functions/_0000_func_000009B0.asm"
.INCLUDE "./functions/_0000_func_00000AC0.asm"
.INCLUDE "./functions/_0000_func_00000AC2.asm"
.INCLUDE "./functions/_0000_func_00000B40.asm"
.INCLUDE "./functions/_0000_func_00000B42.asm"
.INCLUDE "./functions/_0000_func_00000C1D.asm"
.INCLUDE "./functions/_0000_func_00000CD8.asm"
.INCLUDE "./functions/_0000_func_00000CE1.asm"
.INCLUDE "./functions/_0000_func_00000CF0.asm"
.INCLUDE "./functions/_0000_func_00000D04.asm"
.INCLUDE "./functions/_0000_func_00000EDC.asm"
.INCLUDE "./functions/_0000_func_00001D60.asm"
.INCLUDE "./functions/_0000_func_00001D96.asm"
.INCLUDE "./functions/_0000_func_0000216B.asm"
.INCLUDE "./functions/_0000_func_00002753.asm"
.INCLUDE "./functions/_0000_func_0000296A.asm"
.INCLUDE "./functions/_0000_func_00002AD5.asm"
.INCLUDE "./functions/_0001_func_00006342.asm"
.INCLUDE "./functions/_0001_func_0000635B.asm"
.INCLUDE "./functions/_0001_func_00006364.asm"
.INCLUDE "./functions/_0001_func_00006382.asm"
.INCLUDE "./functions/_0001_func_000063E8.asm"
.INCLUDE "./functions/_0001_func_00006479.asm"
.INCLUDE "./functions/_0001_func_000064A7.asm"
.INCLUDE "./functions/_0001_func_000064D2.asm"
.INCLUDE "./functions/_0001_func_000064EF.asm"
.INCLUDE "./functions/_0001_func_00006542.asm"
.INCLUDE "./functions/_0001_func_000065F6.asm"
.INCLUDE "./functions/_0001_func_0000668E.asm"
.INCLUDE "./functions/_0001_func_000066A1.asm"
.INCLUDE "./functions/_0001_func_000066C0.asm"
.INCLUDE "./functions/_0001_func_000066C8.asm"
.INCLUDE "./functions/_0001_func_000066D2.asm"
.INCLUDE "./functions/_0001_func_000066D7.asm"
.INCLUDE "./functions/_0001_func_0000676D.asm"
.INCLUDE "jumps.asm"
.INCLUDE "unwritten_relative_jumps.asm"
