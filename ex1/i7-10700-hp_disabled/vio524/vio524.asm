.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  
TEST ESI, -508365807 
SETNLE CL 
BTS RDI, -80 
AND SIL, 102 # instrumentation
BSWAP RSI 
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVO EAX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK BTS word ptr [R14 + RAX], 6 
CMC  
AND RDI, 0b1111111111111 # instrumentation
SETNP byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RAX], ESI 
MOV RCX, RAX 
MOVSX RAX, AX 
MOV SI, -5857 
XADD AX, DI 
CMOVNO EDX, EBX 
JL .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
LOCK BTR dword ptr [R14 + RDX], 2 
MOV DL, -42 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTR qword ptr [R14 + RBX], 2 
AND DL, AL 
JMP .bb_main.3 
.bb_main.3:
AND SIL, 42 # instrumentation
CMOVL RDI, RDI 
SETLE SIL 
SETNB CL 
TEST RSI, RBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RSI], CL 
TEST RDX, -545444373 
TEST DIL, 90 
BTS RBX, 82 
OR RBX, -47 
JMP .bb_main.4 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RCX], CL 
CMOVS RDX, RDI 
XADD CL, CL 
CMOVS EBX, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
