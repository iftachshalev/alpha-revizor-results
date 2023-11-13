.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK BTS qword ptr [R14 + RDX], 6 
AND RDI, 0b1111111111111 # instrumentation
CMOVP RSI, qword ptr [R14 + RDI] 
MOV BL, 58 
CMOVNBE RAX, RBX 
SETP AL 
XADD RSI, RDI 
AND RAX, -256389008 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE EDX, dword ptr [R14 + RSI] 
LEA EBX, qword ptr [RDX + RSI] 
TEST ECX, -1079606252 
MOV DL, AL 
MOVZX EDI, DIL 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, ECX 
AND RDI, 0b1111111111111 # instrumentation
AND DI, 0b111 # instrumentation
BTS word ptr [R14 + RDI], DI 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
MOV BX, word ptr [R14 + RSI] 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, EBX 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, ECX 
TEST ESI, EAX 
TEST ESI, EAX 
CMOVP DX, CX 
AND RAX, 0b1111111111111 # instrumentation
AND DX, 0b111 # instrumentation
BTR word ptr [R14 + RAX], DX 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE RCX, qword ptr [R14 + RDI] 
BTR SI, SI 
AND SIL, 96 # instrumentation
SETNZ SIL 
XCHG ESI, EAX 
SETLE CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RSI], -49 
CMOVNZ EDX, EDI 
TEST DIL, 126 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], SIL 
AND DIL, -124 
AND RCX, 0b1111111111111 # instrumentation
CMOVO RDI, qword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
