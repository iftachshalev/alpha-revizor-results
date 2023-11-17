.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -22 # instrumentation
CMOVNZ DX, CX 
MOV CL, 6 
BT RBX, 115 
BT RBX, RDX 
XOR AL, 88 
CMOVNP RAX, RCX 
BT SI, -117 
JB .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND SIL, -6 # instrumentation
NOT RSI 
SETP AL 
SETB CL 
OR AX, 14094 
XOR CX, -37 
SETL AL 
CMOVL EDI, EDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RAX, qword ptr [R14 + RAX] 
BSWAP RBX 
JMP .bb_main.2 
.bb_main.2:
MOV EBX, EDI 
TEST BL, DL 
OR BL, DL 
JNS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND DIL, -101 # instrumentation
CMC  
XADD SI, BX 
CMOVLE BX, DX 
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], DL 
SETNS BL 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG CL, BL # instrumentation
CMOVNZ DX, word ptr [R14 + RDX] 
CMOVNO DI, BX 
LAHF  
AND DL, 63 
NOT DL 
AND RDI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RSI, qword ptr [R14 + RDX] 
TEST ECX, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
