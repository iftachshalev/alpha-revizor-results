.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR AX, 5565 
OR EBX, EAX 
MOVSX RCX, AL 
OR EAX, -1879726073 
XADD ECX, EDX 
CMOVB ESI, EDI 
CMOVNBE RBX, RAX 
BTR CX, DX 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], DL 
OR AL, -91 
TEST AX, 118 
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RSI], RDI 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 120 # instrumentation
CMOVBE DI, SI 
CMOVNBE EAX, EDI 
MOVSX RAX, AX 
BTC EDX, 28 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE DX, word ptr [R14 + RBX] 
TEST RDX, 1915796912 
SETB CL 
AND RDX, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
BTC dword ptr [R14 + RDX], EBX 
XOR SIL, BL 
TEST AX, 15509 
MOVSX EDX, CL 
SETB BL 
CMOVB AX, AX 
CMOVO ESI, ESI 
AND RDX, 0b1111111111111 # instrumentation
LOCK BTC word ptr [R14 + RDX], 1 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ EDI, dword ptr [R14 + RSI] 
SETNBE SIL 
TEST EBX, -1580771328 
CMPXCHG AL, AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVO RCX, qword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
