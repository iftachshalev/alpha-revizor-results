.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RAX, RDI 
XOR RAX, 1349725612 
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], 123 
XOR EBX, EDI 
CDQ  
CMOVP BX, CX 
AND RDI, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
BTC dword ptr [R14 + RDI], EBX 
AND RDX, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
LOCK BTS qword ptr [R14 + RDX], RAX 
AND RAX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RAX], AL 
MOVZX RCX, BX 
BTC ECX, -116 
MOVSX RDI, DL 
XCHG DI, SI 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND BL, 95 
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RDI], EAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVB RBX, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL RDI, qword ptr [R14 + RBX] 
XCHG BL, CL 
XOR RAX, 1733210591 
CMOVZ AX, DI 
AND AX, -23060 
TEST RSI, 1250667841 
CBW  
SAHF  
LEA RDX, qword ptr [RAX + RDI] 
SETNZ DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RBX], -38 
CMOVO RSI, RAX 
BSWAP EAX 
BTS RDX, 127 
AND RCX, 0b1111111111111 # instrumentation
XOR AL, byte ptr [R14 + RCX] 
MOVZX BX, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
