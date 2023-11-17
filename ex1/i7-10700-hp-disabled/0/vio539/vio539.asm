.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR EAX, EDX 
MOVSX RSI, BL 
BTC RDI, 52 
TEST AX, -15284 
SETNB SIL 
TEST AX, 19797 
MOVZX RCX, DX 
CMOVO RDX, RAX 
BTC EDX, EAX 
AND DIL, 78 # instrumentation
SETNLE DIL 
CMOVS ECX, ECX 
BT DX, 57 
BT RDI, -73 
XCHG BX, AX 
OR SIL, -116 
AND RSI, 0b1111111111111 # instrumentation
AND ESI, 0b111 # instrumentation
BTR dword ptr [R14 + RSI], ESI 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR DIL, CL 
SETNP AL 
AND RAX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RAX], ECX 
SETNLE DIL 
CMOVO AX, BX 
CLD  
CMOVS EAX, EBX 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, EBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RSI] 
AND DL, CL 
SETNP DL 
SETNP AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ RBX, qword ptr [R14 + RBX] 
OR RDI, RAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE EBX, dword ptr [R14 + RAX] 
MOV DX, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
