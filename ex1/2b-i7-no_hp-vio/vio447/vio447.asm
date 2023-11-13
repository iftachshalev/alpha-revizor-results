.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR EAX, -1112486445 
SETP BL 
TEST RDX, 2104674617 
CMOVNP EDX, EDI 
BTC DI, SI 
CMOVNB RCX, RDX 
TEST DL, CL 
AND RDI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDI], -1103278928 
XCHG RDX, RBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RAX], DL 
MOVSX EAX, AL 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTC DI, -96 
XCHG AL, CL 
BTR RDI, -38 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB ESI, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDX], -14243 
AND RCX, 0b1111111111111 # instrumentation
AND RDX, 0b111 # instrumentation
LOCK BTS qword ptr [R14 + RCX], RDX 
MOV SIL, BL 
AND RSI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RSI], -51 
BTR EAX, 62 
CDQ  
MOV BL, -106 
XOR RBX, -115 
MOV BL, AL 
NOT BX 
BTR RDX, 83 
AND RDI, 0b1111111111111 # instrumentation
CMOVB RSI, qword ptr [R14 + RDI] 
CMOVBE EDX, EBX 
AND RAX, 68 
BSWAP RBX 
AND RBX, 0b1111111111111 # instrumentation
BTR qword ptr [R14 + RBX], 6 
CMC  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
