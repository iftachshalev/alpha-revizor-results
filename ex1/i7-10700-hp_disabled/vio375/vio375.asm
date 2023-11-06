.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -25 # instrumentation
CMOVBE AX, DI 
MOVZX DI, BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB EDX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ RSI, qword ptr [R14 + RDX] 
SETNP CL 
BT ECX, 53 
TEST EBX, -11636126 
TEST DX, 28136 
LOOPE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND SIL, -71 # instrumentation
SETNS DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTS word ptr [R14 + RBX], 1 
CMOVNZ ESI, ESI 
BTR ECX, EDI 
AND RSI, -8 
CMOVNP BX, BX 
MOV AL, 46 
CLC  
AND RDI, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RDI], 13 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, 36 # instrumentation
CMOVNBE RSI, RSI 
CMOVNB DX, AX 
MOVZX EAX, DI 
AND RSI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RSI], CX 
AND RAX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RAX], 107 
MOVSX RBX, SIL 
TEST AX, 4594 
BT EDX, -66 
AND SIL, 84 # instrumentation
SETNB AL 
SETO AL 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
CMOVNO CX, word ptr [R14 + RDX] 
OR EAX, -800083718 
MOVSX ESI, BX 
XOR RAX, -537250155 
AND RAX, 0b1111111111111 # instrumentation
AND EAX, 0b111 # instrumentation
BTR dword ptr [R14 + RAX], EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
