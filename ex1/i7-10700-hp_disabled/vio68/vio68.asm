.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK BTC qword ptr [R14 + RAX], 6 
CMPXCHG AL, CL 
BTS RDX, RCX 
AND RAX, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RAX] 
XADD EDI, ESI 
LAHF  
MOVZX EAX, BL 
SETL BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ RDX, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RBX], CL 
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE CX, word ptr [R14 + RCX] 
SETNBE BL 
AND RDX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDX], RDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK BTC dword ptr [R14 + RCX], 5 
BTS CX, -102 
AND DIL, 58 # instrumentation
CMOVL CX, BX 
MOVZX RDI, AX 
SETLE DL 
AND RBX, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RBX] 
CMOVBE BX, DI 
MOV DL, SIL 
BTR RSI, 15 
JMP .bb_main.2 
.bb_main.2:
BTS BX, 97 
XOR RAX, 2134591697 
SETNBE CL 
OR DX, -71 
BTC RDI, RCX 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RDI], RBX 
XOR RAX, RCX 
CMOVNS BX, DI 
AND RAX, -809882850 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
