.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
OR DX, word ptr [R14 + RSI] 
SETBE BL 
BTC SI, -126 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVB EDX, dword ptr [R14 + RDX] 
XCHG ESI, EDX 
TEST EAX, -251937430 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDI], DIL 
CMOVP AX, SI 
BTS AX, 82 
CMPXCHG BL, DL 
CMOVO BX, BX 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -19 # instrumentation
MOV SI, DI 
SETNL DIL 
CMOVNB RBX, RSI 
CMOVP AX, CX 
MOV SI, AX 
AND RCX, 0b1111111111111 # instrumentation
LOCK BTC qword ptr [R14 + RCX], 4 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE EAX, dword ptr [R14 + RCX] 
XOR SIL, -40 
CMOVNL RSI, RSI 
AND EDX, 89 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RDX], -84 
CMOVO ECX, ECX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB RDI, qword ptr [R14 + RSI] 
CMOVNP RDI, RDI 
CWDE  
CMOVNLE AX, CX 
AND RSI, 0b1111111111111 # instrumentation
BTS dword ptr [R14 + RSI], 0 
AND DIL, -16 # instrumentation
CMOVS RAX, RDX 
CMOVBE RDX, RCX 
AND RDI, 0b1111111111111 # instrumentation
AND EAX, 0b111 # instrumentation
LOCK BTR dword ptr [R14 + RDI], EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
