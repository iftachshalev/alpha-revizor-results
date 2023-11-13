.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 12 # instrumentation
SETNO BL 
XOR EAX, -322371562 
MOVSX DX, AL 
BTC RBX, RDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE DI, word ptr [R14 + RBX] 
CMOVNZ AX, DX 
AND RDX, 0b1111111111111 # instrumentation
CMOVP RBX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RSI], RBX 
CLD  
BT RDX, RCX 
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RDX], EAX 
MOV DL, -17 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -32 # instrumentation
NOT RSI 
CMOVO AX, CX 
CMOVBE DI, CX 
CWD  
AND RCX, 0b1111111111111 # instrumentation
AND EAX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
AND AX, 0b111 # instrumentation
BTS word ptr [R14 + RDI], AX 
AND RCX, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
BTC qword ptr [R14 + RCX], RAX 
AND RCX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RCX] 
MOV RCX, RDI 
AND AL, -24 
SETNL AL 
CMOVNS AX, DX 
TEST SI, CX 
CMPXCHG RAX, RDX 
CMOVZ RBX, RAX 
XCHG EAX, EAX 
TEST RAX, 880031504 
BT EAX, 120 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO DX, word ptr [R14 + RDX] 
NOT RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
