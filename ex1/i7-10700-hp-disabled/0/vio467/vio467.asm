.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR ESI, EAX 
CMOVNZ DI, DI 
MOVSX DX, CL 
CMOVB SI, CX 
TEST RAX, 1115389877 
AND RSI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RSI], -13981 
CMOVNO RBX, RCX 
CMC  
JS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
BTR BX, DI 
AND SIL, -113 # instrumentation
SETS BL 
CMOVNZ RCX, RSI 
XOR BL, CL 
TEST EAX, 1197684417 
XADD DL, DIL 
OR DI, CX 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], 2809 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RDI], 4 
AND DIL, 56 # instrumentation
CMOVL BX, BX 
SETNBE BL 
BTC BX, -103 
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RAX], AL 
AND RAX, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RAX] 
CMOVNBE AX, SI 
SETB DL 
LOOPNE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND DIL, -53 # instrumentation
CMOVB RSI, RCX 
CMOVBE SI, DX 
CMOVNB SI, AX 
LEA BX, qword ptr [RBX + RDX + 53663] 
SETNS DL 
OR DI, 0b1000000000000000 # instrumentation
BSR SI, DI 
CMOVZ EAX, EAX 
XADD SIL, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
