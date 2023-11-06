.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND AL, CL 
SETL BL 
BTS RSI, -13 
AND RCX, 0b1111111111111 # instrumentation
CMOVP RSI, qword ptr [R14 + RCX] 
CMOVNL BX, DX 
BTS RDI, RCX 
TEST RAX, 68971374 
CMOVNL RSI, RCX 
MOVZX EBX, DL 
BTC ECX, ESI 
XOR AX, 9605 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], BL 
CMOVS RBX, RCX 
XADD BL, BL 
BT DX, 114 
MOVZX DI, DIL 
AND RSI, 0b1111111111111 # instrumentation
BTR word ptr [R14 + RSI], 6 
BTS EBX, 1 
AND SIL, -23 # instrumentation
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTR EBX, ECX 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE BX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
AND RDI, 0b111 # instrumentation
BTS qword ptr [R14 + RCX], RDI 
CDQ  
AND RSI, 0b1111111111111 # instrumentation
MOVSX EAX, byte ptr [R14 + RSI] 
BTS BX, CX 
CMPXCHG CL, DL # instrumentation
AND SIL, 40 # instrumentation
LAHF  
CWD  
NOT AX 
CMOVNP RDI, RCX 
BTC RDI, RDI 
OR CX, -6 
AND RAX, 2028739914 
XADD SIL, SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
