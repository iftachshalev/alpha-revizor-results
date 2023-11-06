.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR DIL, AL 
CMOVNB CX, BX 
BT RDX, -73 
CMOVB EBX, ESI 
AND RSI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RSI], -12090 
AND EAX, 1577916872 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RDX 
AND RCX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RCX], ESI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL RSI, qword ptr [R14 + RSI] 
AND SI, AX 
AND RDX, 0b1111111111111 # instrumentation
AND RCX, 0b111 # instrumentation
BTR qword ptr [R14 + RDX], RCX 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
LEA DI, qword ptr [RSI + RSI] 
AND DX, AX 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR EDI, dword ptr [R14 + RDX] 
NOT RSI 
TEST AX, -28298 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RDX], DI 
AND RAX, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RAX], 4 
BTC EDX, EBX 
AND SIL, -83 # instrumentation
CMOVNL RCX, RDI 
SETO BL 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSF RBX, RCX 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], SIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RAX] 
JZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, -18 # instrumentation
BTS CX, DI 
SETZ AL 
OR EBX, ECX 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RSI], ESI 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RBX, RDX 
AND RSI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RSI], CL 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], ESI 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], 1612196444 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
