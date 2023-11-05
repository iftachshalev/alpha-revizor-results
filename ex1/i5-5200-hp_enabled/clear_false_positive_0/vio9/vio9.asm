.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVNP EAX, dword ptr [R14 + RDI] 
BTR EBX, 108 
AND RAX, 749750625 
SETNZ SIL 
JO .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND SIL, 80 # instrumentation
SETP BL 
LEA RSI, qword ptr [RBX + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RDI], -45 
BTR SI, 24 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL RDI, qword ptr [R14 + RBX] 
CMPXCHG EDX, ECX 
TEST ESI, EDX 
SETNO CL 
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, -122 # instrumentation
CMOVBE ESI, EDX 
BTR RCX, 90 
BT RBX, -116 
AND AL, 25 
TEST CL, BL 
XOR EAX, 1688500070 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ EDX, dword ptr [R14 + RCX] 
OR EAX, -1941015730 
OR BX, 0b1000000000000000 # instrumentation
BSR BX, BX 
AND RSI, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RSI] 
CMOVNZ EDX, EBX 
CMOVNL EAX, EDX 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
AND EDX, 0b111 # instrumentation
BT dword ptr [R14 + RCX], EDX 
MOV BX, DI 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RDI], EBX 
NOT DL 
NOT RAX 
BTR RAX, -126 
JNB .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RSI], BL 
MOVSX RBX, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
