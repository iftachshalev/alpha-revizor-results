.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
BTR word ptr [R14 + RDX], 7 
AND DIL, 104 # instrumentation
XCHG ECX, EDX 
SETLE AL 
BTS RDI, RCX 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], CL 
MOVSX EBX, BL 
XCHG AL, SIL 
STD  
CMOVZ BX, SI 
SETP DL 
CMPXCHG AL, CL 
JMP .bb_main.1 
.bb_main.1:
NOT ECX 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RDX], 108 
SETS AL 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF RBX, qword ptr [R14 + RCX] 
XCHG BL, DL 
CMPXCHG RDX, RDI 
CMOVNL RDI, RCX 
TEST AX, DI 
BT EBX, -44 
AND SIL, 19 # instrumentation
NOT EBX 
JNP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND SIL, 25 # instrumentation
CMOVNB BX, SI 
AND RAX, 0b1111111111111 # instrumentation
OR RAX, qword ptr [R14 + RAX] 
AND EDX, 104 
AND RBX, 0b1111111111111 # instrumentation
MOV EDX, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
AND ESI, 0b111 # instrumentation
BTS dword ptr [R14 + RDX], ESI 
JNB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND DIL, 68 # instrumentation
CMOVNP ESI, EDX 
AND RDI, 0b1111111111111 # instrumentation
MOVSX CX, byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], 15887 
XCHG CL, BL 
XOR AL, 42 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL RBX, qword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
