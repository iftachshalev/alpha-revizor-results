.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVNL RDX, qword ptr [R14 + RAX] 
SETNP CL 
SAHF  
CMOVNS ECX, EDI 
AND RSI, 0b1111111111111 # instrumentation
AND RDX, 0b111 # instrumentation
LOCK BTR qword ptr [R14 + RSI], RDX 
XCHG SI, AX 
XOR AL, CL 
SETNS CL 
SETNLE BL 
CMOVNLE RDI, RDX 
BTS RSI, 41 
CMPXCHG CL, CL 
TEST RDX, -827823238 
JNBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND EAX, 1654458214 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RAX], DX 
CMOVNZ DX, DI 
CMOVNL AX, BX 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], -35 
CLD  
BTC ECX, -67 
BTS ECX, ECX 
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], 112 
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RAX], -28808 
TEST ESI, -682439276 
AND RSI, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RSI] 
BTS DI, -85 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RSI], -52 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTS word ptr [R14 + RDI], 4 
SETBE DL 
TEST SI, DI 
SETNZ BL 
BTR EBX, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
