.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV DIL, DIL 
AND SI, 5 
BTR AX, AX 
AND DIL, -79 # instrumentation
CLD  
MOVSX RSI, DI 
CWD  
SETNO SIL 
NOP  
SETB CL 
AND AL, BL 
CMOVNB ESI, EAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RAX], EAX 
CMOVNZ RDI, RBX 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -92 # instrumentation
XCHG BX, DX 
CMOVLE RAX, RAX 
OR DIL, -31 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG SIL, DIL # instrumentation
MOV qword ptr [R14 + RBX], RDX 
CMOVNL DI, BX 
CMOVNBE BX, CX 
LAHF  
MOV SIL, SIL 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSR CX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX DI, byte ptr [R14 + RSI] 
SETS DL 
SETS CL 
AND RAX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RAX], RDI 
CMOVP AX, CX 
MOV BL, -108 
STD  
AND RDI, 0b1111111111111 # instrumentation
MOVSX RDX, byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS AX, word ptr [R14 + RAX] 
CMPXCHG BX, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
