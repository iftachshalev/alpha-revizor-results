.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST AL, -83 
MOVSX RDX, AL 
SETNLE DL 
CMPXCHG SIL, SIL 
CMOVNZ AX, SI 
TEST RAX, 1732646061 
AND RCX, 0b1111111111111 # instrumentation
CMOVP EBX, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RDX], RSI 
CMC  
MOV RSI, -8724907027144966405 
NOT BL 
AND RAX, RDX 
LOOPE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVNP EDX, dword ptr [R14 + RDI] 
CMOVNB RDX, RBX 
AND RSI, 0b1111111111111 # instrumentation
SETNP byte ptr [R14 + RSI] 
XOR BL, 11 
CLC  
CMOVL BX, DX 
TEST AX, DX 
AND RSI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RSI], AX 
SAHF  
AND RDI, 0b1111111111111 # instrumentation
OR BX, word ptr [R14 + RDI] 
MOV BL, 11 
AND RCX, 0b1111111111111 # instrumentation
XOR EAX, dword ptr [R14 + RCX] 
SETNBE AL 
CMC  
SETS DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO BX, word ptr [R14 + RDX] 
TEST DI, -28720 
BTS ECX, EDX 
AND CL, BL 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR RDX, qword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
