.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 35 # instrumentation
NOT DIL 
SETBE CL 
SETS SIL 
AND SIL, DIL 
CMPXCHG BL, DL # instrumentation
LAHF  
TEST AL, 48 
CMOVNZ EAX, EAX 
OR AX, 16688 
SETNP DIL 
SETO DL 
AND RAX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RAX], 115 
BSWAP RBX 
CMOVNP RBX, RAX 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], 1291603461 
SETNO DL 
XOR RAX, 684625166 
CMOVNL ECX, ECX 
TEST ECX, EBX 
NOT CL 
AND RCX, 0b1111111111111 # instrumentation
AND AX, 0b111 # instrumentation
BTS word ptr [R14 + RCX], AX 
AND DIL, -96 # instrumentation
CMOVZ AX, CX 
SETNL CL 
BTS EDX, 93 
OR DIL, BL 
CMOVNS CX, BX 
TEST EAX, -1390226116 
TEST DIL, 4 
AND CL, 54 
CMOVNS SI, DI 
CMOVNL RDI, RBX 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ CX, word ptr [R14 + RSI] 
BSWAP RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
