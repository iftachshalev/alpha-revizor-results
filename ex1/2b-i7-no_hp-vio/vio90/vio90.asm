.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST AL, -48 
OR RSI, RAX 
TEST EDX, 2006569295 
CMOVNL DI, CX 
NOT ESI 
SETP DIL 
OR DIL, 78 
OR AX, 30806 
MOVSX ESI, BL 
OR BL, CL 
AND RDI, 0b1111111111111 # instrumentation
AND EDX, dword ptr [R14 + RDI] 
XOR SI, 15 
AND AL, SIL 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RDI 
XOR CX, 88 
AND RDI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDI], EBX 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST RDI, RDI 
BT EAX, -4 
TEST EBX, 1017876092 
CMOVNLE DI, AX 
AND RDI, 0b1111111111111 # instrumentation
AND BL, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RSI], 103 
LEA ECX, qword ptr [RCX + RBX] 
MOVZX ESI, DIL 
CMOVB DX, DI 
OR EAX, 104228064 
SETO DIL 
BTC RAX, RDI 
BTC ECX, EDX 
AND SIL, -28 # instrumentation
CMOVNL EAX, ECX 
MOVZX DI, DL 
MOVZX RAX, DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
