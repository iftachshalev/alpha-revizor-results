.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], DIL 
BT EDI, 13 
AND RCX, 0b1111111111111 # instrumentation
CMOVP RDI, qword ptr [R14 + RCX] 
SETO BL 
BSWAP EBX 
CMOVNL CX, SI 
CDQ  
AND RAX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RAX], -72 
CMOVNL RDX, RCX 
CBW  
AND RSI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RSI], -5 
CMOVZ RAX, RSI 
XCHG RBX, RAX 
MOV CL, 18 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -21 # instrumentation
CMOVNL ESI, EDI 
AND RDX, 0b1111111111111 # instrumentation
CMOVP CX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
XOR AL, byte ptr [R14 + RDI] 
CMOVNBE RBX, RDX 
AND EAX, 790925667 
CWD  
AND RDI, 0b1111111111111 # instrumentation
LOCK BTR dword ptr [R14 + RDI], 5 
OR AL, 55 
SETNS SIL 
CMPXCHG RAX, RBX 
SETBE DL 
TEST ECX, EDX 
BT RBX, 58 
AND RSI, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RSI], CX 
CMOVNBE RCX, RCX 
CMOVNZ RDI, RCX 
CMOVLE EBX, ESI 
CMOVP ECX, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
