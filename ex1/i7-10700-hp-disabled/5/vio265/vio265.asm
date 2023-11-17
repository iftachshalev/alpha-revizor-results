.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR ESI, EDX 
BT ECX, -60 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTC dword ptr [R14 + RBX], 0 
AND SIL, -95 # instrumentation
CMOVNL RDX, RCX 
AND RSI, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RSI] 
CDQ  
AND RCX, 0b1111111111111 # instrumentation
MOVZX DI, byte ptr [R14 + RCX] 
JNB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND SIL, 27 # instrumentation
SETNZ DIL 
SETNP AL 
BTS SI, 77 
AND RCX, -106 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], EBX 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, -106 # instrumentation
CMOVNBE RDI, RDI 
BTC RBX, 92 
AND DIL, 21 # instrumentation
SETNL BL 
SETB DL 
BTR ESI, -2 
XOR RCX, RBX 
CMOVBE DI, BX 
XCHG EDX, EAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDX], BL 
XOR EAX, 1408768158 
XCHG DI, BX 
AND RCX, 0b1111111111111 # instrumentation
SETNBE byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EDX, byte ptr [R14 + RCX] 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDI], EDI 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], DL 
MOVZX RAX, CX 
SETNL DL 
SETP SIL 
OR AX, -14313 
SETNBE BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
