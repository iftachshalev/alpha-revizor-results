.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RSI], 64 
CMOVNL EDX, ESI 
CBW  
AND EDI, ECX 
CMOVNLE EBX, EDI 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSF SI, word ptr [R14 + RDI] 
MOV EBX, EAX 
AND AL, -16 
AND RCX, 0b1111111111111 # instrumentation
MOV RSI, qword ptr [R14 + RCX] 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RCX, RDI 
AND DIL, -125 # instrumentation
CMOVNL RBX, RSI 
AND RDI, 0b1111111111111 # instrumentation
AND RDI, 0b111 # instrumentation
BTC qword ptr [R14 + RDI], RDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RAX], 53 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOVSX ESI, DL 
AND RDI, 0b1111111111111 # instrumentation
XOR SIL, byte ptr [R14 + RDI] 
SETB BL 
CMOVNP CX, DI 
TEST RAX, 1109217708 
CLC  
BTR EBX, -74 
BTR EAX, EDX 
MOVZX EBX, BX 
STC  
CMOVNBE RSI, RDX 
AND RAX, -1699195278 
CMOVBE ESI, ECX 
SETB CL 
CMOVNB DI, BX 
CMOVLE SI, DX 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RDI], ESI 
AND DL, 62 
CMOVB RDX, RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
