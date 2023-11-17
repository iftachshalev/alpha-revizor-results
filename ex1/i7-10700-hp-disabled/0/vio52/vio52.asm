.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -75 # instrumentation
XCHG DI, AX 
SETNBE AL 
CMOVB EAX, EDX 
AND RSI, 0b1111111111111 # instrumentation
SETNP byte ptr [R14 + RSI] 
CMOVS RDX, RDX 
OR BL, DL 
CMOVNLE EAX, ESI 
CMOVZ SI, AX 
XCHG DL, DL 
BTC RSI, -104 
TEST SI, CX 
CWDE  
CMOVNL ESI, EAX 
XADD SI, DX 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 42 # instrumentation
CMOVNO SI, DI 
CMOVNP RBX, RCX 
AND RAX, 0b1111111111111 # instrumentation
CMOVS RCX, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RCX, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE RDI, qword ptr [R14 + RSI] 
TEST RDX, RDI 
SETL SIL 
XADD EBX, ESI 
CMOVS BX, BX 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, EBX 
MOV EBX, 228814289 
JMP .bb_main.2 
.bb_main.2:
AND DIL, 110 # instrumentation
SETNZ CL 
SETNS CL 
XOR SIL, 72 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RSI], RCX 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE RCX, qword ptr [R14 + RSI] 
MOVSX CX, CL 
CMOVO RCX, RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
