.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 77 # instrumentation
CMOVS DX, SI 
CMOVL RBX, RBX 
NOT DI 
CMOVL CX, BX 
AND RAX, 0b1111111111111 # instrumentation
XOR AL, byte ptr [R14 + RAX] 
TEST EAX, -958541830 
AND AX, -28603 
TEST AX, 24957 
LOOPE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST DL, AL 
SETLE DL 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], EBX 
SETNL CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDX], RBX 
BTC DI, DI 
CMOVNZ RBX, RDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RSI], RBX 
CMOVL RDX, RSI 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE DX, word ptr [R14 + RAX] 
CMOVLE RCX, RDX 
MOV RAX, -8768368554072216978 
CMOVNP RDI, RBX 
MOVZX DX, CL 
JMP .bb_main.2 
.bb_main.2:
TEST AX, -7210 
SETO DIL 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTS qword ptr [R14 + RDI], 6 
STD  
TEST RSI, -351351258 
AND RBX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RBX], AX 
XADD AX, DI 
XADD EAX, EBX 
CMOVNBE ECX, ESI 
CMOVNBE ECX, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
