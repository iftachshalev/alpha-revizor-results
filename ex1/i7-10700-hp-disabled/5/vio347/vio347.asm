.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 48 # instrumentation
NOP  
SETNL DL 
BTS RCX, -112 
AND SIL, 94 # instrumentation
CMOVNBE SI, BX 
SETO DL 
BSWAP EDX 
NOP  
AND RCX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RCX], BL 
JBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVZ EAX, dword ptr [R14 + RSI] 
OR ECX, -20 
SETO SIL 
SETS AL 
TEST AX, -10122 
JNP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMOVB EDI, dword ptr [R14 + RDX] 
CMOVP DX, DI 
MOV CX, DI 
CMPXCHG BL, BL 
AND RBX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RBX], -68 
BTS RBX, RSI 
AND DIL, 4 # instrumentation
SETS AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVS DX, word ptr [R14 + RAX] 
CMOVLE DI, DX 
AND RAX, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RAX] 
MOVZX ECX, CL 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RDX, word ptr [R14 + RDI] 
XOR EAX, 770368409 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RDX, qword ptr [R14 + RDI] 
JMP .bb_main.3 
.bb_main.3:
MOV ESI, 857061525 
XOR EAX, EAX 
AND RDI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RDI], AL 
XCHG AL, CL 
AND RSI, 0b1111111111111 # instrumentation
CMOVB RDI, qword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
