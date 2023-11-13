.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -30 # instrumentation
SETBE SIL 
CMOVNZ DI, DI 
AND RDI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDI], AL 
BTC EAX, -104 
AND SIL, -66 # instrumentation
CWDE  
SETP AL 
AND RDI, 0b1111111111111 # instrumentation
AND RDX, 0b111 # instrumentation
BTC qword ptr [R14 + RDI], RDX 
AND RDI, 0b1111111111111 # instrumentation
AND SI, 0b111 # instrumentation
LOCK BTC word ptr [R14 + RDI], SI 
AND SIL, -95 # instrumentation
CMOVNL CX, CX 
CMPXCHG CL, DL 
SETNBE DL 
XADD EDX, ECX 
AND RAX, 0b1111111111111 # instrumentation
CMOVP RSI, qword ptr [R14 + RAX] 
BTC RDX, 20 
AND SIL, 110 # instrumentation
SETZ DL 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 24 # instrumentation
CMOVNB SI, DI 
OR RAX, 2048568404 
XADD AX, SI 
SETL AL 
AND RAX, 0b1111111111111 # instrumentation
BTS word ptr [R14 + RAX], 1 
BT RBX, -51 
MOVZX EAX, BL 
CMOVB RSI, RSI 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RAX], BX 
CMOVP RDI, RCX 
BTS RDI, 6 
XOR CL, DIL 
OR RAX, -134017387 
BTR RDX, 64 
AND SIL, -20 # instrumentation
CMOVO EAX, ECX 
XADD SIL, CL 
BTC BX, -61 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
