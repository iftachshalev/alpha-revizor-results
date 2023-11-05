.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST SI, -22228 
MOVSX RBX, DI 
MOVZX RDX, SIL 
SETP AL 
OR AL, 54 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RAX], ECX 
SETLE CL 
CMOVNLE RCX, RDI 
JMP .bb_main.1 
.bb_main.1:
XOR AL, 28 
CMOVNBE EAX, EDX 
BTR RCX, 3 
AND AX, 23826 
SETP BL 
CMOVNBE EAX, EDX 
AND RSI, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RSI], -61 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND SIL, -6 # instrumentation
CMOVNL RDI, RCX 
AND RBX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RBX], AX 
BT BX, -125 
AND SIL, 14 # instrumentation
SETL BL 
SETL CL 
CBW  
CWD  
AND RDX, 0b1111111111111 # instrumentation
CMOVBE CX, word ptr [R14 + RDX] 
CMOVNB EDI, ESI 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], -45178135 
JMP .bb_main.3 
.bb_main.3:
AND DIL, 105 # instrumentation
CMOVP RDI, RAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE RAX, qword ptr [R14 + RAX] 
SETNBE CL 
XADD CX, CX 
BT RBX, RSI 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], AX 
NOT RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
