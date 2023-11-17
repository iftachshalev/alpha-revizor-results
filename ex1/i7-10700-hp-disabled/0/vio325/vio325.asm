.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BT ESI, -71 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], EBX 
CMOVBE ESI, EDX 
NOT BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE EBX, dword ptr [R14 + RCX] 
BTR EAX, EAX 
CDQ  
TEST RDX, RCX 
AND RDI, 0b1111111111111 # instrumentation
AND DI, 0b111 # instrumentation
LOCK BTR word ptr [R14 + RDI], DI 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CMPXCHG EAX, EDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RCX], CL 
CMOVNLE RBX, RDI 
BTR DI, CX 
AND DIL, -21 # instrumentation
SETS AL 
SETNS AL 
LOOPE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
BT RDI, -116 
AND SIL, -20 # instrumentation
CMOVLE DI, SI 
NOP  
AND RSI, 0b1111111111111 # instrumentation
BTR dword ptr [R14 + RSI], 6 
AND DIL, 98 # instrumentation
CMOVO RCX, RAX 
XOR RDX, RSI 
SETL BL 
MOVZX DI, AL 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, EDI 
AND RDX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDX], DL 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], SI 
OR ECX, EAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK BTC dword ptr [R14 + RAX], 1 
AND SIL, -59 # instrumentation
JLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND DIL, 42 # instrumentation
SETNB DIL 
CMOVNB RBX, RDX 
XADD BL, SIL 
CWD  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
