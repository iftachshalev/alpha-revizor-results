.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -14 # instrumentation
SETL BL 
AND BL, 21 
CMOVBE CX, AX 
CMPXCHG AL, BL 
AND RBX, 0b1111111111111 # instrumentation
AND AX, 0b111 # instrumentation
LOCK BTR word ptr [R14 + RBX], AX 
STD  
AND RCX, 0b1111111111111 # instrumentation
LOCK BTC word ptr [R14 + RCX], 5 
AND RDX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDX], -354351361 
CMOVZ RDX, RSI 
BT RBX, -119 
CLC  
CMOVBE CX, DI 
AND RBX, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RBX], 6 
SETNZ AL 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
BTC word ptr [R14 + RBX], 5 
LEA DX, qword ptr [RSI + RAX + 41650] 
XOR AL, -87 
OR AL, -91 
SETNBE DL 
XOR AL, BL 
AND RDI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDI] 
AND AX, 12868 
MOVSX ECX, DI 
XOR DIL, -38 
AND RDX, 0b1111111111111 # instrumentation
CMOVB ESI, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO RBX, qword ptr [R14 + RAX] 
BTR ESI, EDI 
NOT EAX 
AND RAX, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
BT dword ptr [R14 + RAX], EBX 
AND DIL, 105 # instrumentation
SETLE CL 
XOR AX, 8476 
AND RCX, 0b1111111111111 # instrumentation
BTS dword ptr [R14 + RCX], 2 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
