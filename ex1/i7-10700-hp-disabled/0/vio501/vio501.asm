.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RDI], RSI 
AND RDI, 0b1111111111111 # instrumentation
CMOVS EDX, dword ptr [R14 + RDI] 
CLD  
XADD DX, DX 
MOVZX EDI, CL 
CMOVNLE RSI, RAX 
NOT CL 
XOR AX, -4526 
SETB SIL 
AND SI, 115 
CMOVP ECX, EDI 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, EAX 
NOT SIL 
AND RSI, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RSI], 22 
MOVSX RDX, AL 
SETP DL 
TEST DX, AX 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVP ECX, dword ptr [R14 + RBX] 
SETO BL 
XOR ESI, 125 
TEST CX, SI 
AND BL, 83 
OR RBX, RAX 
CMOVNS SI, BX 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RDI], -15 
STC  
AND RDX, 0b1111111111111 # instrumentation
CMOVO BX, word ptr [R14 + RDX] 
SETNLE SIL 
MOV DL, CL 
CMPXCHG CL, BL 
CMOVZ ESI, ESI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP RSI, qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
