.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  
CMPXCHG BL, CL 
AND RAX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RAX], 110 
TEST EDI, ECX 
CMPXCHG RDX, RDX 
BSWAP EDI 
AND RDI, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RDI], 6 
AND RDI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDI], 806927882 
CMOVBE SI, CX 
SETP DL 
OR RDI, RDX 
LEA ECX, qword ptr [RCX + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX DI, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RDX] 
SETNB CL 
CMOVLE SI, DI 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, EDX 
AND SIL, -82 # instrumentation
SETS SIL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP RDX, qword ptr [R14 + RDX] 
TEST RDX, RDX 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -24 # instrumentation
CMOVNBE BX, BX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS SI, word ptr [R14 + RCX] 
BTS DI, 51 
AND DIL, -45 # instrumentation
CMOVNS EBX, ESI 
SETNO DL 
XCHG DI, CX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS RDX, qword ptr [R14 + RBX] 
TEST AX, 29777 
LEA RCX, qword ptr [RCX + RSI] 
CMOVL RDX, RCX 
BTR EBX, -71 
AND BL, -44 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
