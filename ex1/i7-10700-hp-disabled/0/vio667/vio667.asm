.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 38 # instrumentation
CMOVO EAX, EDX 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 6 
CMOVNB RDX, RAX 
XOR DIL, 125 
CMOVO EDX, EDI 
SETO AL 
TEST DIL, DL 
CMOVNP RSI, RAX 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BT RDX, RCX 
AND DIL, 126 # instrumentation
CMOVP RDI, RCX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE EDI, dword ptr [R14 + RCX] 
SETNZ AL 
SETNZ SIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVS EBX, dword ptr [R14 + RDI] 
MOVZX EBX, AX 
AND RSI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RSI], DI 
AND RSI, 0b1111111111111 # instrumentation
OR DL, byte ptr [R14 + RSI] 
BTR EBX, EDX 
SETNB DL 
JMP .bb_main.2 
.bb_main.2:
AND DIL, 6 # instrumentation
CMOVNBE RDX, RDX 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], 77 
CMOVBE EAX, ECX 
SETB AL 
MOV CL, AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVL DI, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ EBX, dword ptr [R14 + RCX] 
MOV AL, BL 
CMOVBE RDX, RDI 
MOVZX ECX, BL 
SETLE BL 
MOV SIL, 13 
XOR RAX, -25 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
