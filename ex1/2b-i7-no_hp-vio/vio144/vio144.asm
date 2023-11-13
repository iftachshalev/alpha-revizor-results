.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RBX] 
BTS RAX, 83 
MOV SIL, -19 
AND RDI, 0b1111111111111 # instrumentation
CMOVP AX, word ptr [R14 + RDI] 
CMC  
CMOVLE DX, DX 
CMOVL RSI, RAX 
SETP SIL 
CMOVNZ EDI, EBX 
OR BX, 0b1000000000000000 # instrumentation
BSF DX, BX 
XADD DI, DX 
SETP AL 
CWD  
BTC EAX, EDX 
AND EAX, -101998177 
AND RBX, 0b1111111111111 # instrumentation
AND RDX, 0b111 # instrumentation
LOCK BTS qword ptr [R14 + RBX], RDX 
CMOVNZ ECX, EAX 
OR AX, 24085 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTR EAX, 20 
MOV AL, DL 
XOR BL, 87 
OR BX, -10 
AND RSI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RSI], CL 
AND RDI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RDI], -33 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, ESI 
OR DI, 0b1000000000000000 # instrumentation
BSF DX, DI 
CMPXCHG BL, DL 
AND RDI, 0b1111111111111 # instrumentation
AND DI, word ptr [R14 + RDI] 
BTS RDI, RCX 
CDQ  
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, EDX 
AND DIL, -19 # instrumentation
CMOVLE AX, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
