.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -127 # instrumentation
SETNS BL 
SETNO AL 
TEST AX, -15621 
BTS DI, -42 
AND RBX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RBX], RCX 
CMOVNP EDI, EAX 
OR EBX, EAX 
OR EAX, -1540302954 
BT EDI, 101 
CMOVNB RBX, RCX 
BTS EDI, -117 
AND SIL, -95 # instrumentation
SETNLE DL 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 123 # instrumentation
SETNL SIL 
CLC  
MOVSX CX, DL 
BT EAX, EAX 
BTS DX, BX 
CDQ  
TEST EDI, EAX 
MOVSX EAX, BL 
BTS RDI, RAX 
TEST BL, DL 
NOT RDX 
BTR RSI, RSI 
OR BL, CL 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RBX, RDI 
NOT DL 
CMOVNZ RDI, RDI 
OR ECX, ECX 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF EBX, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
BTS word ptr [R14 + RSI], 1 
BTS EBX, 69 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
