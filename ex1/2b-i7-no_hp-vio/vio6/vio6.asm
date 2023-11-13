.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -92 # instrumentation
SETLE AL 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF RBX, qword ptr [R14 + RSI] 
MOV BX, 30952 
MOV SIL, BL 
XOR AX, -15101 
SETO DL 
MOVSX RDI, BX 
SETNS DIL 
CMOVO RAX, RDX 
AND RCX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RCX] 
BTS RCX, RBX 
AND RSI, -108 
SETNL CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK BTC word ptr [R14 + RCX], 3 
MOVSX BX, DL 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF RAX, qword ptr [R14 + RDI] 
TEST EAX, -52941534 
AND RBX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RBX], RDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS ESI, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], 9 
CMPXCHG BL, CL 
MOV BL, 13 
AND DX, 52 
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], SIL 
BT RDI, RDX 
TEST EAX, 604223489 
AND RDI, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RDI], DX 
AND EAX, -590614354 
AND RDI, 0b1111111111111 # instrumentation
AND AL, byte ptr [R14 + RDI] 
SETNP BL 
XCHG DIL, AL 
AND BL, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
