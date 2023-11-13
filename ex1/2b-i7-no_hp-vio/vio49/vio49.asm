.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -5 # instrumentation
CMOVNLE RBX, RAX 
SETNZ AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVP DX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MOVZX BX, byte ptr [R14 + RSI] 
BTC CX, 29 
MOVSX ESI, CL 
BTC AX, -80 
OR SIL, -107 
OR DI, -56 
AND DI, AX 
CMPXCHG DIL, AL # instrumentation
LAHF  
AND RSI, 0b1111111111111 # instrumentation
BTR qword ptr [R14 + RSI], 6 
BTC EDI, EDX 
CMPXCHG AL, DL 
AND RDI, 0b1111111111111 # instrumentation
AND CL, byte ptr [R14 + RDI] 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -100 # instrumentation
SETBE CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RCX], CX 
BTR EAX, 46 
BTR DI, SI 
AND DIL, 99 # instrumentation
SETNLE DIL 
TEST RAX, -454354947 
BTS RCX, RBX 
SETB DL 
TEST BL, -99 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE DI, word ptr [R14 + RSI] 
MOVZX RAX, AL 
XOR RBX, 2 
TEST AL, -53 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EAX 
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], DL 
AND EAX, EBX 
MOVSX EAX, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
