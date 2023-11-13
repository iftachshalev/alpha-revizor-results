.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BT SI, AX 
BTC ECX, 36 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RBX] 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, ECX 
AND RDI, 0b1111111111111 # instrumentation
BTR dword ptr [R14 + RDI], 7 
AND DIL, -80 # instrumentation
SETNO SIL 
SETNL DL 
CMPXCHG CL, BL 
NOT EBX 
BTR ESI, -41 
BTC RBX, 115 
TEST BX, DI 
BTS RSI, RBX 
STC  
CMOVNZ ESI, EDI 
AND CX, 86 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MOVZX BX, byte ptr [R14 + RDX] 
MOVZX ECX, BL 
MOV BL, 114 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDX], 99 
LEA RCX, qword ptr [RAX] 
AND RDI, 0b1111111111111 # instrumentation
AND DI, 0b111 # instrumentation
BTS word ptr [R14 + RDI], DI 
XADD RDI, RCX 
AND DL, BL 
AND RAX, 0b1111111111111 # instrumentation
XOR RDI, qword ptr [R14 + RAX] 
NOP  
CMOVNL RDI, RDX 
OR ESI, 51 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RCX], SI 
AND RSI, 0b1111111111111 # instrumentation
MOV SIL, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RSI], -55 
CMPXCHG RAX, RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
