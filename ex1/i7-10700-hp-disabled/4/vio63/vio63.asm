.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 75 # instrumentation
SETNS BL 
AND RBX, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RBX], AL 
AND EAX, -293355764 
MOVSX CX, CL 
OR BL, AL 
CMOVP AX, BX 
TEST RBX, -802436443 
CMOVNO RDX, RDI 
STC  
SAHF  
LAHF  
JNBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND DIL, -65 # instrumentation
CMOVL BX, DI 
OR BX, 0b1000000000000000 # instrumentation
BSF SI, BX 
XCHG DX, AX 
AND RDX, 0b1111111111111 # instrumentation
CMOVL EBX, dword ptr [R14 + RDX] 
XOR ESI, EAX 
TEST CX, DI 
XOR RAX, 654595340 
CMOVBE EDX, EDI 
MOVZX ECX, DL 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], EAX 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, 110 # instrumentation
SETL AL 
XOR BL, 64 
SETNO DL 
CMOVP EBX, EAX 
AND RCX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RCX], 102 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], RAX 
TEST RAX, RDX 
SETNO AL 
OR EAX, 85695643 
AND RSI, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
