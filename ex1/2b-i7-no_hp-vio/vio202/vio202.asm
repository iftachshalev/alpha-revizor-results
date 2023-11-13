.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NOT SI 
AND RCX, 0b1111111111111 # instrumentation
MOVSX DI, byte ptr [R14 + RCX] 
BTR BX, 2 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB DX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDI], 4 
OR DX, 0b1000000000000000 # instrumentation
BSF SI, DX 
AND DIL, -66 # instrumentation
CMOVP EDI, EBX 
AND EDI, -115 
AND RSI, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RSI] 
XOR RAX, -77 
AND DL, DL 
BSWAP ESI 
AND RBX, 0b1111111111111 # instrumentation
AND DI, 0b111 # instrumentation
BTC word ptr [R14 + RBX], DI 
CMOVB EBX, EDX 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
AND CL, byte ptr [R14 + RDI] 
LEA ESI, qword ptr [RDI + RCX] 
MOVSX EDX, CL 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDX], CL 
AND RDX, -126 
CMOVL ESI, ESI 
BT AX, DX 
AND SIL, 42 # instrumentation
MOVSX EBX, SIL 
CMOVNLE AX, CX 
CMOVNLE DI, DX 
BTR BX, -24 
AND AL, 17 
AND RDX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RDX], 2 
SETBE CL 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], AL 
BTS EDX, EAX 
AND DIL, 121 # instrumentation
CMOVP EAX, ESI 
BT EDI, -84 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
