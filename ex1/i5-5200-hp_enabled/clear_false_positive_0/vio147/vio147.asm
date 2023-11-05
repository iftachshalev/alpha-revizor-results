.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR ECX, EDX 
TEST EAX, 15052168 
SETP DIL 
SETNL SIL 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 77 
CLC  
CMOVNS EBX, ESI 
CMOVZ RBX, RDI 
MOVSX EBX, DL 
CMOVNBE EAX, ESI 
MOVZX EAX, BL 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVBE RSI, qword ptr [R14 + RCX] 
CMOVNBE SI, DX 
TEST AL, 59 
AND AX, 29977 
AND RCX, 0b1111111111111 # instrumentation
AND BX, 0b111 # instrumentation
LOCK BTS word ptr [R14 + RCX], BX 
AND DIL, -116 # instrumentation
SETS DL 
OR CL, 11 
JL .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
XOR DI, -96 
XOR RSI, 22 
BT RDX, -126 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO ECX, dword ptr [R14 + RDX] 
SETNP DL 
OR RSI, 5 
CMOVNP RSI, RDI 
JS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND EBX, EDI 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, EAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RCX], DI 
MOV SIL, DL 
AND RDX, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
SETNP byte ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
