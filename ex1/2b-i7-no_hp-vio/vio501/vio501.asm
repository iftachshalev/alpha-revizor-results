.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR EAX, -1409944645 
BT RSI, RBX 
AND RDX, 48 
AND RDI, 0b1111111111111 # instrumentation
CMOVO DI, word ptr [R14 + RDI] 
MOVSX ECX, CL 
CMOVNP EBX, EBX 
NOT EDX 
OR AX, -32193 
SETNP BL 
SETNZ CL 
SETNS CL 
TEST EAX, 1978653919 
AND BL, BL 
AND RSI, 0b1111111111111 # instrumentation
XOR EDI, dword ptr [R14 + RSI] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR AX, -23185 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RBX], EBX 
AND RAX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RAX], RDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE RDI, qword ptr [R14 + RBX] 
XOR CL, BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ SI, word ptr [R14 + RDX] 
TEST RCX, -1663937885 
BTR BX, 119 
NOT RSI 
OR BX, CX 
CMOVLE EDX, ESI 
LEA RBX, qword ptr [RBX] 
CMOVZ CX, BX 
AND RSI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RSI], EAX 
SETNBE DL 
AND RDX, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RDX] 
STC  
SETBE DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
