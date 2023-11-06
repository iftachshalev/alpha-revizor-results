.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
AND CL, byte ptr [R14 + RSI] 
MOV RSI, RDX 
SETBE DL 
TEST RBX, RBX 
XADD RCX, RDI 
TEST EAX, 395703075 
JMP .bb_main.1 
.bb_main.1:
AND DIL, -10 # instrumentation
XCHG AX, AX 
NOT RDI 
MOV BL, DL 
SETNZ AL 
CMOVBE DX, BX 
MOVSX CX, DL 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
TEST AL, 2 
BTC EBX, EAX 
CMPXCHG RDX, RCX 
CMOVNZ EBX, EDX 
SETL AL 
XOR RAX, 13628999 
SETLE BL 
AND RSI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RSI], 1489185280 
XOR RAX, 81715794 
CMPXCHG RAX, RDI 
JMP .bb_main.3 
.bb_main.3:
TEST BX, AX 
NOP  
SETNL SIL 
SETNO DIL 
XOR RAX, 2044305194 
CMOVP RDX, RBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVP EDI, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RAX], RAX 
CMPXCHG RAX, RBX 
TEST ECX, -182677531 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
