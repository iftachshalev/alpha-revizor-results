.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RSI], -50 
TEST RSI, RSI 
SETNZ DL 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RDX], EDX 
AND RDX, 0b1111111111111 # instrumentation
AND AL, byte ptr [R14 + RDX] 
NOT CL 
CMOVL RSI, RBX 
SAHF  
XADD DL, BL 
BTR RSI, RDX 
AND SIL, 19 # instrumentation
CMOVNLE BX, DX 
JNBE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND SIL, 117 # instrumentation
SETBE BL 
OR BX, 38 
CMOVNLE RSI, RSI 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF ECX, dword ptr [R14 + RDI] 
AND RSI, 25 
XCHG SI, AX 
AND RBX, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RBX] 
XOR ECX, EBX 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSR RCX, RSI 
JMP .bb_main.2 
.bb_main.2:
AND SIL, -102 # instrumentation
SETNP SIL 
LEA RSI, qword ptr [RBX + RCX + 7262] 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RDX], ECX 
XCHG CX, AX 
CMOVNP AX, DI 
AND RSI, 0b1111111111111 # instrumentation
CMOVO RDI, qword ptr [R14 + RSI] 
NOT CX 
AND RBX, 0b1111111111111 # instrumentation
AND EAX, dword ptr [R14 + RBX] 
JMP .bb_main.3 
.bb_main.3:
BSWAP EDI 
AND RBX, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
LOCK BTS dword ptr [R14 + RBX], EBX 
AND SIL, -94 # instrumentation
SETLE BL 
AND RDX, 0b1111111111111 # instrumentation
BT word ptr [R14 + RDX], 0 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
