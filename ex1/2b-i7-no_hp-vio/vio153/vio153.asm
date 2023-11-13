.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
AND EDI, 0b111 # instrumentation
BTC dword ptr [R14 + RCX], EDI 
CMOVZ RAX, RBX 
CMOVZ BX, SI 
STC  
XOR AX, -9221 
BT DX, 126 
BTC BX, 46 
AND RDX, 0b1111111111111 # instrumentation
XOR AX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RAX], EDX 
CMOVNZ RCX, RDX 
CMOVO EDI, EAX 
TEST DL, -56 
BTS AX, 98 
SETNB DL 
TEST AX, -1466 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
AND EDI, dword ptr [R14 + RSI] 
MOVSX RBX, BL 
CMOVBE ECX, ECX 
CMPXCHG RDI, RBX 
XCHG EAX, ECX 
AND CL, CL 
CMPXCHG EBX, EBX 
CWDE  
CMOVL RCX, RAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP EDX, dword ptr [R14 + RSI] 
MOV EAX, EDX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE RDX, qword ptr [R14 + RDI] 
CMOVNP AX, SI 
CMOVP RBX, RDI 
AND DX, -94 
AND RCX, 0b1111111111111 # instrumentation
CMOVO SI, word ptr [R14 + RCX] 
CLD  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
