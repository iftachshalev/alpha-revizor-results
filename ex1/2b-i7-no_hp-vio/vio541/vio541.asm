.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 59 # instrumentation
SETNP AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RDI], -77 
SETP SIL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE RAX, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVO SI, word ptr [R14 + RBX] 
SETNB DIL 
MOV DL, -45 
CMOVNZ SI, BX 
SETNO DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE DI, word ptr [R14 + RDI] 
BT RDI, 31 
AND SIL, -124 # instrumentation
SETLE BL 
XCHG DL, SIL 
BTC DX, 81 
AND RDX, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RDX], 4 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTR qword ptr [R14 + RDI], 0 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTC RDX, RBX 
OR DIL, 39 
AND RSI, 0b1111111111111 # instrumentation
AND RBX, 0b111 # instrumentation
LOCK BTC qword ptr [R14 + RSI], RBX 
CMPXCHG BL, CL 
MOV BL, 109 
XOR AX, -83 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RDX], 45 
CMOVNO ECX, EBX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE EBX, dword ptr [R14 + RAX] 
SETO DL 
AND RDX, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RDX] 
MOV EAX, EBX 
BTC CX, DI 
AND SIL, 111 # instrumentation
CMOVNP EDI, ECX 
XOR EDX, 69 
LEA ESI, qword ptr [RBX + RCX + 14699] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
