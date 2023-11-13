.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND AX, 2616 
CMOVNL RBX, RCX 
TEST AX, -9978 
CMOVNL EBX, EDI 
AND RAX, 0b1111111111111 # instrumentation
SETNP byte ptr [R14 + RAX] 
CMOVNLE EBX, EDI 
BT RCX, 65 
NOT RDI 
AND RSI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RSI], 43 
OR BL, DL 
XCHG DL, CL 
XOR BL, DL 
CMOVB SI, BX 
OR BL, SIL 
BT BX, -89 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], RAX 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XCHG EBX, EAX 
AND RAX, 0b1111111111111 # instrumentation
MOVSX EDI, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ SI, word ptr [R14 + RSI] 
BT ESI, 90 
AND DIL, -77 # instrumentation
CMOVO EAX, EBX 
CMOVP RDX, RBX 
BTC ECX, EBX 
XCHG RDI, RCX 
CBW  
AND RSI, 0b1111111111111 # instrumentation
CMOVNL RBX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RCX], DX 
AND RCX, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RCX], ESI 
BT EDI, EBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL EBX, dword ptr [R14 + RDI] 
AND CX, BX 
BTS RDI, RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
