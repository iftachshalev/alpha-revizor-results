.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SAHF  
CMOVNB RAX, RAX 
SETNP DL 
CMOVP RBX, RAX 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR EAX, dword ptr [R14 + RDX] 
STC  
AND AL, -112 
JMP .bb_main.1 
.bb_main.1:
LEA ESI, qword ptr [RSI + RCX] 
AND EBX, ECX 
AND RBX, 0b1111111111111 # instrumentation
XOR EAX, dword ptr [R14 + RBX] 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, EAX 
CWD  
AND DL, SIL 
CMOVL AX, AX 
JZ .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
BTR BX, DX 
AND RDI, 0b1111111111111 # instrumentation
OR SI, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDI], 997359726 
MOV RBX, -8466423414167918897 
XOR AL, -127 
JMP .bb_main.3 
.bb_main.3:
TEST SIL, DL 
OR BL, 68 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, EDX 
OR SIL, 64 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RBX], -90 
SETNL CL 
JMP .bb_main.4 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
MOV DI, word ptr [R14 + RCX] 
OR EAX, 1545388279 
NOT DIL 
MOVSX RCX, AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RDX], RDI 
SETS SIL 
CMOVS RAX, RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
