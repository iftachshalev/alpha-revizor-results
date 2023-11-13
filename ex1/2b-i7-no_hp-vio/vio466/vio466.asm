.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
MOVSX BX, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE ESI, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO RDI, qword ptr [R14 + RDI] 
CMOVNZ ECX, EDI 
SETB AL 
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
STC  
XADD CL, DIL 
SETNZ SIL 
MOVZX RBX, CX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE BX, word ptr [R14 + RDX] 
TEST ECX, 56941608 
TEST EDX, -1919602097 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF RBX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB RBX, qword ptr [R14 + RDI] 
BTC DI, AX 
AND SIL, -29 # instrumentation
SETS AL 
CMOVNB ECX, ECX 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 118 # instrumentation
MOVZX EAX, SI 
SETS AL 
XCHG BX, DX 
XADD RSI, RAX 
BT RDX, 3 
AND RDI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
BTS dword ptr [R14 + RDI], 6 
AND DIL, -98 # instrumentation
CMOVNO DI, SI 
MOVSX AX, DL 
CMOVNO RAX, RDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RBX], AL 
SETBE CL 
XCHG DL, CL 
CMOVNZ EDX, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
