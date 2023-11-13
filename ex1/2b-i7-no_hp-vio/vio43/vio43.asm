.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], -7916 
CMOVNB AX, CX 
CMOVNB RCX, RBX 
OR EAX, 1530089683 
AND RSI, 0b1111111111111 # instrumentation
MOV RCX, qword ptr [R14 + RSI] 
BTR RCX, RAX 
XOR ESI, -59 
MOV DIL, -125 
AND AX, 2748 
CMOVL BX, BX 
CMOVZ EBX, EBX 
MOV EAX, ECX 
BT RCX, -8 
AND AL, -82 
AND RSI, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RSI], EAX 
CMOVNLE AX, BX 
JNO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CMPXCHG ECX, EAX 
OR CL, BL 
NOT BL 
BTC RDX, RBX 
XOR RCX, -73 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RDX, word ptr [R14 + RBX] 
BTR RAX, RSI 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE RAX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK BTR dword ptr [R14 + RDX], 4 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RCX], -30 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ CX, word ptr [R14 + RSI] 
STD  
LEA RDX, qword ptr [RAX] 
CMOVO ECX, ECX 
NOT CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
