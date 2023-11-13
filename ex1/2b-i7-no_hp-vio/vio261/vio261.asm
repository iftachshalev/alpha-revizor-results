.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVO BX, word ptr [R14 + RCX] 
CMOVBE RBX, RCX 
XOR RAX, -1567616017 
CMOVNL DI, DI 
SETO BL 
CMOVO ECX, EDX 
CMOVNO DI, DI 
TEST CL, -5 
XCHG CX, AX 
MOV CX, -744 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTC word ptr [R14 + RDI], 3 
SETNZ CL 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RCX], EAX 
TEST SI, DX 
BTC AX, -63 
OR CL, CL 
CMPXCHG DL, CL # instrumentation
CMOVNLE EDX, ECX 
LAHF  
AND RBX, 0b1111111111111 # instrumentation
MOVSX RDX, word ptr [R14 + RBX] 
CMOVZ CX, DX 
CMOVNB RDX, RDI 
CMOVZ RDX, RSI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB RDX, qword ptr [R14 + RDX] 
CMOVP BX, DX 
SETZ DL 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF RCX, qword ptr [R14 + RDI] 
MOVSX ESI, SIL 
XCHG RBX, RAX 
BTS EBX, -64 
AND DIL, -106 # instrumentation
CMOVO EDX, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
