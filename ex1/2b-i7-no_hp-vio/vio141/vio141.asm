.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR SI, BX 
AND RSI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 42 
CMOVNL EDI, EBX 
AND RSI, 0b1111111111111 # instrumentation
CMOVL EAX, dword ptr [R14 + RSI] 
SETNO AL 
SETNBE AL 
CMOVO EAX, EAX 
CMOVO RBX, RDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RBX], 106 
LEA EBX, qword ptr [RBX] 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RAX], BX 
BTS EDI, -53 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP EDI, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
AND CX, 0b111 # instrumentation
LOCK BTS word ptr [R14 + RCX], CX 
CWDE  
AND RSI, 0b1111111111111 # instrumentation
CMOVZ DI, word ptr [R14 + RSI] 
CMOVNP CX, CX 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RDX] 
BTS RDX, RSI 
CMPXCHG DL, CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDX], -84 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, ECX 
XOR AL, 79 
CMOVNL RAX, RBX 
AND AL, -87 
BTS EBX, 58 
AND DIL, -83 # instrumentation
CMOVNO EAX, EBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP RBX, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
AND RDI, 0b111 # instrumentation
LOCK BTS qword ptr [R14 + RBX], RDI 
TEST DL, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
