.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND AX, 8905 
BT ESI, EDI 
AND SIL, -101 # instrumentation
CMOVNS AX, AX 
AND DL, 88 
SETNLE DL 
XADD SI, BX 
JNBE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RDI], RBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB RAX, qword ptr [R14 + RDI] 
BTS RBX, -78 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE ESI, dword ptr [R14 + RBX] 
AND AL, -118 
AND RDI, 0b1111111111111 # instrumentation
CMOVL RDI, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RSI], CL 
CWDE  
NOP  
JO .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND SIL, -11 # instrumentation
SETNP AL 
SETNZ DIL 
XADD BL, DL 
SETO CL 
AND RDX, 0b1111111111111 # instrumentation
MOV SIL, byte ptr [R14 + RDX] 
XCHG SIL, DIL 
JL .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND EAX, 1344045882 
XADD EDI, EDI 
AND AL, -68 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RDI], BX 
CMOVZ SI, CX 
AND EAX, -265178941 
XADD EBX, EDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ AX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RDI], RSI 
JMP .bb_main.4 
.bb_main.4:
AND SIL, -101 # instrumentation
SETNO DL 
CMOVNB RBX, RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
