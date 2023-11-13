.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RSI], CL 
CMOVNZ ECX, EAX 
NOT BL 
AND RAX, 0b1111111111111 # instrumentation
OR RDX, qword ptr [R14 + RAX] 
CMOVP EAX, ECX 
AND RDX, 0b1111111111111 # instrumentation
XOR AX, word ptr [R14 + RDX] 
NOT RDX 
XOR ESI, EBX 
CMPXCHG BL, AL 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], RCX 
BTC CX, SI 
AND DIL, -51 # instrumentation
CMOVNL RBX, RBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO BX, word ptr [R14 + RDX] 
SAHF  
BT RCX, RSI 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSF RSI, RCX 
MOVSX DX, AL 
AND RCX, 0b1111111111111 # instrumentation
AND DL, byte ptr [R14 + RCX] 
MOVZX RAX, DL 
LEA CX, qword ptr [RDX + RCX] 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
XOR CL, byte ptr [R14 + RCX] 
TEST AL, -68 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RBX], 39 
NOT AL 
BTS RSI, -73 
AND SIL, -50 # instrumentation
SETNP DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVL CX, word ptr [R14 + RDI] 
CMOVNO RDX, RBX 
BT RDX, RDX 
AND SIL, 33 # instrumentation
SETNP CL 
AND RSI, 0b1111111111111 # instrumentation
CMOVO DX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE CX, word ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
