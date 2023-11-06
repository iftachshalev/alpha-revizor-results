.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK BTS word ptr [R14 + RBX], 2 
AND RCX, 0b1111111111111 # instrumentation
BTC qword ptr [R14 + RCX], 6 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK BTR qword ptr [R14 + RCX], 7 
AND DIL, -80 # instrumentation
CMOVNO DX, CX 
OR ECX, ESI 
SETB CL 
CMOVNBE EDI, ESI 
AND EAX, -1148868772 
SETNB BL 
AND RBX, 0b1111111111111 # instrumentation
MOVZX ECX, byte ptr [R14 + RBX] 
MOVSX EAX, SI 
BTR DI, -73 
AND RDX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDX], -14 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -69 # instrumentation
STC  
CMOVNLE BX, CX 
BTR ESI, EDI 
BT RDX, 27 
MOV AX, CX 
XCHG SI, AX 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSF AX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTS word ptr [R14 + RDI], 4 
AND DIL, 119 # instrumentation
XCHG RAX, RAX 
SETNL DL 
JMP .bb_main.2 
.bb_main.2:
AND DIL, -84 # instrumentation
SETLE BL 
XOR AL, CL 
OR BL, 4 
AND RBX, 0b1111111111111 # instrumentation
AND DI, word ptr [R14 + RBX] 
CMOVBE ECX, EDX 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], 1131864445 
CMOVNP EAX, EDX 
SETNL DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
