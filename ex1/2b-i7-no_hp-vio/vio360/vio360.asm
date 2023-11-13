.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XADD EBX, EBX 
MOVZX RBX, CX 
BT RCX, 120 
AND RDI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDI], -25275 
AND RAX, 0b1111111111111 # instrumentation
AND EAX, dword ptr [R14 + RAX] 
CMOVNP EDI, EAX 
CMPXCHG AL, BL 
CLC  
MOVSX EAX, BL 
SETNP AL 
BTC DI, -126 
OR AX, 1 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], RBX 
AND RAX, 0b1111111111111 # instrumentation
XOR SI, word ptr [R14 + RAX] 
CMOVL EDI, EAX 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOVZX EAX, CL 
TEST AX, -27969 
OR AL, -17 
AND BL, -32 
TEST ESI, ESI 
CMOVNL RAX, RAX 
AND RSI, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RSI], 125 
XADD RSI, RDI 
SETNB DIL 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RCX], SI 
AND EAX, 375092175 
BTR CX, DX 
AND AL, 96 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB DI, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR EAX, dword ptr [R14 + RDX] 
AND SIL, 87 # instrumentation
SETNP CL 
MOVSX DI, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
