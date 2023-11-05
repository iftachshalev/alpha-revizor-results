.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
AND RDI, 0b111 # instrumentation
BT qword ptr [R14 + RSI], RDI 
OR AX, 0b1000000000000000 # instrumentation
BSR SI, AX 
CMOVZ RDI, RSI 
AND RSI, 0b1111111111111 # instrumentation
AND RSI, 0b111 # instrumentation
BTR qword ptr [R14 + RSI], RSI 
MOVZX AX, DL 
XADD AL, CL 
SETZ BL 
MOV DIL, BL 
XOR AL, -13 
MOV DX, DI 
CMOVNZ RCX, RSI 
AND RAX, 0b1111111111111 # instrumentation
CMOVS RDX, qword ptr [R14 + RAX] 
CMOVLE RCX, RBX 
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], 70 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -101 # instrumentation
CMOVBE DX, CX 
AND RDX, 0b1111111111111 # instrumentation
CMOVO EAX, dword ptr [R14 + RDX] 
BTC SI, 80 
XOR ECX, 29 
AND RBX, 0b1111111111111 # instrumentation
AND BL, byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
AND EAX, 0b111 # instrumentation
BT dword ptr [R14 + RDI], EAX 
AND DIL, 118 # instrumentation
CMOVO RDI, RBX 
JMP .bb_main.2 
.bb_main.2:
AND DIL, 120 # instrumentation
CMOVNBE CX, DX 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 42 
CMOVB RAX, RAX 
AND RDI, RDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ ESI, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVP RAX, qword ptr [R14 + RAX] 
BTC AX, -21 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ DX, word ptr [R14 + RBX] 
BTS RBX, -24 
AND DIL, -30 # instrumentation
SETS BL 
XOR SI, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
