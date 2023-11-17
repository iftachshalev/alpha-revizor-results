.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RBX] 
XOR AL, BL 
AND RAX, 0b1111111111111 # instrumentation
AND BL, byte ptr [R14 + RAX] 
CMOVNS EAX, EDI 
BTS RDI, 109 
AND SIL, -89 # instrumentation
CMOVLE EBX, ECX 
LEA ESI, qword ptr [RBX + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], CX 
JMP .bb_main.1 
.bb_main.1:
XOR AX, 24049 
CMOVNO DI, SI 
SETP DL 
SETP AL 
XOR DX, 99 
CMOVNL RAX, RCX 
AND DL, DL 
AND RDI, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RDI], 0 
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
BT DI, -81 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 109 
CMOVNLE EDX, ECX 
AND RDI, 0b1111111111111 # instrumentation
CMOVO RDI, qword ptr [R14 + RDI] 
BTR EAX, EAX 
AND SIL, 75 # instrumentation
CMOVL RDI, RDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ SI, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTC word ptr [R14 + RSI], 1 
JMP .bb_main.3 
.bb_main.3:
XOR BL, AL 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ SI, word ptr [R14 + RCX] 
XOR CL, BL 
CLC  
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], -1459437577 
XOR CX, SI 
SETNS DL 
MOV EDI, -1256555396 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
