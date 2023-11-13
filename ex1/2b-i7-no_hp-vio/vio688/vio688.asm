.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RBX], DI 
XOR AX, 31778 
AND RCX, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RCX] 
XADD DL, AL 
SETNP DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS RDX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], CL 
SETNP CL 
SETBE BL 
SETO CL 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST DL, CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTC qword ptr [R14 + RSI], 4 
OR AL, -75 
SETP DL 
AND RBX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RBX], ESI 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSF RBX, RAX 
AND RDI, 0b1111111111111 # instrumentation
AND RDI, 0b111 # instrumentation
BT qword ptr [R14 + RDI], RDI 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], -30 
CWDE  
TEST AX, -31339 
AND RAX, 0b1111111111111 # instrumentation
CMOVS RCX, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RAX], ESI 
SETNL BL 
CMOVNB RSI, RCX 
AND RDI, 0b1111111111111 # instrumentation
AND DI, 0b111 # instrumentation
BT word ptr [R14 + RDI], DI 
AND SIL, 2 # instrumentation
CMOVS DI, DX 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTR dword ptr [R14 + RBX], 4 
BTR EDI, EAX 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR ECX, dword ptr [R14 + RCX] 
MOVSX EDX, CL 
CMOVNZ EDX, EBX 
CLC  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
