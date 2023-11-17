.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 86 # instrumentation
SETNL DIL 
AND RAX, 0b1111111111111 # instrumentation
MOV ESI, dword ptr [R14 + RAX] 
SETB AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RDI] 
XOR AL, -109 
CMOVNL RAX, RSI 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RSI], -93 
SETNZ DIL 
CMOVL CX, BX 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND AL, DL 
XOR RAX, 1042744680 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF RAX, qword ptr [R14 + RBX] 
AND DIL, 62 # instrumentation
SETP BL 
MOVSX SI, AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ EAX, dword ptr [R14 + RDX] 
SETNLE BL 
CMOVL DI, DI 
TEST AX, 32262 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RBX], 104 
BT ESI, 116 
TEST RSI, RSI 
AND RDI, 0b1111111111111 # instrumentation
CMOVP EBX, dword ptr [R14 + RDI] 
MOV DIL, -61 
MOV ESI, EDX 
JZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND SIL, -64 # instrumentation
SETZ DIL 
SETNO AL 
BTS CX, -25 
XADD SI, AX 
BTS EDI, 16 
AND SIL, -101 # instrumentation
LEA RBX, qword ptr [RAX] 
CMOVP RDX, RSI 
AND RCX, 0b1111111111111 # instrumentation
AND EDX, 0b111 # instrumentation
BTC dword ptr [R14 + RCX], EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
