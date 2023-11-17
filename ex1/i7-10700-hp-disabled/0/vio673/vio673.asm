.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR AL, 40 
CMPXCHG RDX, RCX 
XCHG DI, AX 
OR DX, 0b1000000000000000 # instrumentation
BSR BX, DX 
AND RDI, 17 
LOOPE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RDI] 
CMOVP AX, DX 
AND RDX, 45 
AND RCX, 0b1111111111111 # instrumentation
CMOVL RBX, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RBX] 
AND EAX, ECX 
AND RAX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RAX] 
SETNZ AL 
JMP .bb_main.2 
.bb_main.2:
XCHG RBX, RAX 
AND RDI, 0b1111111111111 # instrumentation
BTS word ptr [R14 + RDI], 0 
XOR DL, DIL 
SETZ CL 
CMOVS RCX, RDI 
NOT BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RDI] 
MOV BL, DIL 
OR AL, DL 
CMOVP EBX, EBX 
JS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RCX], DL 
CMOVO ESI, EAX 
XCHG ESI, EAX 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RBX], EDX 
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], -103 
SETNZ AL 
SETZ CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RSI], AL 
CMOVNZ EAX, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
