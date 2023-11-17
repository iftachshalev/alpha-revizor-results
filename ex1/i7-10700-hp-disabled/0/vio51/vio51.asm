.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RAX], -100 
AND RDI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDI], RAX 
BTS RBX, RAX 
AND AL, -82 
LEA CX, qword ptr [RDX] 
SETL AL 
NOT CX 
LOOPNE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
MOVSX RDX, byte ptr [R14 + RBX] 
CMOVNP RDI, RSI 
CMOVNP BX, BX 
OR EAX, EAX 
AND RAX, 1398221136 
MOV AX, -6628 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RSI], -124 
BSWAP RDX 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RDI], EDI 
AND RAX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RAX], RSI 
BT RAX, RBX 
AND SIL, -99 # instrumentation
SETNZ DL 
CMOVNLE CX, CX 
CMOVNZ RDX, RSI 
BTR SI, -39 
JMP .bb_main.3 
.bb_main.3:
MOVSX EDX, SIL 
NOT RDX 
XCHG DX, AX 
STC  
BTC RBX, RAX 
AND RAX, -655969636 
XCHG BL, DL 
JMP .bb_main.4 
.bb_main.4:
XOR RAX, RAX 
XCHG RDI, RAX 
AND RAX, 0b1111111111111 # instrumentation
AND RDI, 0b111 # instrumentation
BTR qword ptr [R14 + RAX], RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
