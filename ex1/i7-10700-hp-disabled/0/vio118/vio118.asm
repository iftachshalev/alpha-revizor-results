.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 38 # instrumentation
NOT DL 
MOVSX ESI, DL 
BTS CX, -116 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -81 # instrumentation
SETNBE DL 
BTR RAX, -36 
AND SIL, -40 # instrumentation
CMOVNL AX, AX 
BTS EDI, ESI 
AND CL, DL 
SETNS BL 
STD  
AND RSI, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RSI], 18 
AND RBX, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RBX], CX 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMOVNP RBX, qword ptr [R14 + RDX] 
XCHG ECX, EDI 
SETNBE BL 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, EAX 
AND SIL, -87 # instrumentation
SETNS BL 
MOV EDI, EBX 
AND RAX, -1775748257 
BSWAP EAX 
JB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
AND EDX, 0b111 # instrumentation
BTS dword ptr [R14 + RBX], EDX 
AND SIL, 53 # instrumentation
CMOVNL CX, DI 
CMOVNLE RBX, RCX 
AND RSI, 0b1111111111111 # instrumentation
AND CX, 0b111 # instrumentation
LOCK BTR word ptr [R14 + RSI], CX 
AND RAX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RAX], -1432279355 
JZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RSI] 
MOV CL, -89 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE ESI, dword ptr [R14 + RSI] 
CMPXCHG EBX, EDX 
AND RDX, 0b1111111111111 # instrumentation
AND CX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB DI, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RCX], DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
