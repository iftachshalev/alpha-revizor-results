.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG DL, DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE DI, word ptr [R14 + RDI] 
BTC EAX, EDI 
AND RDI, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RDI] 
CMOVLE AX, DI 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], -52 
OR AX, 17664 
MOV CL, SIL 
AND ESI, 31 
SETO BL 
MOV ESI, 716341574 
SETLE BL 
CMOVBE EBX, EDX 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 10 # instrumentation
XCHG DL, DIL 
SETL DL 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RSI 
AND SIL, 63 # instrumentation
MOVSX AX, BL 
MOV RCX, -1459181784238946501 
SETNLE CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RDX], EBX 
OR DIL, CL 
AND EDX, 83 
XOR AX, -21542 
AND AX, -9603 
MOVSX EBX, DIL 
CMPXCHG AL, BL 
AND RAX, 0b1111111111111 # instrumentation
BTR qword ptr [R14 + RAX], 6 
AND RDI, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RDI], 6 
OR AX, AX 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RCX], 30 
SETNLE CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVO EAX, dword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
