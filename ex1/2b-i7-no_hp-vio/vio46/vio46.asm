.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BT SI, BX 
AND SIL, 11 # instrumentation
CMOVNP AX, SI 
BTR RCX, -114 
SAHF  
TEST EDI, EDX 
OR BL, AL 
MOVZX RDX, SI 
CMOVNZ RDI, RDX 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RAX], DL 
CLC  
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST DL, CL 
BSWAP EDI 
OR CX, BX 
XOR EAX, 653066551 
CMOVNBE BX, SI 
MOVZX EAX, DL 
NOT DI 
CMOVNZ EAX, EDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL ESI, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
BTR qword ptr [R14 + RBX], 3 
BSWAP RDX 
OR EDI, EBX 
AND RCX, 0b1111111111111 # instrumentation
MOVSX SI, byte ptr [R14 + RCX] 
CMOVNZ RCX, RCX 
AND RSI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RSI], -7952 
CMOVP RCX, RSI 
XOR BL, CL 
BTC AX, SI 
CMOVNBE AX, AX 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, ESI 
AND DIL, -110 # instrumentation
MOVZX AX, SIL 
CMOVP EDX, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
