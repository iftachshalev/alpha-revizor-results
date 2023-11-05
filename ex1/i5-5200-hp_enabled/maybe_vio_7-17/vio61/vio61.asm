.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMPXCHG DI, DI 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, EDI 
CWD  
AND RCX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RCX], SIL 
BTR RDX, RCX 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTC word ptr [R14 + RDI], 1 
AND SIL, DL 
JMP .bb_main.1 
.bb_main.1:
XADD CL, CL 
MOVZX RDX, DIL 
BTC CX, 53 
AND SIL, -99 # instrumentation
CMOVNZ EDI, EDI 
SETNP AL 
CMPXCHG AX, DI 
MOVSX EBX, SIL 
JNO .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
XOR BL, CL 
XOR AL, -104 
CMOVNO RSI, RAX 
MOVZX EDI, CL 
AND RCX, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RCX] 
TEST AX, -2550 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RBX], 51 
JLE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
TEST AL, -33 
CMOVNBE EDI, EDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE ECX, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ SI, word ptr [R14 + RDX] 
XOR EDX, -44 
CMC  
NOT RCX 
JMP .bb_main.4 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE EAX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE ECX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RAX], 39 
AND RDX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDX], EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
