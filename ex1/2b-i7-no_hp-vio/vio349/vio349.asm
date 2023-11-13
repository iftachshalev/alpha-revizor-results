.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVNP RDX, qword ptr [R14 + RSI] 
SETBE AL 
TEST BX, DX 
CMPXCHG SIL, CL 
XCHG AL, DIL 
BTS CX, DX 
AND RDX, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RDX] 
MOVZX DI, AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RDI], SIL 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTC dword ptr [R14 + RBX], 7 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDX], CL 
SETNB SIL 
AND AX, -31283 
SETNZ DIL 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ EAX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RDX], DI 
MOV SIL, AL 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 27 # instrumentation
CMOVNL AX, CX 
XADD CX, SI 
LEA RBX, qword ptr [RSI + RDI + 54229] 
CMOVNB BX, BX 
TEST BL, -108 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDI], BL 
CMOVLE ESI, ECX 
AND RAX, 0b1111111111111 # instrumentation
AND SI, 0b111 # instrumentation
LOCK BTC word ptr [R14 + RAX], SI 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RBX], -25 
AND RAX, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RAX], 7 
AND RDX, 0b1111111111111 # instrumentation
BTR qword ptr [R14 + RDX], 1 
AND RCX, 0b1111111111111 # instrumentation
AND DX, 0b111 # instrumentation
LOCK BTC word ptr [R14 + RCX], DX 
AND DIL, -118 # instrumentation
SETNS DL 
TEST RAX, -1617275003 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB SI, word ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
