.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NOT DIL 
OR CX, SI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ BX, word ptr [R14 + RCX] 
AND BL, -110 
TEST CL, DL 
SETNO DL 
CMPXCHG AL, DL 
CMOVBE SI, BX 
BTC RDI, RDX 
AND SIL, -109 # instrumentation
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST SI, DX 
SETNLE DIL 
SETZ BL 
AND RAX, 0b1111111111111 # instrumentation
AND EAX, 0b111 # instrumentation
BTS dword ptr [R14 + RAX], EAX 
NOT ESI 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RCX], -102 
XCHG BX, AX 
OR SIL, 121 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ AX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDI], AL 
SETNO BL 
XADD ESI, EBX 
AND RDX, 0b1111111111111 # instrumentation
AND DX, 0b111 # instrumentation
BTC word ptr [R14 + RDX], DX 
TEST EAX, -1319675493 
BT EBX, ESI 
JZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
XOR EAX, 1242622857 
AND RSI, 0b1111111111111 # instrumentation
CMOVP EDX, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB RCX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE SI, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], EDX 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, EDX 
AND EBX, EBX 
AND DL, 84 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
