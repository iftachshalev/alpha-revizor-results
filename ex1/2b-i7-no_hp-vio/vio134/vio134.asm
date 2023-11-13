.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XADD SI, SI 
MOVSX RAX, DX 
OR AX, 0b1000000000000000 # instrumentation
BSR DI, AX 
MOVZX ESI, BX 
AND RSI, 0b1111111111111 # instrumentation
AND RDX, 0b111 # instrumentation
BTS qword ptr [R14 + RSI], RDX 
BTS SI, BX 
NOT BL 
BTS DI, 23 
XCHG EDX, ECX 
BTC RAX, 42 
TEST ECX, EDI 
MOV RDX, -7728608545000556253 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RSI, byte ptr [R14 + RBX] 
LEA RBX, qword ptr [RCX + RDX] 
AND RBX, 0b1111111111111 # instrumentation
BTR qword ptr [R14 + RBX], 7 
AND RAX, 423739777 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], RBX 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 48 # instrumentation
MOV RCX, 1903426741517254007 
SETL BL 
SETB DL 
AND RSI, 0b1111111111111 # instrumentation
AND RDX, 0b111 # instrumentation
BTS qword ptr [R14 + RSI], RDX 
CMOVZ DX, BX 
CMPXCHG RDI, RDX 
AND RDX, 0b1111111111111 # instrumentation
BTS word ptr [R14 + RDX], 1 
XCHG SIL, BL 
TEST AX, 16701 
CMOVL EDX, EDX 
BTC DI, 14 
AND SIL, 107 # instrumentation
SETLE DL 
AND RAX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RAX], -106 
CMOVP SI, CX 
XOR BL, -107 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
