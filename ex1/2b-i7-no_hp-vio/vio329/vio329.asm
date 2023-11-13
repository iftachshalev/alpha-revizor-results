.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
MOVZX ESI, byte ptr [R14 + RAX] 
XCHG AX, AX 
XADD RAX, RAX 
AND RBX, 0b1111111111111 # instrumentation
AND RSI, 0b111 # instrumentation
BTR qword ptr [R14 + RBX], RSI 
MOV CX, 13863 
AND RBX, 0b1111111111111 # instrumentation
MOVSX AX, byte ptr [R14 + RBX] 
OR DI, 0b1000000000000000 # instrumentation
BSR DI, DI 
AND DIL, -18 # instrumentation
SETNP DL 
OR CL, BL 
CMOVNBE ESI, EBX 
AND RCX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RCX], 43 
TEST CX, 31817 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RDX], 90 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST DL, BL 
CMOVL DI, BX 
AND EDI, 44 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE EBX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RCX], BL 
AND RCX, -119 
CMOVO RCX, RDX 
AND RCX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RCX] 
LEA RSI, qword ptr [RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE RCX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], ESI 
SETNBE BL 
TEST RBX, -505227841 
BTC BX, -124 
XOR BX, AX 
BTS RDX, RDX 
AND SIL, 24 # instrumentation
CMOVNL RSI, RDX 
CMPXCHG CX, CX 
XOR RAX, -148885300 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
