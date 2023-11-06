.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
LEA DI, qword ptr [RDI] 
MOV CL, CL 
AND RDI, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RDI] 
SETO DIL 
BSWAP EAX 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RCX], EAX 
JL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND SIL, -42 # instrumentation
SETS AL 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RAX], RCX 
TEST RCX, RDI 
AND AX, SI 
CMOVNL RAX, RDX 
SETBE DIL 
XCHG RBX, RDI 
SETZ BL 
JMP .bb_main.2 
.bb_main.2:
STC  
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR EAX, dword ptr [R14 + RSI] 
MOV DL, AL 
BTS BX, AX 
AND RCX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RCX], SIL 
MOVZX DI, BL 
AND RCX, 0b1111111111111 # instrumentation
AND CL, byte ptr [R14 + RCX] 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
LOCK BTC word ptr [R14 + RSI], 2 
CMPXCHG AL, AL # instrumentation
AND DIL, -38 # instrumentation
LAHF  
AND RBX, 0b1111111111111 # instrumentation
CMOVNL EBX, dword ptr [R14 + RBX] 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, EDI 
XOR SIL, 74 
AND AX, 50 
BT SI, AX 
OR DIL, -65 
JMP .bb_main.4 
.bb_main.4:
BTC RDI, RDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO EDX, dword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
