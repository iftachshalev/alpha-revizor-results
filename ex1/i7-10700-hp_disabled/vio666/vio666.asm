.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR RSI, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
AND EAX, 0b111 # instrumentation
BT dword ptr [R14 + RSI], EAX 
BT EBX, 103 
AND RCX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RCX], -1267872502 
CMOVNP EBX, EBX 
TEST BX, CX 
BTC EBX, -115 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, ECX 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RDX] 
BTS RBX, RAX 
AND SIL, -106 # instrumentation
CMOVL EBX, ECX 
XCHG ESI, ESI 
AND BX, -83 
AND RDX, 0b1111111111111 # instrumentation
MOVSX EBX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RBX], EBX 
JMP .bb_main.2 
.bb_main.2:
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RSI 
AND RAX, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RAX] 
SETO CL 
CMOVNBE RDI, RDI 
BTS SI, -4 
AND RDI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDI], EAX 
BT BX, -126 
TEST RAX, -1515758470 
JMP .bb_main.3 
.bb_main.3:
BTR DX, BX 
BTS RCX, RBX 
BTR BX, -87 
AND RCX, 0b1111111111111 # instrumentation
OR ECX, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RBX] 
CMOVZ ESI, ECX 
AND DIL, 103 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO ECX, dword ptr [R14 + RSI] 
CMC  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
