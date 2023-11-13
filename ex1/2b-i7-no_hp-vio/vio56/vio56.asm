.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR AX, 11454 
BTS RCX, -33 
LEA ESI, qword ptr [RDX] 
AND RBX, 86 
AND RCX, 0b1111111111111 # instrumentation
AND RCX, 0b111 # instrumentation
LOCK BTS qword ptr [R14 + RCX], RCX 
AND RCX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RCX], 93 
SETNZ DIL 
MOVZX RSI, SIL 
SETNP AL 
CMOVO RDX, RDX 
AND SIL, -56 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RAX], RCX 
TEST EAX, 1117495703 
LEA RSI, qword ptr [RCX + RDI] 
XCHG DI, AX 
OR AX, -5635 
STC  
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -47 # instrumentation
CMOVNO DI, BX 
AND RAX, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RAX] 
SETNZ BL 
BTS RDX, 115 
TEST EBX, EBX 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, ECX 
AND RDI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDI], AX 
OR ESI, -119 
AND RCX, 0b1111111111111 # instrumentation
AND EAX, 0b111 # instrumentation
LOCK BTC dword ptr [R14 + RCX], EAX 
AND SIL, -98 # instrumentation
SETNP BL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ EBX, dword ptr [R14 + RBX] 
MOVSX EBX, CL 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], CL 
AND SIL, CL 
BTS CX, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
