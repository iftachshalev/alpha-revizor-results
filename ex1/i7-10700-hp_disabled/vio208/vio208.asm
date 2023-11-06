.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST AL, 118 
XOR RDI, RDX 
XOR AL, DL 
TEST RSI, RBX 
XOR RDI, RCX 
MOV BL, -55 
AND AL, BL 
CMOVLE EDX, EAX 
SETL DIL 
CMOVNB DX, CX 
OR RAX, 24 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -4 # instrumentation
SETNBE DL 
SAHF  
AND RBX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RBX], DX 
CMOVNB BX, AX 
CMOVL RBX, RSI 
CMOVBE RDX, RDI 
JS .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
OR DIL, 49 
CMOVNBE RDX, RDX 
OR EAX, 394761820 
SETLE DL 
TEST AL, -71 
BTS RSI, RSI 
JB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, ESI 
TEST RAX, RDX 
CMOVNP RDI, RDX 
TEST AL, -56 
AND EAX, 9482076 
CMOVNBE SI, BX 
JMP .bb_main.4 
.bb_main.4:
OR BL, 86 
AND RCX, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RCX] 
XCHG CX, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
