.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -46 # instrumentation
CMOVLE BX, BX 
XOR BX, AX 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RBX 
AND SIL, -26 # instrumentation
CLD  
SETP DL 
CMOVZ EBX, EAX 
OR CX, 0b1000000000000000 # instrumentation
BSF DI, CX 
TEST DX, DX 
AND RAX, 41 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RDI], DI 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RAX], ECX 
XCHG CL, CL 
TEST EDX, EAX 
CMOVNLE RAX, RAX 
SETNB DL 
MOVZX RBX, BX 
SETS CL 
AND RSI, 0b1111111111111 # instrumentation
XOR BX, word ptr [R14 + RSI] 
MOV RDX, RAX 
CMOVNL RDI, RDI 
XOR ESI, EBX 
CMOVLE EDI, EAX 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
XOR BX, SI 
STD  
BTC ECX, EDI 
BT EDI, ECX 
CMPXCHG DIL, CL 
BTR RBX, RBX 
XADD EDX, EAX 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], CL 
OR RDX, -71 
BSWAP RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
