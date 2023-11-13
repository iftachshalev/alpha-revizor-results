.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND AX, -9840 
CMPXCHG SIL, DL # instrumentation
LAHF  
CMOVL EDX, EAX 
MOV RAX, 60059041090870311 
CMPXCHG RAX, RDI 
BT ESI, 42 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, EDI 
OR DIL, 16 
CMPXCHG RCX, RCX 
CMOVNZ CX, DI 
CMOVO RDI, RAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE ECX, dword ptr [R14 + RDI] 
SETLE DL 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MOVSX RBX, word ptr [R14 + RAX] 
CMOVNS SI, BX 
SETNLE BL 
TEST DL, DL 
SETBE CL 
AND RDI, RCX 
CMOVNS SI, BX 
CMOVNBE DI, DX 
XOR RDI, RDX 
AND RAX, 0b1111111111111 # instrumentation
LOCK BTS word ptr [R14 + RAX], 3 
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], DIL 
XCHG RSI, RAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RDI], RDI 
SETB BL 
XADD CL, CL 
SETZ DIL 
CMOVNL RDX, RCX 
CMOVNL DX, SI 
TEST EAX, 865549140 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
