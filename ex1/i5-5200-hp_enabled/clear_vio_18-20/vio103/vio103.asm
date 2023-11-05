.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -51 # instrumentation
CMOVS RCX, RDI 
AND BL, -122 
AND RAX, 169966675 
XOR EBX, 2 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL DI, word ptr [R14 + RAX] 
JMP .bb_main.1 
.bb_main.1:
MOVSX SI, CL 
XOR ESI, -96 
BTC DX, -15 
CMPXCHG RDI, RCX 
XADD DI, DX 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
OR ECX, dword ptr [R14 + RBX] 
BT AX, -112 
OR EAX, -1061216747 
XOR AX, -5518 
AND RAX, 0b1111111111111 # instrumentation
AND BL, byte ptr [R14 + RAX] 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RBX, RSI 
BT EAX, ECX 
JMP .bb_main.3 
.bb_main.3:
AND SIL, -69 # instrumentation
SETNBE CL 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RSI, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RCX], -115 
AND RSI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RSI], CL 
SETLE DL 
JMP .bb_main.4 
.bb_main.4:
AND SIL, 40 # instrumentation
CMOVNBE DI, DX 
XCHG RSI, RAX 
XOR BL, BL 
AND CL, 115 
AND RDI, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RDI] 
SETO AL 
SETNZ CL 
XCHG EDI, EDI 
TEST EAX, EBX 
BTR RDI, RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
