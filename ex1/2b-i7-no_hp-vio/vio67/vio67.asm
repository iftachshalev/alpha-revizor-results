.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTC RSI, RBX 
AND RAX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RAX], EAX 
AND RBX, 0b1111111111111 # instrumentation
OR RBX, qword ptr [R14 + RBX] 
MOV CL, -43 
AND RAX, 0b1111111111111 # instrumentation
AND RBX, 0b111 # instrumentation
LOCK BTS qword ptr [R14 + RAX], RBX 
AND SIL, 99 # instrumentation
CMOVLE EAX, EDX 
NOT RAX 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RSI], AL 
CMOVNB EBX, EDI 
MOV AL, 45 
BTC EAX, 23 
TEST SI, -10044 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], 6 
AND RSI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RSI], AL 
CMOVL RCX, RSI 
AND RDX, 0b1111111111111 # instrumentation
AND RDX, 0b111 # instrumentation
LOCK BTS qword ptr [R14 + RDX], RDX 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLC  
CMPXCHG BX, DI 
AND RSI, 0b1111111111111 # instrumentation
CMOVO ECX, dword ptr [R14 + RSI] 
OR BL, -46 
NOT DL 
AND RDX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDX], DL 
CMOVNB EDI, EDX 
CBW  
TEST BL, 83 
CMOVLE EBX, ECX 
XOR SIL, 92 
XADD RBX, RSI 
BTC RCX, -7 
BTC AX, -72 
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], 81 
BTC RDX, RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
