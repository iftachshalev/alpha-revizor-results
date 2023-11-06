.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -126 # instrumentation
SETBE BL 
XADD BL, CL 
BTS RDI, 73 
TEST BL, CL 
CMOVNLE EBX, EDI 
CMOVNLE DI, DI 
TEST RDX, RBX 
SETNP CL 
SAHF  
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -106 # instrumentation
SETBE AL 
XOR RCX, 105 
STD  
MOVSX ECX, CL 
CMPXCHG CL, BL 
AND RSI, 0b1111111111111 # instrumentation
BTC dword ptr [R14 + RSI], 6 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, ESI 
LEA RDI, qword ptr [RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE DI, word ptr [R14 + RCX] 
AND DIL, -2 
JLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND SIL, 3 # instrumentation
SETNS DIL 
BTR RDI, RSI 
NOT CL 
XOR EAX, -1505632661 
STD  
BSWAP RCX 
AND RCX, 0b1111111111111 # instrumentation
OR AL, byte ptr [R14 + RCX] 
MOV RAX, RCX 
AND RAX, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RAX] 
JS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
CMOVLE ECX, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
AND AX, word ptr [R14 + RCX] 
XOR SIL, 115 
BTC EBX, -115 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
