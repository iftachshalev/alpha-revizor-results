.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], DI 
CDQ  
CMPXCHG RDI, RDI 
MOVSX ESI, BL 
XOR DIL, 94 
AND RCX, 0b1111111111111 # instrumentation
AND RCX, qword ptr [R14 + RCX] 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XADD BX, SI 
CMOVNS SI, DI 
SETBE DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVP EDX, dword ptr [R14 + RBX] 
MOVSX ESI, CL 
CMOVNO DI, BX 
SETNS AL 
LOOPE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
BTR EDX, EBX 
AND SIL, -86 # instrumentation
CMOVL RDX, RAX 
AND DIL, -57 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP RCX, qword ptr [R14 + RCX] 
CMPXCHG DI, SI 
AND CL, AL 
CMOVP BX, SI 
SETL DL 
AND RDX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDX], SI 
BSWAP EDI 
XCHG EBX, EAX 
CMOVP RSI, RDX 
JMP .bb_main.3 
.bb_main.3:
AND DIL, 67 # instrumentation
CMOVNS BX, SI 
TEST CX, AX 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RCX, qword ptr [R14 + RAX] 
CDQ  
BTS CX, 64 
AND SIL, -80 # instrumentation
SETP SIL 
XCHG ESI, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
