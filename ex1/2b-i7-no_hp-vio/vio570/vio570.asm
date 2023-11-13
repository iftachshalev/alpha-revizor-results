.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CWDE  
AND RSI, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RSI] 
BT BX, 82 
AND DIL, 27 # instrumentation
CMOVNL DI, CX 
CMOVL EBX, EBX 
MOV BX, BX 
NOT CL 
BTS EDI, EDX 
XOR AX, -93 
SETB CL 
SETO BL 
LEA ESI, qword ptr [RDX + RBX + 49118] 
BTR ECX, -15 
AND SIL, 16 # instrumentation
CMOVZ RSI, RSI 
CLD  
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST RAX, -740954346 
MOV CL, DL 
TEST ESI, EAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS EBX, dword ptr [R14 + RDI] 
OR RAX, -1366001566 
SETBE BL 
BTS CX, DI 
MOV EDI, EDX 
TEST AX, 2556 
AND RDI, 0b1111111111111 # instrumentation
XOR DL, byte ptr [R14 + RDI] 
MOVSX RDX, AX 
MOV RDX, RBX 
XCHG ECX, ECX 
AND RBX, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RBX] 
CDQ  
XCHG SI, AX 
SETP CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
