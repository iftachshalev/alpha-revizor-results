.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -24 # instrumentation
CMOVNLE DI, AX 
MOVSX DI, BL 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RCX 
OR EDX, -101 
MOV SIL, 15 
AND RCX, 0b1111111111111 # instrumentation
CMOVP EBX, dword ptr [R14 + RCX] 
BTS EDX, ECX 
AND RDX, 0b1111111111111 # instrumentation
MOVSX CX, byte ptr [R14 + RDX] 
SETS AL 
CMOVO EDI, EAX 
SETBE CL 
AND RSI, 0b1111111111111 # instrumentation
OR RDX, qword ptr [R14 + RSI] 
CMOVO EAX, ECX 
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND SIL, -56 # instrumentation
CMOVNZ SI, BX 
AND RBX, 0b1111111111111 # instrumentation
CMOVL ECX, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
AND RDI, 0b111 # instrumentation
BTC qword ptr [R14 + RSI], RDI 
AND SIL, -79 # instrumentation
SETNB CL 
LEA DI, qword ptr [RDX + RCX + 16606] 
XCHG EDX, EAX 
CMOVP RAX, RBX 
CMOVNL DI, CX 
XOR AL, 34 
JMP .bb_main.2 
.bb_main.2:
LEA RCX, qword ptr [RSI + RBX + 58402] 
XCHG EAX, EAX 
TEST AX, 21808 
AND DIL, -41 
SETZ AL 
CMPXCHG DIL, DL 
CMOVBE RBX, RCX 
SETNBE BL 
NOT BL 
CMOVBE RCX, RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
