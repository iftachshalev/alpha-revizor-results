.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -10 # instrumentation
CMOVNL RDI, RBX 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RAX], SI 
CMOVLE EAX, EBX 
AND RBX, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RBX], BX 
CMOVNZ RSI, RAX 
XCHG RAX, RBX 
JNBE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVS EAX, dword ptr [R14 + RDI] 
SETB DIL 
CMOVNLE RCX, RAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDX], 106 
CMOVNO CX, DI 
BTR RDI, RSI 
NOT SI 
AND RSI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RSI], ECX 
CMOVO RAX, RDI 
SETB DIL 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, 5 # instrumentation
CMOVNBE RAX, RDI 
AND RSI, 0b1111111111111 # instrumentation
AND DX, 0b111 # instrumentation
BTS word ptr [R14 + RSI], DX 
AND SIL, 28 # instrumentation
CMOVNLE DI, BX 
AND RDX, 0b1111111111111 # instrumentation
AND DI, 0b111 # instrumentation
BTS word ptr [R14 + RDX], DI 
AND RAX, 2079860057 
SETB BL 
CMPXCHG RDX, RSI 
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
XOR RAX, 657356785 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE SI, word ptr [R14 + RSI] 
XOR DI, BX 
TEST EAX, -1812534664 
XCHG CX, SI 
OR CL, CL 
SETBE BL 
AND RAX, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
LOCK BTR dword ptr [R14 + RAX], EBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE BX, word ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
