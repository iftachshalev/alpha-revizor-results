.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND EDI, 17 
TEST ECX, -183400679 
TEST RAX, -1597285222 
MOVZX RCX, CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RBX], 48 
CMOVZ RAX, RSI 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 70 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR EAX, 1405133252 
OR BL, 59 
OR AL, CL 
AND RSI, 0b1111111111111 # instrumentation
XOR RDI, qword ptr [R14 + RSI] 
CMOVNS EDI, EDX 
XOR DIL, 53 
CMOVBE EBX, EAX 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE ECX, dword ptr [R14 + RCX] 
TEST RCX, RSI 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RAX], -110 
NOT EDI 
SETB DIL 
CWD  
JL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
XOR ESI, dword ptr [R14 + RDI] 
CMOVP RCX, RSI 
CMOVP RSI, RCX 
CMOVL RDI, RDI 
CMOVZ DI, DI 
LOOP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RAX], 3 
AND RSI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RSI] 
CMOVNBE DX, DX 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RCX], ECX 
TEST AL, -54 
TEST RDX, RBX 
CMOVNS AX, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
