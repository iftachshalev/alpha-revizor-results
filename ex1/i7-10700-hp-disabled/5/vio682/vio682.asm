.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR AL, 53 
TEST SIL, -44 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR RDX, qword ptr [R14 + RBX] 
MOVSX AX, CL 
OR SI, 0b1000000000000000 # instrumentation
BSR AX, SI 
AND SIL, -9 # instrumentation
CMOVO RCX, RBX 
AND RBX, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RBX], ECX 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RBX] 
SETP BL 
AND AL, BL 
AND RBX, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RBX] 
SETNLE CL 
TEST BL, 31 
LOOPE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
BTS ECX, 12 
NOT CL 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], DI 
MOV AL, 42 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDI], AX 
XCHG DL, BL 
AND RCX, 0b1111111111111 # instrumentation
AND SIL, byte ptr [R14 + RCX] 
JP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RDX, RBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ CX, word ptr [R14 + RDX] 
CMOVB RBX, RSI 
AND RDI, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RDI] 
JMP .bb_main.4 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RSI 
AND EAX, -1086139803 
SETNS CL 
AND RSI, 0b1111111111111 # instrumentation
CMOVL SI, word ptr [R14 + RSI] 
CMOVS DX, DI 
TEST SI, -30288 
AND CL, SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
