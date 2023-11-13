.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 101 # instrumentation
MOV EBX, EDI 
CMOVP BX, DX 
CMOVNLE DI, DI 
SETNO BL 
BTC RAX, -122 
NOP  
SETNZ DL 
SETBE CL 
TEST AL, DL 
XADD SI, BX 
AND RCX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RCX] 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
AND CL, byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
AND SI, 0b111 # instrumentation
LOCK BTC word ptr [R14 + RAX], SI 
OR RDI, 50 
XADD AX, DX 
OR DI, 0b1000000000000000 # instrumentation
BSF AX, DI 
MOVSX ESI, DI 
BT DX, -80 
AND RSI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RSI], BX 
AND RSI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RSI], RDX 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RDI], ECX 
XCHG DL, BL 
TEST DIL, -63 
AND RDI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RDI], AL 
XOR SIL, -110 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE ECX, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE RCX, qword ptr [R14 + RDX] 
SETNS SIL 
AND RSI, 0b1111111111111 # instrumentation
AND RSI, 0b111 # instrumentation
LOCK BTS qword ptr [R14 + RSI], RSI 
CMPXCHG RSI, RDX 
SETNP CL 
MOVZX DX, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
