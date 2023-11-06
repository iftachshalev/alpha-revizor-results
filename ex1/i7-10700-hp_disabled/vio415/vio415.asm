.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTS DI, 109 
OR EAX, -1008734284 
OR SIL, -3 
NOT EDI 
CMOVNO DI, DI 
LEA ESI, qword ptr [RCX + RSI] 
CDQ  
CBW  
SETZ DL 
SETL DL 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RAX], EBX 
CMOVO EDI, ECX 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTC dword ptr [R14 + RBX], 6 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVLE DI, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RDI], EAX 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RAX, RDI 
AND SIL, -80 # instrumentation
LEA DX, qword ptr [RAX + RDX + 65531] 
SETB DL 
BT BX, -109 
AND RSI, 0b1111111111111 # instrumentation
AND EDX, dword ptr [R14 + RSI] 
CMOVNZ EDI, EDI 
CMOVS AX, CX 
JO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND SIL, -3 # instrumentation
CMOVNZ EAX, ESI 
BTC RSI, 96 
AND RDI, 0b1111111111111 # instrumentation
MOVZX SI, byte ptr [R14 + RDI] 
CMOVNZ DX, DX 
AND RDX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RDX], -109 
AND RDI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDI], CL 
JMP .bb_main.3 
.bb_main.3:
AND DIL, -63 # instrumentation
CMOVNL RDI, RDX 
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], -108 
AND RDI, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RDI] 
BTS CX, -18 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
