.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 1 # instrumentation
SETO DL 
BTR EDI, EDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RCX], -119 
CMOVNB RSI, RCX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB DI, word ptr [R14 + RBX] 
CMOVNLE RDI, RSI 
CMOVS RSI, RCX 
MOV DIL, SIL 
TEST BX, CX 
BSWAP EAX 
AND RBX, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
BT word ptr [R14 + RCX], 2 
AND RDX, 0b1111111111111 # instrumentation
AND RBX, 0b111 # instrumentation
BT qword ptr [R14 + RDX], RBX 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST CX, CX 
CMOVO CX, CX 
CMC  
CMOVL RSI, RDI 
BT DI, AX 
AND RAX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RAX], -70 
AND RCX, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RCX] 
CMOVNB RSI, RDX 
SETL BL 
OR DIL, BL 
SETNLE AL 
CMOVO DI, AX 
BTR RBX, 87 
AND DIL, 79 # instrumentation
CMOVL EBX, ECX 
SETNP DIL 
CMOVNO EBX, EDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RDX, qword ptr [R14 + RAX] 
BTC DI, -109 
XCHG DI, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
