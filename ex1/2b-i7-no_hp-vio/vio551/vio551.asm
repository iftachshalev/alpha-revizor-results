.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR RDX, RBX 
OR DI, 0b1000000000000000 # instrumentation
BSF AX, DI 
AND RBX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RBX] 
XCHG EDX, ESI 
TEST AX, 24624 
XOR AL, DL 
AND EBX, -87 
BTC SI, CX 
AND RDI, 0b1111111111111 # instrumentation
OR SIL, byte ptr [R14 + RDI] 
CMOVNLE RBX, RBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE RSI, qword ptr [R14 + RDX] 
TEST BL, -72 
LEA RDX, qword ptr [RDX + RBX + 31453] 
TEST DL, 30 
XOR SI, -110 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTS RDI, RDI 
CMPXCHG RDI, RDI 
TEST AX, -9413 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDI], -41 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE BX, word ptr [R14 + RBX] 
CMOVNB EDX, ESI 
TEST RDX, RCX 
CMOVNZ CX, BX 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG BL, CL # instrumentation
MOVZX ECX, byte ptr [R14 + RDX] 
SETO DL 
SETNS AL 
LAHF  
AND RAX, 0b1111111111111 # instrumentation
CMOVBE RDX, qword ptr [R14 + RAX] 
MOV RBX, RBX 
CMOVB RSI, RCX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE RBX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
AND AX, 0b111 # instrumentation
BT word ptr [R14 + RSI], AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
