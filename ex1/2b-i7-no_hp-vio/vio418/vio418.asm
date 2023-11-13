.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR EAX, -54 
SETP BL 
MOV DL, AL 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RAX], ECX 
AND RAX, 0b1111111111111 # instrumentation
CMOVL RDX, qword ptr [R14 + RAX] 
XOR DI, 93 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDI], AL 
XCHG RDX, RAX 
SETP CL 
CMOVNZ SI, CX 
OR DI, 0b1000000000000000 # instrumentation
BSF CX, DI 
AND RAX, 0b1111111111111 # instrumentation
LOCK BTR qword ptr [R14 + RAX], 1 
MOV DL, -116 
AND AL, -105 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
MOVZX RDI, byte ptr [R14 + RBX] 
CMOVS RDI, RDI 
OR AL, CL 
OR SIL, -7 
CMPXCHG RDX, RDI 
MOVSX DX, DL 
TEST DL, -22 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EBX, byte ptr [R14 + RAX] 
BTR EBX, EAX 
XOR AX, AX 
AND RAX, 0b1111111111111 # instrumentation
CMOVS RBX, qword ptr [R14 + RAX] 
CMOVO BX, SI 
AND AX, -28087 
BTR ECX, ESI 
SETNZ AL 
CMOVNBE BX, CX 
MOV EBX, 1958170982 
AND RAX, RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
