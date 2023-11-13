.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 17 # instrumentation
CMOVNLE DX, BX 
TEST AX, -1993 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], AX 
CMPXCHG EDX, EAX 
CMOVLE RAX, RSI 
CMOVNS RDX, RBX 
AND RDX, 0b1111111111111 # instrumentation
MOVZX DX, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDX], DX 
XOR CL, CL 
AND RCX, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RCX] 
AND AL, AL 
SETNLE DL 
MOV CX, -14174 
CMOVNS RDI, RSI 
AND RAX, 0b1111111111111 # instrumentation
AND RSI, 0b111 # instrumentation
BT qword ptr [R14 + RAX], RSI 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR AX, 17357 
SETNS DL 
TEST RAX, 143633454 
OR DX, 18 
MOVSX EDX, AX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE RAX, qword ptr [R14 + RDX] 
BTS RDX, -70 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], -66 
AND RBX, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RBX] 
TEST RBX, RSI 
SETNS AL 
BTR ESI, EBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE ECX, dword ptr [R14 + RCX] 
BTC EBX, EDX 
AND SIL, -87 # instrumentation
CMOVNLE EDI, EAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK BTS word ptr [R14 + RAX], 0 
MOV AX, -23353 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
