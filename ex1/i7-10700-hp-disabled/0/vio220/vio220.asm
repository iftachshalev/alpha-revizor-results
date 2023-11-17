.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR SIL, BL 
OR AX, -28778 
CMOVNB DX, AX 
MOVSX RDX, DI 
CMOVNS BX, DI 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSF AX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDX], EBX 
JNS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
NOT DX 
XCHG RBX, RAX 
AND SIL, 95 
TEST AL, -45 
AND RBX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RBX], 1563185159 
XCHG ECX, ECX 
SETS BL 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RDX], RDI 
AND RAX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RAX], SIL 
SETNB CL 
XADD AX, AX 
AND RDI, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RDI], ESI 
LEA DI, qword ptr [RAX] 
MOVSX DI, DIL 
JL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND DIL, -23 # instrumentation
CMOVO RDX, RDI 
AND EAX, 59 
BTS ECX, -72 
AND DIL, -79 # instrumentation
XCHG AL, DIL 
SETNS CL 
CMOVNS CX, BX 
SETO AL 
SETP DL 
MOV DIL, BL 
NOT SI 
XOR AL, -92 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
