.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 63 # instrumentation
NOT DL 
SETZ CL 
MOV AL, 66 
AND CL, AL 
BT EAX, -17 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RDX], ESI 
JMP .bb_main.1 
.bb_main.1:
XOR AX, 16432 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTC qword ptr [R14 + RDI], 3 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RCX], -98 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
MOVZX EAX, CL 
CBW  
XOR DIL, -1 
CMPXCHG CX, BX 
CWD  
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF EAX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS DI, word ptr [R14 + RCX] 
TEST DIL, 111 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RCX 
JMP .bb_main.3 
.bb_main.3:
AND SIL, -2 # instrumentation
SETL DL 
BTS DI, -63 
OR CX, DI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS EBX, dword ptr [R14 + RDI] 
MOV EAX, 1870703460 
OR BX, 0b1000000000000000 # instrumentation
BSR SI, BX 
OR AL, 77 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE EBX, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS ECX, dword ptr [R14 + RAX] 
AND ESI, EAX 
JNL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND DIL, -120 # instrumentation
NOT DL 
SETNLE AL 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], AX 
MOV DL, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
