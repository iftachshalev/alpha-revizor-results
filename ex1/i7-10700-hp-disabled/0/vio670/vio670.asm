.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NOT RDX 
BTC EDI, EAX 
BTC DX, DI 
TEST CL, -76 
AND RCX, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RCX] 
OR AX, 28243 
TEST DX, 34 
XOR SIL, -108 
CMOVLE RSI, RSI 
CMOVLE ESI, ESI 
CBW  
OR CL, SIL 
CMOVNBE EAX, ESI 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RDI], ECX 
XADD RCX, RDI 
STC  
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RAX], RDI 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -86 # instrumentation
CLD  
SETZ DIL 
BTR EDI, -95 
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RBX], CL 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE DX, word ptr [R14 + RBX] 
CMOVNZ BX, DX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL RAX, qword ptr [R14 + RDI] 
CMOVNP AX, CX 
XCHG ESI, EAX 
SETO BL 
AND RCX, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RCX], 1 
TEST RDX, RDI 
AND AL, CL 
XOR DIL, 102 
TEST RDI, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
