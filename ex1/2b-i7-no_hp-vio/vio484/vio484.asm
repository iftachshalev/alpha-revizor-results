.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 5 # instrumentation
SETNO DIL 
MOVZX AX, AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ RBX, qword ptr [R14 + RDX] 
SETNS CL 
OR DX, 40 
BT RSI, -109 
AND SIL, -30 # instrumentation
CMOVNLE RBX, RDX 
AND RAX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RAX] 
MOV RAX, RDI 
XCHG SIL, BL 
AND RDX, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RDX], AX 
SETBE AL 
AND EAX, -195171940 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RDI], 91 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
NOT BL 
AND RAX, -49 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RSI], 89 
AND AL, -119 
STD  
AND RAX, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RAX], RCX 
BTS EDX, -43 
AND DIL, -49 # instrumentation
SETO AL 
CMOVNL DX, AX 
CMOVZ CX, DI 
SETBE CL 
MOV DL, SIL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE EAX, dword ptr [R14 + RBX] 
STC  
NOT BL 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], -27580 
CWDE  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
