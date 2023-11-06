.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 78 # instrumentation
SETNB DIL 
CMOVB DX, BX 
AND RDI, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RDI], SI 
BTS ECX, ESI 
JB .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDX], DI 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RSI], EDX 
CMOVNS DI, SI 
STC  
CMOVO EDI, EDX 
MOV BL, -122 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RBX], RCX 
SETNL CL 
CMOVNP EAX, ECX 
JNLE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], 19370 
AND RSI, 0b1111111111111 # instrumentation
AND DIL, byte ptr [R14 + RSI] 
JNLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
BT ECX, ESI 
AND RAX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RAX], -117 
CMOVNBE EDX, ECX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO EDX, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
XOR EBX, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSR DI, word ptr [R14 + RDI] 
OR SIL, -32 
JNP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
OR DIL, -84 
MOVZX RDX, CX 
AND RDX, 0b1111111111111 # instrumentation
BT word ptr [R14 + RDX], 4 
AND SIL, 15 # instrumentation
CWDE  
SETNO SIL 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE SI, word ptr [R14 + RSI] 
SETLE DL 
MOVZX RBX, CL 
XOR RAX, -425085414 
BTC DI, -27 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
