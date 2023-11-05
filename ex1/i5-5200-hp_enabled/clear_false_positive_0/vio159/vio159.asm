.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVS EDX, dword ptr [R14 + RAX] 
OR RAX, RAX 
XOR RAX, 827144141 
SETP BL 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RBX], BL 
TEST BL, BL 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDX], DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE RSI, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP RDX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RDX] 
CMOVNL ESI, EAX 
TEST AX, 20023 
SETNS DL 
SETO BL 
CMOVO ESI, EBX 
STC  
BTS DI, -35 
BTS RCX, RDX 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 111 # instrumentation
MOVSX RDX, DIL 
CMOVNL AX, DI 
STC  
CMOVNB RCX, RDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE DX, word ptr [R14 + RDX] 
CMOVP CX, SI 
OR RAX, 1284018527 
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], -112 
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RDX], SI 
OR DIL, -79 
SETNP CL 
AND RBX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RBX], 57 
AND RDX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDX], DX 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
