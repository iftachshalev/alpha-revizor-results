.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -52 # instrumentation
SETNS CL 
BTC CX, -27 
AND DIL, 83 # instrumentation
CMOVNLE SI, SI 
XOR AL, BL 
CMPXCHG CX, DI 
MOVSX ECX, CL 
AND RAX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RAX], 42 
SETNB CL 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -114 # instrumentation
CMOVNP DI, DI 
NOT CX 
AND RBX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EAX, word ptr [R14 + RDI] 
TEST DIL, 62 
AND RDI, 0b1111111111111 # instrumentation
SETNP byte ptr [R14 + RDI] 
XADD EDX, EDX 
CMOVNB SI, BX 
CMC  
AND RDI, RCX 
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RSI], RBX 
BTC ECX, 68 
JMP .bb_main.2 
.bb_main.2:
AND DIL, -14 # instrumentation
CMOVNBE EAX, EBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVL DI, word ptr [R14 + RCX] 
OR RDX, RAX 
AND RDI, 0b1111111111111 # instrumentation
BTR qword ptr [R14 + RDI], 4 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR RDX, qword ptr [R14 + RCX] 
AND SIL, 110 # instrumentation
SETL BL 
AND AL, -97 
MOVZX AX, BL 
CMOVO CX, BX 
BTC RAX, RDI 
BTR RDI, -86 
STD  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
