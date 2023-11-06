.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -76 # instrumentation
SETNP DIL 
AND RSI, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RSI], RDI 
BTS RDX, -24 
CWDE  
BTC RSI, 89 
AND SIL, -29 # instrumentation
CMOVL EDX, EDX 
JZ .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND DIL, 46 # instrumentation
MOV AL, 50 
CWD  
SETP BL 
TEST AL, CL 
AND RDI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDI], DX 
BTC AX, 31 
AND DIL, -57 # instrumentation
MOVZX EDX, SI 
CMOVZ EBX, EBX 
SETL CL 
JO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
XCHG RDI, RBX 
BTR ESI, -93 
AND DIL, -13 # instrumentation
STD  
SETZ AL 
SETO DL 
CMOVZ CX, CX 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], EBX 
SETNZ CL 
MOV RDI, RAX 
JNO .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND DIL, -120 # instrumentation
CMOVNLE AX, SI 
AND RBX, 0b1111111111111 # instrumentation
OR RDX, qword ptr [R14 + RBX] 
CMOVNO DI, BX 
AND RCX, 0b1111111111111 # instrumentation
CMOVB AX, word ptr [R14 + RCX] 
JO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
BT RBX, -102 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ RCX, qword ptr [R14 + RBX] 
MOVZX DI, DIL 
TEST RSI, 1717113490 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
