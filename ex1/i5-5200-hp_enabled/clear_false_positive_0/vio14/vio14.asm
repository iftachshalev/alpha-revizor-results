.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR AL, CL 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSF BX, word ptr [R14 + RCX] 
AND SIL, 110 # instrumentation
NOT CL 
XCHG SIL, SIL 
MOV DL, AL 
CMOVNP AX, DX 
BTS EDX, -32 
BT RDX, RCX 
AND SIL, 79 # instrumentation
CMOVNL RDI, RSI 
SETNS SIL 
AND RDX, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
LOCK BTC qword ptr [R14 + RDX], RAX 
AND DIL, 54 # instrumentation
CMOVP DX, DI 
CWDE  
AND RDI, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RDI], SI 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND SIL, 125 # instrumentation
NOT RSI 
NOT AL 
CMOVNO BX, DI 
AND RSI, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RSI] 
BTS EDX, -32 
AND SIL, -59 # instrumentation
SETO BL 
XCHG RSI, RDX 
MOVSX ECX, DIL 
CMOVNL RDX, RCX 
CMOVBE DX, SI 
MOV ESI, -1187107882 
OR DIL, SIL 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, 6 # instrumentation
CMOVNZ DI, BX 
AND RSI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RSI], AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ CX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVB ESI, dword ptr [R14 + RCX] 
CMOVNP EDX, ECX 
MOVZX ECX, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
