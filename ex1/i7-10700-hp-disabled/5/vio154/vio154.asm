.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
AND DI, 0b111 # instrumentation
BTC word ptr [R14 + RSI], DI 
AND DIL, -71 # instrumentation
CMOVNS DI, BX 
BTS RDI, -44 
TEST RDI, RCX 
CMPXCHG DIL, AL 
AND BX, SI 
LOOPNE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
MOVZX DX, DL 
STD  
AND RCX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RCX], DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE RSI, qword ptr [R14 + RDX] 
BTC RAX, RBX 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, ESI 
NOT DL 
AND RCX, 0b1111111111111 # instrumentation
AND RDX, 0b111 # instrumentation
BTR qword ptr [R14 + RCX], RDX 
JZ .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND DIL, 52 # instrumentation
LEA EAX, qword ptr [RDI + RDI] 
CDQ  
SETB AL 
SETZ BL 
JMP .bb_main.3 
.bb_main.3:
AND SIL, -90 # instrumentation
NOT RSI 
SETP BL 
OR DIL, 38 
CMOVBE EBX, ECX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE AX, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE CX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RCX] 
OR AX, 21365 
JMP .bb_main.4 
.bb_main.4:
AND DIL, 28 # instrumentation
CMOVNZ CX, DX 
TEST DIL, AL 
XOR CX, 102 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], -72 
BTS EDI, ECX 
XADD CL, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
