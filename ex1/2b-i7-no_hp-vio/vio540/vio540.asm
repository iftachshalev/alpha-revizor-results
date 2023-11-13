.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVNO RCX, qword ptr [R14 + RSI] 
CMOVZ RDX, RBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVL SI, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
AND EDX, 0b111 # instrumentation
LOCK BTS dword ptr [R14 + RDI], EDX 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], -21279 
AND RSI, 0b1111111111111 # instrumentation
CMOVO CX, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RDI], ESI 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTS qword ptr [R14 + RBX], 7 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RDI], 81 
MOVSX ESI, DI 
CMOVNB RDI, RCX 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RDI, RBX 
AND DIL, 75 # instrumentation
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -39 # instrumentation
SETLE BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE EDX, dword ptr [R14 + RDX] 
AND EAX, 1634159700 
BTS RCX, RSI 
AND SIL, 4 # instrumentation
SETLE BL 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF RBX, qword ptr [R14 + RSI] 
AND SIL, -85 # instrumentation
CMOVNLE RBX, RDX 
CMOVNO CX, CX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL SI, word ptr [R14 + RSI] 
XOR BL, -39 
MOVSX BX, DL 
LEA EDI, qword ptr [RDI + RDX] 
AND RBX, 111 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], CX 
SETNS DIL 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE RAX, qword ptr [R14 + RSI] 
XADD DI, CX 
TEST AL, 15 
AND RBX, 0b1111111111111 # instrumentation
AND RBX, 0b111 # instrumentation
BTC qword ptr [R14 + RBX], RBX 
AND DIL, 72 # instrumentation
SETNLE CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
