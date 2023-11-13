.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -107 # instrumentation
NOT ESI 
CMOVB ECX, EBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK BTC qword ptr [R14 + RAX], 7 
OR DI, 0b1000000000000000 # instrumentation
BSF SI, DI 
AND DIL, -38 # instrumentation
SETNBE BL 
TEST RAX, -1664588685 
TEST EAX, 483233337 
CMOVO RDX, RBX 
AND RSI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RSI], ESI 
CLC  
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 111 # instrumentation
SETO AL 
TEST EAX, 970765907 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB RBX, qword ptr [R14 + RBX] 
CMOVZ DI, BX 
AND AL, -82 
BTS RDI, -39 
TEST EAX, 1291811821 
CMPXCHG RAX, RAX 
CMOVBE CX, DX 
BSWAP ECX 
CMPXCHG DI, CX 
BTC AX, -127 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, EDI 
OR DIL, -53 
AND EAX, -2108311893 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RAX], ECX 
MOVSX RCX, DL 
AND RDI, 0b1111111111111 # instrumentation
AND DX, 0b111 # instrumentation
BT word ptr [R14 + RDI], DX 
SETNZ CL 
CMOVNBE EAX, ESI 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 28 
BT ECX, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
