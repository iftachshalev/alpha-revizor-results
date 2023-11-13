.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -63 # instrumentation
CMOVLE BX, DX 
AND RAX, 0b1111111111111 # instrumentation
LOCK BTS word ptr [R14 + RAX], 7 
AND DIL, -125 
CMOVNB EDX, ESI 
CMOVO EDX, ESI 
MOVSX RDI, AX 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR ECX, EDX 
CMOVNZ EAX, EBX 
BT DI, 52 
XOR RAX, 991139450 
BTS RDX, -113 
AND SIL, -66 # instrumentation
SETO BL 
TEST BL, DL 
CMOVB EBX, EBX 
TEST DI, BX 
CMOVNBE EAX, EBX 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVLE RDI, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ CX, word ptr [R14 + RDX] 
XOR AL, CL 
SETL AL 
AND RBX, 0b1111111111111 # instrumentation
AND RDX, 0b111 # instrumentation
LOCK BTS qword ptr [R14 + RBX], RDX 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RSI 
AND DIL, 105 # instrumentation
CMOVO ESI, ECX 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EBX, byte ptr [R14 + RAX] 
BTR RAX, RDX 
AND RSI, RSI 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], CL 
BTC BX, DX 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTR qword ptr [R14 + RBX], 5 
TEST AX, -7211 
MOVSX EDI, AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RCX], -11 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
