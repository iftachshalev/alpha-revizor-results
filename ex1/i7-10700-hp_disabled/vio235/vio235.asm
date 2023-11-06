.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVS RBX, qword ptr [R14 + RDI] 
SETL AL 
AND EAX, 1152023503 
CMOVNL RDI, RDX 
MOVZX RBX, BL 
JNO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOVSX EBX, DX 
OR DIL, CL 
CMOVS AX, CX 
SETBE CL 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RAX, word ptr [R14 + RCX] 
CMOVNZ EDX, EBX 
CMOVBE RCX, RDI 
BT EBX, EAX 
AND RCX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RCX], -2002022293 
AND RAX, 0b1111111111111 # instrumentation
AND CX, 0b111 # instrumentation
BTC word ptr [R14 + RAX], CX 
CMOVNBE ECX, EDI 
LOOPE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
BT DI, 76 
BSWAP EDI 
OR CX, CX 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RSI], EDX 
SETP DL 
CMOVS DX, BX 
CMOVB RCX, RCX 
CMPXCHG AL, DL 
TEST AX, -22354 
AND RDX, 0b1111111111111 # instrumentation
CMOVO EBX, dword ptr [R14 + RDX] 
BT RDX, -113 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RCX], EBX 
BTC EAX, -126 
OR EAX, 36 
AND AL, 95 
CMOVNP RDX, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
