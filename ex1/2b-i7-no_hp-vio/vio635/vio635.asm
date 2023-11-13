.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVNO SI, word ptr [R14 + RDI] 
SETNLE AL 
AND DI, SI 
TEST EAX, EAX 
BSWAP EAX 
MOV RSI, -2552825341009434115 
AND RSI, RAX 
TEST AL, DL 
AND RDX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDX] 
OR DIL, 13 
SETP BL 
XCHG DX, AX 
CLD  
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], ESI 
XOR EAX, 1014008332 
NOT DX 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST BL, DL 
AND RDI, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDI], EDX 
TEST BL, CL 
CMPXCHG DL, AL 
AND DX, -106 
AND RBX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RBX], RDX 
BT RAX, -125 
AND RDX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RDX], RSI 
CMOVLE DX, SI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL RDX, qword ptr [R14 + RSI] 
MOVZX EBX, SI 
XOR EBX, -72 
OR RAX, -657129247 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE DX, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RDX], RCX 
SETNB DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
