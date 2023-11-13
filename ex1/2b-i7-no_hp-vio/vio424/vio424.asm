.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RDI 
AND SIL, 70 # instrumentation
MOVSX EBX, AL 
SETNB DL 
XOR EAX, EBX 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RDX 
XOR AL, DL 
AND RCX, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
BT qword ptr [R14 + RCX], RAX 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSF AX, word ptr [R14 + RSI] 
XADD DI, BX 
SETNO AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL BX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RDX] 
CMOVNP ESI, EBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RAX], RAX 
CMOVL RAX, RSI 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RSI], RBX 
CMOVL RCX, RCX 
CWD  
CMOVO RSI, RCX 
LEA EDX, qword ptr [RCX] 
OR RSI, RDI 
SETNL AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVO RDX, qword ptr [R14 + RDI] 
TEST EAX, -198241109 
CMPXCHG CL, CL 
CMOVP EBX, ESI 
CMPXCHG AL, DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL DI, word ptr [R14 + RAX] 
CMOVNLE EBX, EAX 
SETZ DIL 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE CX, word ptr [R14 + RBX] 
BTS RBX, -121 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
