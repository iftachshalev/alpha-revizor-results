.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG BL, CL 
AND DI, 87 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE EBX, dword ptr [R14 + RDI] 
SETNB DL 
OR BX, 0b1000000000000000 # instrumentation
BSF DX, BX 
AND DIL, -45 # instrumentation
SETNS SIL 
SETNS CL 
AND RCX, 0b1111111111111 # instrumentation
AND DL, byte ptr [R14 + RCX] 
OR RAX, -813243906 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG SIL, CL # instrumentation
CMOVNBE CX, word ptr [R14 + RDX] 
LAHF  
BTR SI, CX 
TEST BL, BL 
SETNB CL 
CMPXCHG EAX, EDI 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RDI, byte ptr [R14 + RBX] 
AND RCX, RBX 
MOV DL, 19 
BTC DX, 101 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -56 # instrumentation
MOVSX RDX, AX 
SETL CL 
AND RSI, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RSI] 
MOV ECX, -1120689650 
AND CX, -82 
XCHG EDX, EAX 
CMOVP ECX, EDX 
BTS RBX, -81 
XADD BL, BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RDI], RBX 
BTC DX, BX 
MOVSX CX, AL 
XOR ECX, 42 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
