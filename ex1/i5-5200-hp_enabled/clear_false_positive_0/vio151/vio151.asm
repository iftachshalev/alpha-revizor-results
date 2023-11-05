.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RSI], SI 
XOR EAX, -1162321489 
CMOVL SI, CX 
SETNZ BL 
BTC RSI, 37 
AND RCX, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
BTR qword ptr [R14 + RCX], RAX 
LEA RCX, qword ptr [RCX] 
CMOVZ BX, BX 
XOR SIL, -106 
CMPXCHG DI, SI 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RBX], -125 
JS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
BT EDX, ECX 
TEST ECX, -503663719 
AND RCX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RCX], AL 
MOV RDI, -7713499862302093954 
TEST AL, 77 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDI], CL 
LEA ESI, qword ptr [RCX + RDX] 
MOV DL, -24 
AND RAX, 0b1111111111111 # instrumentation
OR DIL, byte ptr [R14 + RAX] 
CMOVLE RDI, RBX 
CMPXCHG EBX, ESI 
MOV RDI, RDI 
LOOPE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
CMOVL EBX, dword ptr [R14 + RSI] 
CMOVP RDI, RCX 
OR AL, -73 
XADD AX, AX 
CMOVLE DX, DX 
AND RCX, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RDX, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RDX], 42 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
