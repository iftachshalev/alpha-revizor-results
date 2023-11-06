.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
OR DX, word ptr [R14 + RAX] 
CMOVBE RSI, RBX 
OR EDX, -35 
AND AX, -31466 
CMOVNBE RBX, RCX 
AND RAX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RAX], 29 
JNLE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], 509186281 
MOVSX EDX, AL 
AND RBX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RBX], RAX 
CMC  
AND RDX, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RDX] 
LOOP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
STC  
OR EAX, -581397680 
BTR RDI, -30 
AND RAX, -475839707 
AND EBX, ECX 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, EAX 
AND SIL, -3 # instrumentation
CMOVNS AX, DI 
CMOVZ ECX, EAX 
JBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND DIL, -121 # instrumentation
CMOVBE EDI, ECX 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RBX], DX 
XCHG RAX, RDX 
SETNLE CL 
TEST DIL, CL 
SETNZ BL 
BT EAX, EDI 
AND BL, -127 
MOV RCX, -6947386746161003658 
OR DL, 107 
JMP .bb_main.4 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
OR DI, word ptr [R14 + RAX] 
CMPXCHG DL, AL 
AND RSI, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
