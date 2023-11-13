.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR AX, 97 
AND RAX, 0b1111111111111 # instrumentation
MOV RSI, qword ptr [R14 + RAX] 
BTC EDX, EDX 
BTR DX, -95 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR ESI, dword ptr [R14 + RSI] 
AND SIL, -55 # instrumentation
SETNB AL 
AND RDX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDX], RDX 
OR DX, SI 
BTR ESI, ECX 
BT EDX, 68 
AND RAX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RAX], BX 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], DL 
CMOVO RDX, RDI 
SETNL BL 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -105 # instrumentation
CMOVBE RSI, RDI 
CMPXCHG DX, BX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE RCX, qword ptr [R14 + RDI] 
TEST AL, 12 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF RAX, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], -1118503382 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL RSI, qword ptr [R14 + RCX] 
BSWAP EDI 
STD  
BTS EDX, EBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTS word ptr [R14 + RDI], 6 
AND DIL, 96 # instrumentation
XCHG RSI, RSI 
MOV RAX, RCX 
SETLE DL 
AND RDI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDI] 
MOVSX RSI, DI 
AND RCX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RCX], 30312 
OR AX, 15285 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
