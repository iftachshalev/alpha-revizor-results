.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST AX, -29102 
SETNLE DL 
SETO AL 
CMOVZ SI, SI 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, EAX 
AND SIL, -108 # instrumentation
CMOVNP DI, DI 
CMOVNLE ESI, EAX 
TEST DI, AX 
SETNP DL 
CMOVNB RBX, RSI 
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 54 
AND RCX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RCX], EAX 
AND RAX, 327330502 
MOV DI, 22981 
JMP .bb_main.2 
.bb_main.2:
BTS DX, -92 
AND DIL, -95 # instrumentation
SETNL CL 
CMOVO AX, DX 
SETNP AL 
BTS EDI, EBX 
AND SIL, 54 # instrumentation
SETLE DIL 
AND EAX, 1907700606 
BTR CX, BX 
AND SIL, -37 # instrumentation
CMOVNP RDX, RDI 
CMOVNBE RSI, RCX 
AND RSI, 0b1111111111111 # instrumentation
AND RDX, 0b111 # instrumentation
BTR qword ptr [R14 + RSI], RDX 
OR EAX, 9537634 
JMP .bb_main.3 
.bb_main.3:
AND SIL, 125 # instrumentation
NOT RDI 
CMOVL RAX, RBX 
BT BX, 22 
AND DIL, 21 # instrumentation
SETNP CL 
MOV SI, DX 
XOR AX, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
