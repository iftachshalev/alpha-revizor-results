.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 91 # instrumentation
CMOVP EAX, ESI 
XCHG ECX, EAX 
SETNO BL 
TEST AL, 104 
MOV AX, SI 
SETNS AL 
CMPXCHG BL, BL 
OR RAX, 1761916023 
SETLE DIL 
MOV BL, CL 
XADD CX, DI 
JNO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR RAX, 64 
SETO DL 
XOR RCX, -123 
AND SIL, 47 
XOR RAX, -1871065844 
SETNS DL 
CMOVNP RDX, RDI 
AND RSI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RSI], -14721 
AND SIL, 22 
AND RDX, 0b1111111111111 # instrumentation
BTC dword ptr [R14 + RDX], 6 
BTR EAX, ECX 
OR RBX, 108 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RBX], ECX 
XOR AX, 28235 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL RSI, qword ptr [R14 + RDX] 
JMP .bb_main.2 
.bb_main.2:
TEST DIL, AL 
CBW  
TEST DL, DL 
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], DL 
TEST DX, BX 
SETS CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
