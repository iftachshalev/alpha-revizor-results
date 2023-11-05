.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -84 # instrumentation
LEA EBX, qword ptr [RSI + RAX] 
SETS DL 
CMOVZ RSI, RCX 
OR DL, -78 
CMOVNS BX, BX 
CMOVO RCX, RSI 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDI], -116 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 43 # instrumentation
SETP DL 
CMOVL CX, BX 
TEST EAX, 1175091067 
XCHG RBX, RBX 
AND RSI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RSI], 63 
MOVSX RSI, CL 
XCHG ECX, EAX 
JMP .bb_main.2 
.bb_main.2:
AND DIL, 90 # instrumentation
CMOVNBE RAX, RDI 
CMOVNZ RBX, RBX 
CMOVL RCX, RDX 
XOR AX, -10989 
AND RDI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RDI], -13 
AND RAX, 0b1111111111111 # instrumentation
BTC dword ptr [R14 + RAX], 4 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RDX], DI 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
AND SI, 0b111 # instrumentation
LOCK BTS word ptr [R14 + RDX], SI 
AND SIL, 56 # instrumentation
CMOVNS RAX, RDI 
AND DIL, -88 
AND RAX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RAX], -126 
XADD EBX, ECX 
STD  
SETZ DL 
SETNBE DL 
AND RDI, 0b1111111111111 # instrumentation
AND BL, byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RBX] 
XOR AL, 66 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
