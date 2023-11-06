.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -29 # instrumentation
SETO DL 
AND RBX, 0b1111111111111 # instrumentation
MOV EDX, dword ptr [R14 + RBX] 
TEST EDI, EDI 
MOV AL, 99 
CMOVNZ RBX, RDX 
AND EAX, 1305293599 
CMOVBE EDX, EBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTR dword ptr [R14 + RDI], 2 
XADD BL, DL 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTC CX, DX 
AND RAX, 0b1111111111111 # instrumentation
CMOVO DI, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RCX], SIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RCX], RDX 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTR dword ptr [R14 + RSI], 4 
AND RSI, 0b1111111111111 # instrumentation
AND ESI, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVO RDX, qword ptr [R14 + RDI] 
BTC DX, BX 
AND RAX, 0b1111111111111 # instrumentation
AND ESI, 0b111 # instrumentation
LOCK BTR dword ptr [R14 + RAX], ESI 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE DX, word ptr [R14 + RAX] 
BTR RSI, -50 
AND SIL, -6 # instrumentation
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
TEST AX, DX 
BTC ECX, 16 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RDX, qword ptr [R14 + RDI] 
CMPXCHG EDI, EDI 
CMOVO EBX, EDX 
TEST RAX, -194454232 
MOV BL, -76 
XCHG EAX, EAX 
AND RCX, 0b1111111111111 # instrumentation
XOR AL, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE ECX, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTC word ptr [R14 + RBX], 4 
AND RSI, 0b1111111111111 # instrumentation
AND DX, word ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
