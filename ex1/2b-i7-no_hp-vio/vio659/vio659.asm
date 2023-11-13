.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR AL, -22 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RSI], EAX 
CMOVNO BX, BX 
BTR ESI, EDX 
AND SIL, -51 # instrumentation
SETL CL 
CLD  
CMPXCHG ESI, EDX 
OR BL, 76 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE BX, word ptr [R14 + RAX] 
BT SI, 106 
SETB CL 
TEST DL, AL 
XADD BX, SI 
CMOVNB AX, DX 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BT EBX, EAX 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EDI, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
AND EAX, dword ptr [R14 + RSI] 
BTR BX, -9 
AND RDI, 98 
BTC ECX, EDX 
AND RAX, 2007496033 
BTS RDI, -105 
AND RAX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RAX], SI 
MOVSX DX, DIL 
AND RSI, 0b1111111111111 # instrumentation
AND RCX, 0b111 # instrumentation
LOCK BTC qword ptr [R14 + RSI], RCX 
AND RDI, RSI 
SETNB BL 
CMOVL ESI, ECX 
CMPXCHG DI, BX 
MOVSX ECX, CX 
MOVZX DI, DL 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
