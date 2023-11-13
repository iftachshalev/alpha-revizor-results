.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST DIL, -92 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTR qword ptr [R14 + RDI], 5 
AND DIL, -127 # instrumentation
SETP DL 
BTC ECX, EBX 
NOT RDI 
BTC EBX, EDX 
MOVZX RDX, DX 
OR CX, 0b1000000000000000 # instrumentation
BSR CX, CX 
NOT SIL 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], AL 
CMOVLE RBX, RSI 
AND RSI, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDI], -6 
XCHG RCX, RAX 
MOVZX RSI, CL 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RBX], 49 
OR AL, -12 
CMOVB RSI, RDI 
CMPXCHG BL, BL 
XOR EDX, 48 
OR AL, -62 
CWDE  
XOR EAX, -991233149 
OR AL, -6 
XOR RAX, 382030655 
AND RCX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RCX], ESI 
NOP  
AND RDI, 0b1111111111111 # instrumentation
CMOVP RSI, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDX], -99 
AND ESI, ECX 
CMOVZ EDX, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
