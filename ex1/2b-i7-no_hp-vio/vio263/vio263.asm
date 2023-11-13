.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RAX], 61 
NOT DI 
OR RSI, 63 
OR AL, -55 
SETZ CL 
MOV AL, DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO RBX, qword ptr [R14 + RCX] 
AND RDI, -45 
CMOVNL RSI, RBX 
CMOVO SI, AX 
AND RCX, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RCX] 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CWDE  
BTR ESI, ESI 
TEST SIL, -93 
CMOVNL DI, CX 
AND RDX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RDX] 
CMOVNLE EDX, ESI 
BT RDI, RSI 
CMOVB BX, AX 
AND RBX, 0b1111111111111 # instrumentation
SETNP byte ptr [R14 + RBX] 
XCHG EDX, EAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RSI], 122 
MOV RSI, RCX 
SETNZ AL 
CLD  
MOV RCX, RBX 
CMOVP DI, AX 
AND RBX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RBX], -74 
CMOVNO RCX, RCX 
CMOVZ ECX, EAX 
STD  
AND CX, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
