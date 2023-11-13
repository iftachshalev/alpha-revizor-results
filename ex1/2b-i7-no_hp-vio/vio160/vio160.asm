.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SAHF  
AND RCX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RCX], -40 
CMPXCHG RAX, RBX 
XOR AX, 23747 
AND EAX, -2107365115 
SETO DL 
MOVSX ECX, DL 
STC  
MOV RSI, RBX 
AND RDX, 0b1111111111111 # instrumentation
XOR EAX, dword ptr [R14 + RDX] 
XCHG ECX, EAX 
XOR EAX, -369018630 
TEST BL, 45 
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], 40 
XADD CL, SIL 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK BTC dword ptr [R14 + RBX], 7 
AND RDX, 0b1111111111111 # instrumentation
AND DX, word ptr [R14 + RDX] 
TEST RAX, 1567515257 
SETP AL 
MOVSX EDX, AL 
SETNP AL 
CMOVNS AX, AX 
AND RDI, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RDI] 
MOVZX RCX, CX 
TEST ECX, EBX 
SETP DIL 
TEST EDX, -2107763626 
AND CL, -24 
XOR EBX, 75 
OR RCX, RSI 
SETNL AL 
CMOVP CX, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
