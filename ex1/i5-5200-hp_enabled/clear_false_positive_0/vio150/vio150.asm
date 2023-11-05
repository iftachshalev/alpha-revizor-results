.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RDI] 
CMOVNS RDI, RDX 
OR AL, -106 
TEST AL, DIL 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 52 # instrumentation
CMOVNZ DX, CX 
MOVSX CX, DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB RBX, qword ptr [R14 + RDI] 
SETZ DL 
MOVZX DX, BL 
AND RSI, 117 
CMOVNL RCX, RCX 
LEA RCX, qword ptr [RDI + RCX + 42833] 
AND RSI, -106 
AND RDI, 0b1111111111111 # instrumentation
CMOVP RBX, qword ptr [R14 + RDI] 
SETNLE DL 
AND RDX, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RDX] 
BTC SI, 62 
BT BX, -116 
MOV BL, BL 
AND RSI, 0b1111111111111 # instrumentation
BTC qword ptr [R14 + RSI], 4 
OR CL, AL 
XOR SIL, -48 
JMP .bb_main.2 
.bb_main.2:
AND DIL, -6 # instrumentation
SETBE DL 
SETNP DL 
CMOVNO RAX, RBX 
AND EAX, -1227784525 
XCHG RDX, RAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE RDX, qword ptr [R14 + RBX] 
XADD RDI, RDX 
CMOVO DX, BX 
BTC EDX, 54 
TEST DIL, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
