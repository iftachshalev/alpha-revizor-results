.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 76 # instrumentation
SETB BL 
AND RAX, 268463370 
OR DX, -107 
BTC DX, DX 
NOT CL 
MOVSX RDX, BX 
BTR RBX, 108 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE AX, word ptr [R14 + RSI] 
SAHF  
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
AND BL, byte ptr [R14 + RSI] 
BTC RDX, RSI 
AND DIL, -83 # instrumentation
SETL DL 
CMOVLE DX, CX 
CMPXCHG BL, DL 
AND RAX, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RAX] 
MOV RSI, RDX 
TEST SIL, 98 
AND RDI, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ EDX, dword ptr [R14 + RDX] 
SETLE BL 
JMP .bb_main.2 
.bb_main.2:
MOVSX RDX, CL 
AND SI, CX 
AND RDI, 0b1111111111111 # instrumentation
CMOVL ECX, dword ptr [R14 + RDI] 
AND RSI, RSI 
XCHG AX, DX 
XOR DIL, 9 
CWD  
AND RDI, 0b1111111111111 # instrumentation
MOV RSI, qword ptr [R14 + RDI] 
SETP CL 
CLC  
CMOVBE EBX, ESI 
CMOVLE RCX, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
