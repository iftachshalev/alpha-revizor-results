.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTR ESI, EDX 
SAHF  
XOR DI, CX 
SETP CL 
CMPXCHG BL, BL 
TEST AX, -25662 
CDQ  
AND RDX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDX], -79 
AND DX, -108 
OR EAX, ECX 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], DL 
OR RAX, -43 
BTC RSI, RBX 
CMOVB SI, DI 
XADD AX, DX 
CMOVNP ECX, ESI 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RAX], EBX 
XCHG ESI, EAX 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RAX] 
SETNO AL 
CBW  
BTR CX, -1 
XOR AX, -29696 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP EDX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE RBX, qword ptr [R14 + RBX] 
SETNP DL 
LEA ESI, qword ptr [RCX + RBX] 
AND RBX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RBX], DIL 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE RSI, qword ptr [R14 + RBX] 
AND AL, -109 
CMOVP RDX, RSI 
SETNZ DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
