.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTS RDI, -33 
AND SIL, -49 # instrumentation
NOT RDX 
CMOVNLE RSI, RAX 
BTC SI, 18 
BTS EAX, 37 
AND RDX, 0b1111111111111 # instrumentation
AND DX, 0b111 # instrumentation
BTC word ptr [R14 + RDX], DX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL ESI, dword ptr [R14 + RSI] 
SETLE DIL 
SETLE DIL 
CMOVP RDI, RDX 
MOVSX RAX, DIL 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RBX], DI 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST EAX, -1270916659 
MOVSX EDI, CL 
AND EAX, 204898217 
MOVSX CX, AL 
AND RDI, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RDI] 
BTS AX, DX 
BT DI, 101 
AND SIL, 16 # instrumentation
CMOVNL RCX, RDX 
BTC DI, -54 
AND DIL, 110 # instrumentation
CMOVLE EDX, EDX 
CMOVP EDI, EDI 
SETNZ CL 
XADD BL, BL 
CMOVP CX, BX 
BTR RCX, 87 
TEST AL, SIL 
BSWAP EDX 
LEA ECX, qword ptr [RAX + RBX + 58523] 
TEST RAX, 1988983103 
BT EDI, 25 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
