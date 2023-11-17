.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BT CX, -112 
AND DIL, 46 # instrumentation
CMOVO ECX, EAX 
XCHG SI, DI 
MOV BL, -92 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK BTS qword ptr [R14 + RDX], 3 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RDX], EDI 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], EAX 
OR RBX, -50 
BTC RBX, 78 
AND SIL, -58 # instrumentation
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
XOR RBX, RSI 
OR DX, 0b1000000000000000 # instrumentation
BSR SI, DX 
AND SIL, 27 # instrumentation
CMOVNL ECX, EBX 
BT RSI, 12 
CMPXCHG AL, CL 
AND RBX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RBX], AX 
JMP .bb_main.3 
.bb_main.3:
TEST BX, DI 
AND RDX, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RDX] 
OR DI, 0b1000000000000000 # instrumentation
BSF BX, DI 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RBX], -106 
MOV SIL, 64 
CMPXCHG EDI, EBX 
MOVZX EDX, CL 
JNL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
AND RBX, 0b111 # instrumentation
BT qword ptr [R14 + RBX], RBX 
XOR AX, -202 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF EDX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RDX], -66 
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], 61 
SETBE DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP ESI, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RCX], ECX 
BTC DI, DX 
AND SIL, -83 # instrumentation
CMOVNL DI, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
