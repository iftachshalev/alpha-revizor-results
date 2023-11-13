.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTR RBX, 79 
OR SIL, -65 
AND RAX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RAX] 
CMC  
AND RBX, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RBX], 3 
AND DIL, -40 # instrumentation
CMOVNS EDX, EDX 
CMOVZ RAX, RAX 
AND RBX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RBX] 
SETO AL 
MOVSX EDI, CL 
MOVZX RDX, AX 
BTR RDI, RDI 
XADD SI, BX 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE SI, word ptr [R14 + RDX] 
MOV BL, -66 
MOVZX EBX, SIL 
AND RDX, 0b1111111111111 # instrumentation
MOVSX SI, byte ptr [R14 + RDX] 
BT ESI, EBX 
MOVSX DX, SIL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL RAX, qword ptr [R14 + RAX] 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
NOT CL 
AND RSI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ AX, word ptr [R14 + RDI] 
BTR CX, -70 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], SIL 
XOR RAX, 1641390237 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, EDI 
OR DIL, -122 
BTS RDX, RDX 
MOVSX AX, SIL 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RAX], DX 
STC  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
