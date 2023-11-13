.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -117 # instrumentation
CWDE  
CLC  
CMOVBE RAX, RCX 
XOR CL, DL 
CMOVP EAX, EBX 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, EAX 
STD  
XOR BL, 102 
CMOVNB SI, DI 
CMOVNZ EAX, EAX 
CMOVNZ ESI, EDI 
AND AL, 45 
BTC ECX, 114 
BTR SI, DX 
CMPXCHG DL, AL 
AND RBX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RBX], -102 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOV DL, BL 
STC  
AND SI, -76 
BTC ESI, 11 
AND SIL, -34 # instrumentation
MOVSX DI, DL 
SETLE CL 
AND RDI, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RDI] 
XOR CL, DL 
CMOVNO EDX, EDI 
STC  
AND RAX, 0b1111111111111 # instrumentation
CMOVNB ESI, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
BT word ptr [R14 + RCX], 6 
AND RDX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDX], 28486 
XADD AX, AX 
SAHF  
AND RCX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RCX], 60 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
