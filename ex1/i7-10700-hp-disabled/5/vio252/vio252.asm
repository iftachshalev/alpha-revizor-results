.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SAHF  
SETS DL 
MOVSX BX, CL 
CLD  
AND RBX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RBX], 1947278565 
AND RBX, RCX 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ RCX, qword ptr [R14 + RDI] 
CMOVL EDI, EBX 
TEST BL, CL 
AND RSI, 0b1111111111111 # instrumentation
CMOVS DI, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RAX], -13 
BTC ECX, EBX 
XOR RSI, 6 
AND CL, -88 
CMOVO RCX, RSI 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -18 # instrumentation
CMC  
OR RAX, -4 
AND DIL, 80 
AND RDX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDX], RBX 
BTC BX, -95 
BT ESI, 70 
TEST AL, 30 
SAHF  
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], BX 
SETB DL 
AND RSI, 0b1111111111111 # instrumentation
OR BX, word ptr [R14 + RSI] 
CMOVNBE RAX, RDI 
XCHG CL, CL 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE SI, word ptr [R14 + RDX] 
CMOVLE DX, CX 
AND RDX, 0b1111111111111 # instrumentation
CMOVL EDI, dword ptr [R14 + RDX] 
BTR EBX, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
