.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 127 # instrumentation
CMOVNBE RAX, RBX 
MOV CX, DI 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], SIL 
BTC RAX, RSI 
BTC BX, DI 
BT RDX, 96 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO RDX, qword ptr [R14 + RBX] 
CWD  
CMOVP EDI, EAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO CX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RBX], -115 
CMOVL EBX, ESI 
SETB DL 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 34 # instrumentation
NOT EBX 
CMOVNP SI, CX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL RDX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR EDX, dword ptr [R14 + RSI] 
AND SIL, 80 # instrumentation
SETB CL 
XCHG RBX, RDI 
MOVSX RCX, CX 
SETL DL 
AND SIL, 85 
CMC  
CLD  
AND RCX, 0b1111111111111 # instrumentation
CMOVZ RBX, qword ptr [R14 + RCX] 
AND AX, 8201 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RBX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
AND ECX, 0b111 # instrumentation
LOCK BTC dword ptr [R14 + RBX], ECX 
MOV EDX, 627946122 
CMOVNBE RDI, RDX 
XOR AX, -7001 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
