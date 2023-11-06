.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMPXCHG DL, DL 
NOT EAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVL RDI, qword ptr [R14 + RDX] 
XADD CL, BL 
MOV EAX, EBX 
CMOVL RSI, RCX 
SETB CL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE CX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
BTS dword ptr [R14 + RAX], 3 
XADD EBX, EBX 
CMOVB ECX, EBX 
CMOVP EDX, EDI 
SETLE AL 
AND RBX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RBX], CX 
CMOVNP EDI, EAX 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDX], 23 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE DX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE DI, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP RSI, qword ptr [R14 + RCX] 
BTC RBX, -23 
BTS BX, 52 
AND SIL, -115 # instrumentation
MOVSX AX, BL 
CMOVNL CX, AX 
TEST DL, BL 
XCHG AX, AX 
AND RSI, 0b1111111111111 # instrumentation
AND EAX, 0b111 # instrumentation
BTC dword ptr [R14 + RSI], EAX 
AND RBX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RBX], RBX 
BTR DX, DI 
AND RAX, 0b1111111111111 # instrumentation
OR RDX, qword ptr [R14 + RAX] 
XOR AX, -28723 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RDX], -26 
TEST SI, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
