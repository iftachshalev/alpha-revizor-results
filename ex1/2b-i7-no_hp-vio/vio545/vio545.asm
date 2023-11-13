.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RCX], 0 
AND SIL, -38 # instrumentation
CMOVO AX, AX 
SAHF  
XCHG EDX, EAX 
OR SI, 0b1000000000000000 # instrumentation
BSF SI, SI 
CMOVNZ RAX, RAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RCX], SIL 
CMOVO EAX, EBX 
SETL AL 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RCX, RDX 
AND SIL, 127 # instrumentation
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RBX], CL 
LEA ESI, qword ptr [RBX + RSI] 
SETNS CL 
TEST DIL, -26 
OR DI, 0b1000000000000000 # instrumentation
BSR BX, DI 
AND RCX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RCX], -75 
XCHG RDI, RAX 
BTS RCX, -74 
XOR AL, 43 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE DX, word ptr [R14 + RBX] 
BTS EDX, -21 
AND DIL, -120 # instrumentation
SETNS AL 
AND RCX, 0b1111111111111 # instrumentation
AND RCX, 0b111 # instrumentation
LOCK BTC qword ptr [R14 + RCX], RCX 
XADD EDX, EDX 
AND RSI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RSI] 
BTC EDX, 31 
AND RBX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RBX], -20 
OR CX, 0b1000000000000000 # instrumentation
BSF DX, CX 
CMOVZ BX, SI 
CLD  
AND AL, 94 
TEST DI, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
