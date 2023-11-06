.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST DI, DI 
CMOVP RAX, RAX 
NOP  
AND RCX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RCX], DI 
SETNS DIL 
MOV ESI, -696941162 
SETNZ CL 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVNS RCX, qword ptr [R14 + RSI] 
SETO DL 
STC  
AND RDI, 0b1111111111111 # instrumentation
BTS word ptr [R14 + RDI], 5 
CMOVZ RCX, RDX 
JNB .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
XOR CL, AL 
AND BL, DL 
SETNB AL 
CMOVNO SI, DX 
BTS ECX, ECX 
AND SIL, -19 # instrumentation
NOT DI 
CMOVNZ ESI, EBX 
CMOVP CX, SI 
JMP .bb_main.3 
.bb_main.3:
AND DIL, 126 # instrumentation
CMC  
AND RSI, 0b1111111111111 # instrumentation
CMOVNL RSI, qword ptr [R14 + RSI] 
XOR AL, -25 
TEST AX, 12660 
CMOVNS RAX, RCX 
SETNBE CL 
JMP .bb_main.4 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDI], CL 
XADD RDI, RDX 
CMOVO DI, BX 
BT RDX, RAX 
XCHG AL, DL 
BTS ECX, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
