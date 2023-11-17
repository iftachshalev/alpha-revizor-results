.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
LEA AX, qword ptr [RSI + RBX] 
OR BL, CL 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR RDI, qword ptr [R14 + RBX] 
SETZ AL 
OR BL, DL 
SETNLE AL 
MOV SI, 25180 
JMP .bb_main.1 
.bb_main.1:
BTS RDI, -52 
AND SIL, 74 # instrumentation
SETS DL 
XOR EAX, 1964392422 
AND BL, AL 
CLC  
XADD DX, AX 
OR AL, SIL 
CMOVP EDX, ESI 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RBX], 125 
BTR EDX, 17 
AND RBX, 0b1111111111111 # instrumentation
AND RSI, 0b111 # instrumentation
BTC qword ptr [R14 + RBX], RSI 
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMOVNP EBX, dword ptr [R14 + RDI] 
OR DIL, AL 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], 1976101911 
AND RDX, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RDX] 
MOV DI, DX 
MOV AL, DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RAX], ECX 
TEST SI, 15884 
AND RSI, 0b1111111111111 # instrumentation
CMOVP RDX, qword ptr [R14 + RSI] 
AND RAX, RBX 
CMOVL RSI, RBX 
MOV DL, BL 
OR AX, 0b1000000000000000 # instrumentation
BSR DI, AX 
BTC EDI, 111 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
